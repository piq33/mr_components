import 'dart:collection';

import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/model/navigation_model.dart';
import 'package:bsl/repository/common_repository.dart';
import 'package:bsl/resource/assets.gen.dart';
import 'package:bsl/util/exception_utils.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

part 'quick_links_store.g.dart';

class QuickLinksStore = QuickLinksBase with _$QuickLinksStore;

abstract class QuickLinksBase with Store {
  QuickLinksBase(this.repository);

  final CommonRepository repository;

  var _dispose = false;
  CancelToken? _cancelToken;

  @observable
  ObservableList<AppEntranceModel> data = ObservableList.of([]);

  List<AppEntranceModel> _emptyList() {
    return [
      AppEntranceModel(
        local: Assets.navigation.findKindergartenIcon.path,
        functionName: '找园所',
        function: QuickLink(QuickLinkType.findKindergarten),
        onTap: (entrance) => Get.toNamed('home/kindergarten'),
      ),
      AppEntranceModel(
        local: Assets.navigation.activityIcon.path,
        functionName: '趣活动',
        function: QuickLink(QuickLinkType.funActivity),
        onTap: (entrance) => Get.toNamed('home/activity'),
      ),
      AppEntranceModel(
        local: Assets.navigation.aboutUsIcon.path,
        functionName: '关于我们',
        function: QuickLink(QuickLinkType.aboutUs),
        onTap: (entrance) => {},
      ),
      AppEntranceModel(
        local: Assets.navigation.contactUsIcon.path,
        functionName: '联系我们',
        function: QuickLink(QuickLinkType.contactUs),
        onTap: (entrance) => Get.toNamed('home/contact'),
      ),
      AppEntranceModel(
        local: Assets.navigation.lessonManagementIcon.path,
        functionName: '课时管理',
        function: QuickLink(QuickLinkType.lessonManagement),
        onTap: (entrance) {
          final curUser = Get.find<AuthService>().user.value;
          const url = 'student/chcare/classHourMng/pickSchool';
          final parameters = {
            'url': url,
            'params': Uri(queryParameters: {'phone': curUser.phoneNumber}).query
          };
          Get.toNamed('browser', parameters: parameters);
        },
      ),
    ];
  }

  @action
  Future<void> fetchData() async {
    _cancelToken?.cancel('cancel');
    _cancelToken = null;

    data = ObservableList.of([]);
    final modules = _emptyList();
    try {
      _cancelToken = CancelToken();
      final r = await repository.fetchQuickLinkConfig('-1', _cancelToken);
      if (r.success) {
        // 替换原有的嵌入式页面在线图片资源
        final List<AppEntranceModel> list = r.data;
        final map = HashMap<QuickLinkType, AppEntranceModel>();
        for (var e in list) {
          final function = e.function;
          if (function is! QuickLink) continue;

          map[function.type] = e;
        }

        for (var e in modules) {
          final function = e.function;
          if (function is! QuickLink) continue;

          final source = map[function.type];
          if (source != null) e.copyWith(source);
        }
        modules.sort((a, b) => a.seq.compareTo(b.seq));
        data = ObservableList.of(modules);
      }
    } catch (e, stackTrace) {
      logError('获取金刚区数据失败: ${e.toString()}', e, stackTrace);
      if (_dispose || e.isCancel) return;
      // 重试直到成功
      Future.delayed(const Duration(seconds: 3), () => fetchData());
    }
  }

  void dispose() {
    _dispose = true;
    _cancelToken?.cancel('dispose');
  }
}
