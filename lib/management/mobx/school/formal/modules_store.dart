import 'dart:collection';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/model/navigation_model.dart';
import 'package:bsl/repository/common_repository.dart';
import 'package:bsl/util/exception_utils.dart';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

part 'modules_store.g.dart';

class ModulesStore = ModulesBase with _$ModulesStore;

abstract class ModulesBase with Store {
  ModulesBase(this.repository);

  final CommonRepository repository;

  var _dispose = false;
  CancelToken? _cancelToken;

  @observable
  ObservableList<AppEntranceModel> data = ObservableList.of([]);

  List<AppEntranceModel> _emptyList() {
    return [
      AppEntranceModel(
        functionName: '公告',
        function: SchoolModule(ModuleType.notice),
      ),
      AppEntranceModel(
        functionName: '待办事项',
        function: SchoolModule(ModuleType.todo),
      ),
      AppEntranceModel(
        functionName: 'banner',
        function: SchoolModule(ModuleType.banner),
      ),
      AppEntranceModel(
        functionName: '班级剪影',
        function: SchoolModule(ModuleType.clip),
      ),
      AppEntranceModel(
        functionName: '食谱',
        function: SchoolModule(ModuleType.recipes),
      ),
      AppEntranceModel(
        functionName: '选修课程',
        function: SchoolModule(ModuleType.electiveCourse),
      ),
      AppEntranceModel(
        functionName: '一日生活',
        function: SchoolModule(ModuleType.dayLife),
      ),
    ];
  }

  @action
  Future<void> fetchData(String schoolCode) async {
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    final modules = _emptyList();
    try {
      _cancelToken = CancelToken();
      final r =
          await repository.fetchSchoolModuleConfig(schoolCode, _cancelToken);
      if (r.success) {
        final List<AppEntranceModel> list = r.data;
        final map = HashMap<ModuleType, AppEntranceModel>();
        for (var e in list) {
          final function = e.function;
          if (function is! SchoolModule) continue;

          map[function.type] = e;
        }

        for (var e in modules) {
          final function = e.function;
          if (function is! SchoolModule) continue;

          final source = map[function.type];
          if (source != null) e.copyWith(source);
        }
        // 排序
        modules.sort((a, b) => a.seq.compareTo(b.seq));
        data = ObservableList.of(modules);
      }
    } catch (e, stackTrace) {
      logError('获取主页模块数据失败: ${e.toString()}', e, stackTrace);
      if (_dispose || e.isCancel) return;
      // 重试直到成功
      Future.delayed(const Duration(seconds: 3), () => fetchData(schoolCode));
    }
  }

  void dispose() {
    _dispose = true;
    _cancelToken?.cancel('dispose');
  }
}
