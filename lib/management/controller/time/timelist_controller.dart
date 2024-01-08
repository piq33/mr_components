import 'dart:async';

import 'package:components/event/timeline_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/time_models.dart';
import 'package:components/util/global.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TimeListController extends GetxController {
  TimeListController(this.year, this.catalog);

  final _service = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().timeRepository;
  final int year;
  final CatalogType catalog;

  var loading = true.obs;
  var list = List<TimeYearListModel>.empty().obs;

  CancelToken? _cancelToken;
  StreamSubscription? _subscription;
  Worker? _worker;

  @override
  void onReady() {
    super.onReady();
    // 学生发生变动时，刷新时光数据
    _worker = ever(_service.selectedStudent, (student) {
      if (student.validate) _fetchData();
    });

    // 监听时间线的增删改变动，刷新列表
    _subscription = eventBus.on<RefreshTimelineEvent>().listen((event) {
      logDebug('$catalog时间节点$year变动事件:\n${event.toString()}');
      if (!event.catalogs.contains(catalog) && catalog != CatalogType.all) {
        return;
      }
      final moment = event.moment;
      if (moment == null) {
        _fetchData();
        return;
      }
      switch (event.operation) {
        case OperationType.refresh:
        case OperationType.add:
          _fetchData();
          break;
        case OperationType.delete:
          for (var i = 0; i < list.length; i++) {
            var element = list[i];
            var deleteIndex = element.moments.indexWhere(
              (i) => i.timeMomentId == moment.timeMomentId,
            );
            if (deleteIndex > -1) {
              element.moments.removeAt(deleteIndex);
              list[i] = element;
              return;
            }
          }
          break;
        case OperationType.update:
          for (var i = 0; i < list.length; i++) {
            var element = list[i];
            var updateIndex = element.moments.indexWhere(
              (i) => i.timeMomentId == moment.timeMomentId,
            );
            if (updateIndex > -1) {
              element.moments[updateIndex] = moment;
              list[i] = element;
              return;
            }
          }
          break;
      }
    });
    final student = _service.selectedStudent.value;
    if (student.validate) _fetchData();
  }

  void _fetchData() async {
    _cancelToken?.cancel('re fetch');
    _cancelToken = null;

    try {
      loading.value = true;
      _cancelToken = CancelToken();
      final r = await _repository.fetchTimePageList(
        year: year,
        catalog: catalog,
        cancelToken: _cancelToken,
      );
      if (r.success) list.value = r.data;
    } catch (e, stackTrace) {
      logError('时光获取年份列表数据异常: ${e.toString()}', e, stackTrace);
    } finally {
      loading.value = false;
    }
  }

  Future<void> deleteMoment(TimeMomentsModel moment) async {
    _cancelToken = CancelToken();
    var id = moment.timeMomentId;
    final r = await _repository.deleteTimeLine(
      id: id,
      cancelToken: _cancelToken,
    );
    if (!r.success) {
      _fetchData();
      return;
    }
    eventBus.fire(
      RefreshTimelineEvent(
        moment: moment,
        catalogs: [moment.catalog],
        operation: OperationType.delete,
      ),
    );
  }

  @override
  void onClose() {
    _cancelToken?.cancel('dispose');
    _worker?.dispose();
    _subscription?.cancel();
    super.onClose();
  }
}
