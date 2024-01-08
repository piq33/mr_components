import 'dart:async';

import 'package:components/log/global_log.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/management/services/config_service.dart';
import 'package:components/management/services/storage_service.dart';
import 'package:components/model/auth_model.dart';
import 'package:components/notification/notification.dart';
import 'package:components/push/push.dart';
import 'package:components/resource/assets.gen.dart';
import 'package:components/umeng/umeng.dart';
import 'package:components/util/global.dart';
import 'package:components/widget/splash/contract_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 应用等待页：最少展示时间(毫秒)
const _splashDisplayMilliseconds = 1000;

/// 应用等待页，打开应用时首先展示该页
///
/// 如用户首次安装，则弹出隐私弹框
///
/// 并在[_splashDisplayMilliseconds]毫秒后根据用户登录情况进行跳转 <br/>
/// 若已存在登录用户，则跳转至首页 <br/>
/// 若未登录，则跳转至登录页 <br/>
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _authService = Get.find<AuthService>();
  final _configService = Get.find<ConfigService>();
  final _storageService = Get.find<StorageService>();
  Authentication? _auth;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => _init());
  }

  void _init() async {
    final sp = await SharedPreferences.getInstance();
    final showContractDialog = sp.getBool(firstContractConfirmKey) ?? true;
    if (!showContractDialog) {
      _tryRestoreAuth();
      return;
    }
    // 弹出隐私弹框
    if (!mounted) {
      _jump();
      return;
    }
    logInfo('首次安装，弹出隐私弹框');
    FlutterNativeSplash.remove();
    try {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: ContractDialog(
              confirmCallback: () {
                sp.setBool(firstContractConfirmKey, false);
                _jump(true);
              },
              refuseCallback: () => _jump(),
            ),
          );
        },
      );
    } catch (e, stackTrace) {
      logError('隐私弹框异常', e, stackTrace);
      _jump();
    }
  }

  void _tryRestoreAuth() async {
    final startTime = DateTime.now().millisecondsSinceEpoch;
    try {
      Authentication? auth = await _authService.recoveryAuth();
      logInfo('恢复用户授权: ${auth?.toString()}');
      if (auth == null) return;
      _auth = auth;
      // 配置初始化
      setupPush();
      setupNotification();
      _configService.setup();
      _storageService.cosSetup();

      // 请求用户身份信息
      await _authService.fetchUserInfo();
    } catch (e) {
      logError('token及账号信息初始化异常', e);
    } finally {
      final endTime = DateTime.now().millisecondsSinceEpoch;
      final interval = endTime - startTime;
      if (interval > _splashDisplayMilliseconds) {
        _jump();
      } else {
        logInfo('初始化完毕，延迟${_splashDisplayMilliseconds - interval}毫秒后跳转');
        _timer = Timer(
          Duration(milliseconds: (_splashDisplayMilliseconds - interval)),
          _jump,
        );
      }
    }
  }

  void _jump([bool contract = false]) async {
    if (_auth == null) {
      Get.offAllNamed('login', parameters: {'contract': contract.toString()});
      return;
    }
    // 用户已登录过, 初始化友盟sdk
    setupUmeng();
    reportUserLogin(_auth?.phoneNumber ?? 'unknown user');
    switch (_auth?.userIdentity) {
      case UserIdentity.parent:
      case UserIdentity.visitor:
        Get.offAllNamed('home');
        break;
      case UserIdentity.teacher:
      case UserIdentity.invalidate:
        // 清理登录信息
        logError('异常用户身份: $_auth');
        _auth = null;
        _authService.emptyUserInfo();
        await _authService.clearAuth();
        Get.offAllNamed('login');
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // 避免FlutterNativeSplash异常导致白屏，这里依旧显示splash图作为保险
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.splash.splash.provider(),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
  }
}
