import 'dart:io';

import 'package:components/config.dart';
import 'package:components/log/global_log.dart';
import 'package:getuiflut/getuiflut.dart';

final push = Getuiflut();

var _setup = false;
void setupPush() async {
  if (_setup) return;
  try {
    Getuiflut.initGetuiSdk;
  } catch (e, stackTrace) {
    logError('个推初始化异常: ${e.toString()}', e, stackTrace);
  }
  if (Platform.isIOS) {
    try {
      // 个推配置
      push.startSdk(
        appId: pushAppId,
        appKey: pushAppKey,
        appSecret: pushAppSecret,
      );
      logDebug('启动推送sdk:\n$pushAppId\n$pushAppKey\n$pushAppSecret');
    } catch (e, stackTrace) {
      logError('个推ios初始化异常: ${e.toString()}', e, stackTrace);
      return;
    }
  }
  _setup = true;
}
