import 'package:components/api/service/attendance_service.dart';
import 'package:components/model/attendance/attendance_model.dart';
import 'package:components/model/attendance/dayoff_model.dart';
import 'package:components/model/bsl_response.dart';
import 'package:components/model/zhaojiao_response.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class AttendanceRepository {
  final AttendanceRemoteService _service;

  const AttendanceRepository(this._service);

  static final _attendanceDateFormat = DateFormat('yyyy-MM', Intl.systemLocale);
  static final _dayOffDateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  /// 查询日期范围内考勤状态
  Future<BslResponse<List<AttendanceOverviewModel>>> fetchAttendanceOverview({
    /// 学校编码
    required String schoolCode,

    /// 学段编码
    required String phaseCode,

    /// 班级编码
    required String classCode,

    /// 课程编码
    required String courseCode,

    /// 年级编码
    required String gradeCode,

    /// 开始时间
    required DateTime beginDate,

    /// 结束时间
    required DateTime endDate,

    /// 学生id
    required int studentId,
    CancelToken? cancelToken,
  }) {
    final req = AttendanceOverviewReq(
      schoolCode: schoolCode,
      phaseCode: phaseCode,
      classCode: classCode,
      courseCode: courseCode,
      gradeCode: gradeCode,
      beginDate: _attendanceDateFormat.format(beginDate),
      endDate: _attendanceDateFormat.format(endDate),
      studentId: studentId,
    );
    return _service.api.fetchAttendanceOverview(
      req: req,
      cancelToken: cancelToken,
    );
  }

  /// 查询考勤汇总
  Future<BslResponse<List<AttendanceModel>>> fetchAttendanceSummary({
    /// 学生学号
    required String studentCode,

    /// 学校编码
    required String schoolCode,

    /// 选中日期
    required DateTime dateTime,
    CancelToken? cancelToken,
  }) {
    final beginDate = DateTime(dateTime.year, dateTime.month, 1);
    final endDate = DateTime(dateTime.year, dateTime.month + 1, 0);
    final req = AttendanceReq(
      beginDate: beginDate.millisecondsSinceEpoch.toString(),
      endDate: endDate.millisecondsSinceEpoch.toString(),
      studentCode: studentCode,
      schoolCode: schoolCode,
    );
    return _service.api.fetchAttendanceSummary(
      req: req,
      cancelToken: cancelToken,
    );
  }

  /// 查询考勤签名详情
  Future<BslResponse<AttendanceDetailModel>> fetchAttendanceDetail({
    /// 学校编码
    required String schoolCode,

    /// 学段编码
    required String phaseCode,

    /// 班级编码
    required String classCode,

    /// 课程编码
    required String courseCode,

    /// 年级编码
    required String gradeCode,

    /// 查看月份
    required DateTime month,

    /// 学生id
    required int studentId,
    CancelToken? cancelToken,
  }) {
    final req = AttendanceDetailReq(
      schoolCode: schoolCode,
      phaseCode: phaseCode,
      classCode: classCode,
      courseCode: courseCode,
      gradeCode: gradeCode,
      month: _attendanceDateFormat.format(month),
      studentId: studentId,
    );
    return _service.api.fetchAttendanceDetail(
      req: req,
      cancelToken: cancelToken,
    );
  }

  /// 提交考勤签名
  Future<BslResponse<List<AttendanceModel>>> submitSignature({
    /// 学校编码
    required String schoolCode,

    /// 学段编码
    required String phaseCode,

    /// 班级编码
    required String classCode,

    /// 课程编码
    required String courseCode,

    /// 年级编码
    required String gradeCode,

    /// 学生id
    required int studentId,

    /// 考勤月份
    required DateTime date,

    /// 签名url
    required String url,
    CancelToken? cancelToken,
  }) {
    final req = AttendanceFeedbackReq(
      isSignature: true,
      schoolCode: schoolCode,
      phaseCode: phaseCode,
      classCode: classCode,
      courseCode: courseCode,
      gradeCode: gradeCode,
      studentId: studentId,
      url: url,
      month: _attendanceDateFormat.format(date),
    );
    return _service.api.submitAttendance(req: req, cancelToken: cancelToken);
  }

  /// 提交考勤反馈
  Future<BslResponse<List<AttendanceModel>>> submitFeedback({
    /// 学校编码
    required String schoolCode,

    /// 学段编码
    required String phaseCode,

    /// 班级编码
    required String classCode,

    /// 课程编码
    required String courseCode,

    /// 年级编码
    required String gradeCode,

    /// 学生id
    required int studentId,

    /// 考勤月份
    required DateTime date,

    /// 考勤反馈
    required String feedback,
    CancelToken? cancelToken,
  }) {
    final req = AttendanceFeedbackReq(
      isSignature: false,
      schoolCode: schoolCode,
      phaseCode: phaseCode,
      classCode: classCode,
      courseCode: courseCode,
      gradeCode: gradeCode,
      studentId: studentId,
      remark: feedback,
      month: _attendanceDateFormat.format(date),
    );
    return _service.api.submitAttendance(req: req, cancelToken: cancelToken);
  }

  /// 查询请假单
  Future<BslResponse<ZhaoJiaoPageResponse<List<LeaveRequestModel>>>>
      fetchLeaveList({
    /// 当前页大小
    required int size,

    /// 当前页数
    required int current,

    /// 请假类型
    String? leaveType,

    /// 学校编码
    required String schoolCode,

    /// 学生学号
    required String studentCode,

    /// 学年学期编码
    required String yearTermCode,
    CancelToken? cancelToken,
  }) {
    final req = LeaveReq(
      leaveType: leaveType,
      schoolCode: schoolCode,
      studentCode: studentCode,
      yearTermCode: yearTermCode,
    );
    return _service.api.fetchLeaveList(
      req: LeavePageReq(size: size, current: current, queryData: req),
      cancelToken: cancelToken,
    );
  }

  /// 提交请假记录
  Future<BslResponse<String>> submitLeave({
    /// 学生id
    required int studentId,

    /// 学生学号
    required String studentCode,

    /// 请假天数
    required int leaveNum,

    /// 请假开始时间
    required DateTime beginDate,

    /// 请假结束时间
    required DateTime endDate,

    /// 请假类型
    required String leaveType,

    /// 请假原因
    required String remark,
    CancelToken? cancelToken,
  }) {
    final req = LeaveSubmitReq(
      studentId: studentId,
      studentCode: studentCode,
      leaveNum: leaveNum,
      beginDate: _dayOffDateFormat.format(beginDate),
      endDate: _dayOffDateFormat.format(endDate),
      realBeginDate: _dayOffDateFormat.format(beginDate),
      realEndDate: _dayOffDateFormat.format(endDate),
      leaveType: leaveType,
      remark: remark,
    );
    return _service.api.submitLeave(req: req, cancelToken: cancelToken);
  }

  /// 撤销请假记录
  Future<BslResponse<String>> cancelLeave({
    /// 请假单号
    required String leaveNo,
    CancelToken? cancelToken,
  }) {
    return _service.api.cancelLeave(
      leaveNo: leaveNo,
      cancelToken: cancelToken,
    );
  }
}
