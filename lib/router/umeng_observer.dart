import 'package:components/log/global_log.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:umeng_common_sdk/umeng_common_sdk.dart';

// h5嵌入页面url与中文标题对应关系
const _h5Url2TitleMap = {
  'student/archive/index': '成长档案',
  'student/evaluate/index': '宝贝评估',
  'student/latecare/index': '宝贝托管',
  'student/resource/index': '共享课堂',
  'student/album/index': '宝贝相册',
  'student/medicine/index': '喂药申请',
  'student/pickup/index': '宝贝接送',
  'student/nsn/index': '新生须知',
  'student/coupon/myCoupon': '我的券包',
  'student/chcare/classHourMng/recharge': '课时管理',
  'student/chcare/classHourMng/pickSchool': '课时管理',
  'student/chcare/elective/courseList': '课时管理',
  'student/chcare/elective/reservationCourse': '选修课程详情',
};

class UmengObserver extends NavigatorObserver {
  static final observer = UmengObserver();

  final _h5UrlRegex = RegExp(r'(?<=\?url=)[^&]+');
  final _timeMap = <String, List<int>>{};

  @override
  void didPush(route, previousRoute) {
    super.didPush(route, previousRoute);
    final routeName = route.settings.name;
    // 不收集启动页的信息
    if (routeName == null || routeName.isEmpty || routeName == 'splash') return;

    final preTitle = _getPageTitle(previousRoute);
    final curTitle = _getPageTitle(route);

    // 记录进入页面时间
    final enterPageTime = DateTime.now().millisecondsSinceEpoch;
    final durations = _timeMap[routeName] ?? List.empty(growable: true);
    _timeMap[routeName] = durations..add(enterPageTime);

    UmengCommonSdk.onEvent(
      '_pages',
      {
        'prePage': preTitle ?? 'unknown page',
        'page': curTitle ?? 'unknown page',
        'path': routeName,
      },
    );
    UmengCommonSdk.onPageStart(routeName);
    logDebug('友盟进入页面统计: $curTitle');
  }

  @override
  void didPop(route, previousRoute) {
    super.didPop(route, previousRoute);
    final routeName = route.settings.name;
    if (routeName == null || routeName.isEmpty) return;

    final curTitle = _getPageTitle(route);
    // 计算页面逗留时长
    _reportUsedTime(route);

    UmengCommonSdk.onPageEnd(routeName);
    logDebug('友盟退出页面统计: $curTitle');
  }

  String? _getPageTitle(Route<dynamic>? route) {
    final routeName = route?.settings.name;
    if (routeName == null || routeName.isEmpty) return null;

    if (routeName.startsWith('browser')) {
      Match? match = _h5UrlRegex.firstMatch(routeName);
      final url = match != null ? Uri.decodeComponent(match.group(0)!) : '';
      return _h5Url2TitleMap.containsKey(url)
          ? _h5Url2TitleMap[url]
          : 'unknown h5 url';
    }
    return route is GetPageRoute ? route.title : routeName;
  }

  void _reportUsedTime(Route<dynamic>? route) {
    final routeName = route?.settings.name;
    if (routeName == null || routeName.isEmpty) return;

    final pageTitle = _getPageTitle(route);
    final durations = _timeMap[routeName] ?? List.empty();
    final enterPageTime = durations.isNotEmpty ? durations.removeLast() : 0;
    final exitPageTime = DateTime.now().millisecondsSinceEpoch;
    if (exitPageTime > enterPageTime) {
      final duration = (exitPageTime - enterPageTime) / 1000;
      UmengCommonSdk.onEvent(
        '_pageUsedTime',
        {
          'start': enterPageTime.toString(),
          'page': pageTitle,
          'end': exitPageTime.toString(),
          'duration': duration,
        },
      );
      logDebug('友盟退出页面统计: $pageTitle, duration: $duration秒');
    }
    if (durations.isEmpty) _timeMap.remove(routeName);
  }
}
