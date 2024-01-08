import 'package:bsl/api/service/conservation_service.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/conservation/daylife_model.dart';
import 'package:dio/dio.dart';

class ConservationRepository {
  final ConservationRemoteService _service;

  const ConservationRepository(this._service);

  /// 指定学校当前学期的所有月份列表
  Future<BslResponse<List<String>>> fetchMonths(
    String schoolCode,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchMonths(
      schoolCode: schoolCode,
      cancelToken: cancelToken,
    );
  }

  /// 获取学生的入园天数
  Future<BslResponse<int?>> fetchSchoolDays(
    String studentCode,
    CancelToken? cancelToken,
  ) {
    return _service.api.fetchSchoolDays(
      studentCode: studentCode,
      cancelToken: cancelToken,
    );
  }

  /// 获取学生的日报记录
  Future<BslResponse<List<SimpleDayLifeModel>>> fetchSimpleDayLife({
    /// 学号
    required String studentCode,

    /// 开始日期
    DateTime? startDate,

    /// 结束日期
    DateTime? endDate,
    CancelToken? cancelToken,
  }) {
    final req = SimpleDayLifeReq(
      studentCode: studentCode,
      startDate: startDate,
      endDate: endDate,
    );
    return _service.api.fetchSimpleDayLife(req: req, cancelToken: cancelToken);
  }

  /// 获取学生当天的保育记录
  Future<BslResponse<List<ReportModel>>> fetchDayLifeToday({
    required String studentCode,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchDayLifeToday(
      studentCode: studentCode,
      cancelToken: cancelToken,
    );
  }

  /// 获取学生指定日期的保育记录
  Future<BslResponse<List<ReportModel>>> fetchDayLifeByDate({
    required String studentCode,
    required DateTime date,
    CancelToken? cancelToken,
  }) {
    final req = ReportReq(
      studentCode: studentCode,
      date: date,
    );
    return _service.api.fetchDayLifeByDate(
      req: req,
      cancelToken: cancelToken,
    );
  }
}
