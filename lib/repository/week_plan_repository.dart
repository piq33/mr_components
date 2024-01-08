import 'package:components/api/service/week_plan_service.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/week_plan_models.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class WeekPlanRepository {
  final WeekPlanRemoteService _service;

  const WeekPlanRepository(this._service);

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 获取日期对应的周计划
  Future<BslResponse<List<WeekPlanModel>>> fetchWeekPlanDateRange({
    /// 学校编码
    String? schoolCode,

    /// 学段编码
    String? phaseCode,

    /// 课程编码
    String? courseCode,

    /// 班级编码
    String? classCode,

    /// 年级编码
    String? gradeCode,

    /// 日期范围
    required WeekdayRange range,
    CancelToken? cancelToken,
  }) {
    return _service.api.fetchWeekPlanDateRange(
      schoolCode: schoolCode,
      phaseCode: phaseCode,
      courseCode: courseCode,
      classCode: classCode,
      gradeCode: gradeCode,
      startDate: _dateFormat.format(range.startDate),
      endDate: _dateFormat.format(range.endDate),
      cancelToken: cancelToken,
    );
  }
}
