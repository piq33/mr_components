import 'dart:io';

import 'package:components/api/interceptors/bsl_interceptor.dart';
import 'package:components/config.dart';
import 'package:components/log/global_log.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

/// 当需要调整baseUrl时，添加此header
const dynamicBaseUrlHeader = 'baseurl';

/// 当需要调整url时，添加此header
const dynamicPathHeader = 'path';

/// 当需要重定义返回的成功值时，添加此header
const successCodeReplaceHeader = 'success-code';

/// 当需要隐藏msg信息，添加此header
const hideMsgHeader = 'hide-msg';

const resourcePrefix = '/api/xiaosheng-resource';
const dataPrefix = '/api/xiaosheng-data';
const businessPrefix = '/api/xiaosheng-bussiness';
const systemPrefix = '/api/xiaosheng-system';
const forwardGetApi = '$businessPrefix/app/transfer/callByGet';
const forwardPostApi = '$businessPrefix/app/transfer/callByPost';

class BslService {
  static final _instance = BslService._();
  late Dio _dio;

  factory BslService.getInstance() => _instance;

  BslService._() {
    _dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(minutes: 10),
        receiveTimeout: const Duration(minutes: 10),
        baseUrl: appConfig.baseUrl,
      ),
    );
    _initDio(_dio);
  }

  void _initDio(Dio dio) {
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final SecurityContext sc = SecurityContext();
        final client = HttpClient(context: sc);
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          return true;
        };
        return client;
      },
    );
    dio.options.contentType = Headers.jsonContentType;
    dio.interceptors.add(BslInterceptor());
    dio.interceptors.add(
      RetryInterceptor(
        dio: dio,
        logPrint: print,
        retries: 1,
        retryDelays: const [Duration(seconds: 2)],
      ),
    );
    dio.interceptors.add(
      TalkerDioLogger(
        talker: logger,
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          printRequestData: true,
          printResponseData: true,
        ),
      ),
    );
  }

  static Dio dio() => _instance._dio;
}
