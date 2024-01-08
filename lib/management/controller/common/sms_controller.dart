import 'dart:async';

import 'package:components/management/services/repository_service.dart';
import 'package:components/model/common_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

/// 登录验证码获取按钮状态
enum SmsCodeButtonStatus {
  /// 空闲(点击获取验证码)
  idle,

  /// 正在倒计时，不能点击
  countdown,

  /// 重新获取验证码
  retry,
}

/// 获取验证码按钮点击间隔
const int _initialDuration = 60;

class SmsController extends GetxController {
  CancelToken? _cancelToken;
  final _repository = Get.find<RepositoryService>().commonRepository;
  final status = SmsCodeButtonStatus.idle.obs;
  final timer = _initialDuration.obs;

  final _ticker = Ticker();
  StreamSubscription<int>? _tickerSubscription;

  bool get displayButton =>
      status.value == SmsCodeButtonStatus.idle ||
      status.value == SmsCodeButtonStatus.retry;

  bool get retry => status.value == SmsCodeButtonStatus.retry;

  @override
  void onClose() {
    reset();
    _cancelToken?.cancel('dispose');
    _cancelToken = null;
    super.onClose();
  }

  void requestSms(String phone) async {
    _cancelToken = CancelToken();

    /// 请求服务器发送验证码，马上进入倒计时
    _repository.sendSmsCode(phone, _cancelToken);
    _startTimer();
  }

  /// 启动计时器，但不向后台请求发送验证码
  void start() {
    _startTimer();
  }

  /// 暂停计时器，此时计时器状态是[SmsCodeButtonStatus.retry]
  /// 一般计时结束后会自动调用该方法
  void stop() {
    _stopTimer();
  }

  /// 重制计时器状态到[SmsCodeButtonStatus.idle]
  void reset() {
    _stopTimer();
    status.value = SmsCodeButtonStatus.idle;
  }

  void _startTimer() {
    _tickerSubscription?.cancel();

    status.value = SmsCodeButtonStatus.countdown;
    _tickerSubscription = _ticker.tick(ticks: _initialDuration).listen(
          (duration) => timer.value = duration,
        );

    _tickerSubscription?.onDone(_stopTimer);
  }

  void _stopTimer() {
    _tickerSubscription?.cancel();
    status.value = SmsCodeButtonStatus.retry;
    timer.value = _initialDuration;
  }
}
