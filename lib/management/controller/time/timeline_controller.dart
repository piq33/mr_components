import 'dart:async';

import 'package:components/event/timeline_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/repository_service.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/model/time_models.dart';
import 'package:components/util/global.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TimelineController extends GetxController {
  final _service = Get.find<StudentService>();
  final _repository = Get.find<RepositoryService>().timeRepository;
  final CatalogType catalog;

  TimelineController(this.catalog);

  var yearList = List<int>.empty().obs;
  var rebuildIndex = 0.obs;

  StreamSubscription? _subscription;
  CancelToken? _cancelToken;
  Worker? _worker;

  Future<void> _fetchData() async {
    _cancelToken?.cancel('re fetch');
    _cancelToken = null;
    yearList.value = List.empty();

    try {
      _cancelToken = CancelToken();
      final r = await _repository.fetchTimeList(
        catalog: catalog,
        cancelToken: _cancelToken,
      );
      if (r.success) {
        yearList.value = r.data;
        rebuildIndex.value = rebuildIndex.value + 1;
      }
    } catch (e, stackTrace) {
      logError('时光获取年份异常: ${e.toString()}', e, stackTrace);
    }
  }

  Future<void> onRefresh() async {
    await _fetchData();
  }

  @override
  void onReady() {
    super.onReady();
    // 学生发生变动时，刷新时光数据
    _worker = ever(_service.selectedStudent, (student) => _fetchData());

    // 监听时间线的增删改变动，刷新列表
    _subscription = eventBus.on<RefreshTimelineEvent>().listen((event) {
      logDebug('$catalog时间线变动事件:\n${event.toString()}');
      if (!event.catalogs.contains(catalog) && catalog != CatalogType.all) {
        return;
      }
      _fetchData();
    });
    _fetchData();
  }

  @override
  void onClose() {
    _worker?.dispose();
    _subscription?.cancel();
    _cancelToken?.cancel('dispose');
    super.onClose();
  }
}
