import 'package:bsl/api/service/course_service.dart';
import 'package:bsl/model/bsl_response.dart';
import 'package:bsl/model/course_models.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class CourseRepository {
  final CourseRemoteService _service;

  const CourseRepository(this._service);

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 获取选修课程列表
  Future<BslResponse<List<ElectiveCourseModel>>> fetchElectiveCourses({
    /// 学生学号
    required String studentCode,

    /// 学校编码
    required String schoolCode,

    /// 课程主键
    int? id,

    /// 是否有折扣
    bool? hasDiscount,

    /// 开课开始时间
    DateTime? classDateStart,

    /// 开课结束时间
    DateTime? classDateEnd,
    CancelToken? cancelToken,
  }) {
    final req = ElectiveCourseReq(
      studentCode: studentCode,
      schoolCode: schoolCode,
      id: id,
      hasDiscount: hasDiscount,
      classDateStart:
          classDateStart != null ? _dateFormat.format(classDateStart) : null,
      classDateEnd:
          classDateEnd != null ? _dateFormat.format(classDateEnd) : null,
    );
    return _service.api.fetchElectiveCourses(
      req: req,
      cancelToken: cancelToken,
    );
  }
}
