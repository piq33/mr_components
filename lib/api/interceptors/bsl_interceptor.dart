import 'dart:convert';
import 'dart:io';

import 'package:components/api/bsl_api.dart';
import 'package:components/event/token_expired_event.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/auth_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/zhaojiao_response.dart';
import 'package:components/util/global.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart' hide Response;
import 'package:package_info_plus/package_info_plus.dart';

class BslInterceptor extends Interceptor {
  static const _toastInterval = 3000;
  // interceptor初始化时，authService仍未执行初始化，因此需要标记为late
  late final _service = Get.find<AuthService>();
  String _appVersion = '';
  int _lastToastTime = 0;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = _service.authentication.value.token;
    if (token.isNotEmpty) options.headers['bsl-auth'] = token;

    if (_appVersion.isEmpty) {
      final packageInfo = await PackageInfo.fromPlatform();
      _appVersion = packageInfo.version;
    }
    // 若请求头需要调整baseUrl，则在此处进行调整
    final headers = options.headers;
    if (headers.containsKey(dynamicBaseUrlHeader)) {
      options.baseUrl = headers[dynamicBaseUrlHeader];
    }
    if (headers.containsKey(dynamicPathHeader)) {
      options.path = headers[dynamicPathHeader];
    }
    headers['os'] = Platform.isIOS
        ? 'ios'
        : Platform.isAndroid
            ? 'android'
            : 'other';
    headers['version'] = _appVersion;

    /// 添加token头
    return handler.next(options);
  }

  /// 针对服务器返回数据进行统一处理(当接口出现异常时，进行全局toast提醒)
  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    dynamic r = response.data;

    if (r is String) {
      try {
        r = jsonDecode(r);
        response.data = r;
      } catch (e) {}
    }

    if (r is! Map) return handler.next(response);

    /// 如响应结果code值不为0，且有错误信息，则通过全局toast显示
    int code = -1;
    if (r.containsKey('code')) {
      final rCode = r['code'];
      if (rCode is int) {
        code = rCode;
      } else if (rCode is String) {
        // 不同系统返回的code可能是int也可能是string，这里将其统一解析为int
        // 适配招缴的返回结构
        code = rCode.toLowerCase() == 'success'
            ? successCode
            : int.tryParse(rCode) ?? -1;
      }
    }

    // 适配新招缴的返回结构
    if (r.containsKey('head')) {
      try {
        final zjr = ZhaoJiaoResponseHead.fromJson(r['head']);
        code = zjr.success ? successCode : -1;
      } catch (e, stackTrace) {
        logError('解析招缴返回结构异常,', e, stackTrace);
      }
    }

    r['code'] = code;

    /// 查看接口请求头是否需要重定义successCode
    final headers = response.requestOptions.headers;
    final overrideSuccessCode =
        headers[successCodeReplaceHeader] ?? successCode;
    if (code == overrideSuccessCode) {
      return handler.next(response);
    } else {
      // TODO 当请求返回结果非0时进行重试
    }

    if (!headers.containsKey(hideMsgHeader)) _parseErrorMsg(r);
    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (CancelToken.isCancel(err)) {
      /// 网络请求被取消，则不作任何拦截操作
      return handler.next(err);
    }
    final code = err.response?.statusCode;
    if (code == 401) {
      // 当前无token则过滤该异常
      final token = _service.authentication.value.token;
      if (token.isNotEmpty) {
        _globalErrorToast('登录过期');
        eventBus.fire(TokenExpiredEvent(err.response?.statusMessage ?? ''));
      }
    } else {
      _parseErrorMsg(err.response?.data);
    }
    return handler.next(err);
  }

  void _parseErrorMsg(Map<dynamic, dynamic>? r) {
    if (r == null) return;

    String msg = '';
    if (r.containsKey('msg')) {
      msg = r['msg'];
    }

    // 适配新招缴的返回结构
    if (msg.isEmpty && r.containsKey('head')) {
      try {
        final zjr = ZhaoJiaoResponseHead.fromJson(r['head']);
        msg = zjr.respDesc;
      } catch (e, stackTrace) {
        logError('解析招缴返回结构异常,', e, stackTrace);
      }
    }
    if (msg.isNotEmpty) _globalErrorToast(msg);
  }

  void _globalErrorToast([String? message]) {
    int currentTime = DateTime.now().millisecondsSinceEpoch;
    if ((currentTime - _lastToastTime) < _toastInterval) {
      return;
    }
    _lastToastTime = currentTime;
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: message ?? '网络异常',
      backgroundColor: Colors.grey,
    );
  }
}
