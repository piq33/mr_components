import 'dart:io';

import 'package:components/log/global_log.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> ensurePermission(Permission permission, [String? name]) async {
  final status = await permission.status;
  logDebug('$name权限状态: $status');
  if (status.isGranted) return true;

  /// ios系统限制或android系统已勾选"不再询问"只通过toast提示用户
  if ((status.isPermanentlyDenied || status.isRestricted) && name != null) {
    Fluttertoast.showToast(msg: '请到系统设置中允许$name权限');
    return false;
  }
  var requestResult = await permission.request();
  logDebug('请求$name权限状态结果: $requestResult');
  if (requestResult.isDenied) {
    Fluttertoast.showToast(msg: '请授予$name权限');
    return false;
  }
  if (!requestResult.isGranted && !requestResult.isLimited && name != null) {
    Fluttertoast.showToast(msg: '请授予$name权限');
    return false;
  }
  return true;
}

Future<bool> ensureStoragePermission() async {
  final deviceInfoPlugin = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    /// Android在Q之后不需要通过写入权限来向共享媒体库写入文件
    final deviceInfo = await deviceInfoPlugin.androidInfo;
    logDebug('当前Android设备信息: $deviceInfo');
    final sdkInt = deviceInfo.version.sdkInt;
    return sdkInt < 28
        ? await ensurePermission(Permission.storage, '存储')
        : true;
  }
  if (Platform.isIOS) {
    return await ensurePermission(Permission.photos, '媒体库');
  }
  return true;
}

Future<bool> ensurePhotosPermission() async {
  if (Platform.isAndroid) {
    /// Android在13后需要主动请求相册权限
    return await ensurePermission(Permission.storage, '媒体库') ||
        await ensurePermission(Permission.photos, '相册');
  }
  if (Platform.isIOS) {
    return await ensurePermission(Permission.photos, '媒体库');
  }
  return true;
}

Future<bool> ensureVideosPermission() async {
  if (Platform.isAndroid) {
    /// Android在13后需要主动请求视频权限
    return await ensurePermission(Permission.storage, '媒体库') ||
        await ensurePermission(Permission.videos, '视频');
  }
  if (Platform.isIOS) {
    return await ensurePermission(Permission.photos, '媒体库');
  }
  return true;
}

Future<bool> ensureAudiosPermission() async {
  if (Platform.isAndroid) {
    /// Android在13后需要主动请求音频权限
    return await ensurePermission(Permission.storage, '媒体库') ||
        await ensurePermission(Permission.audio, '音频');
  }
  if (Platform.isIOS) {
    return await ensurePermission(Permission.photos, '媒体库');
  }
  return true;
}
