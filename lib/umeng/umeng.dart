import 'dart:io';

import 'package:components/config.dart';
import 'package:components/log/global_log.dart';
import 'package:umeng_common_sdk/umeng_common_sdk.dart';

var _setup = false;
void setupUmeng() async {
  if (_setup) return;
  try {
    UmengCommonSdk.initCommon(
      umentAndroidKey,
      umentIosKey,
      Platform.operatingSystem,
    );
    UmengCommonSdk.setPageCollectionModeManual();
    logDebug('友盟初始化完毕');
  } catch (e, stackTrace) {
    logError('友盟初始化异常', e, stackTrace);
  }
  _setup = true;
}

// 最长重试60次
const _maxTimes = 60;
var _times = 0;
// 报告用户登录时, sdk可能未初始化完毕, 此时延时执行
void reportUserLogin(String userId) {
  _times += 1;
  if (_times >= _maxTimes) {
    logError('友盟插件无法初始化');
    return;
  }
  if (!_setup) {
    Future.delayed(const Duration(seconds: 5), () => reportUserLogin(userId));
    return;
  }
  UmengCommonSdk.onProfileSignIn(userId);
}
