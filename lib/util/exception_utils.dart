import 'package:dio/dio.dart';

extension ExceptionExtension on Object {
  bool get isCancel {
    final e = this;
    return e is DioException && e.type == DioExceptionType.cancel;
  }
}
