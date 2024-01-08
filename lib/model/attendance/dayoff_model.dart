import 'package:bsl/model/converter/attendance/leave_status_converter.dart';
import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/string2int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dayoff_model.freezed.dart';
part 'dayoff_model.g.dart';

// 请假审核结果
enum LeaveStatus {
  /// 非法
  invalidate(''),

  /// 已提交
  checking('已提交'),

  /// 已确认
  approval('已确认'),

  /// 已取消
  cancel('已取消');

  final String display;

  const LeaveStatus(this.display);
}

/// 请假单请求体
@freezed
class LeavePageReq with _$LeavePageReq {
  const LeavePageReq._();
  const factory LeavePageReq({
    /// 当前页大小
    required int size,

    /// 当前页数
    required int current,
    LeaveReq? queryData,
  }) = _LeavePageReq;

  factory LeavePageReq.fromJson(Map<String, Object?> json) =>
      _$LeavePageReqFromJson(json);
}

/// 请假单请求体
@freezed
class LeaveReq with _$LeaveReq {
  const LeaveReq._();
  const factory LeaveReq({
    /// 请假类型
    String? leaveType,

    /// 学校编码
    required String schoolCode,

    /// 学生学号
    required String studentCode,

    /// 学年学期编码
    required String yearTermCode,
  }) = _LeaveReq;

  factory LeaveReq.fromJson(Map<String, Object?> json) =>
      _$LeaveReqFromJson(json);
}

/// 请假单
@freezed
class LeaveRequestModel with _$LeaveRequestModel {
  const LeaveRequestModel._();
  const factory LeaveRequestModel({
    /// 请假单主键
    required String id,

    /// 请假单号
    required String leaveNo,

    /// 请假单状态
    @LeaveStatusJsonConverter()
    @Default(LeaveStatus.invalidate)
    LeaveStatus status,

    /// 请假类型
    String? leaveType,

    /// 请假类型描述
    String? leaveTypeName,

    /// 学校编码
    String? schoolCode,

    /// 学校名称
    String? schoolName,

    /// 学生学号
    String? studentCode,

    /// 学生名称
    String? studentName,

    /// 学年学期编码
    String? yearTermCode,

    /// 学年学期名称
    String? yearTermName,

    /// 请假天数
    @String2IntJsonConverter() @Default(0) int leaveNum,

    /// 请假开始日期
    @TimestampStringNullableJsonConverter() DateTime? beginDate,

    /// 请假结束日期
    @TimestampStringNullableJsonConverter() DateTime? endDate,

    /// 请假单提交日期
    @TimestampStringNullableJsonConverter() DateTime? createdDate,

    /// 备注
    @Default('') String remark,
  }) = _LeaveRequestModel;

  bool get cancelable => status == LeaveStatus.checking;
  bool get canceled => status == LeaveStatus.cancel;

  factory LeaveRequestModel.fromJson(Map<String, Object?> json) =>
      _$LeaveRequestModelFromJson(json);
}

/// 提交请假单请求体
@freezed
class LeaveSubmitReq with _$LeaveSubmitReq {
  const LeaveSubmitReq._();
  const factory LeaveSubmitReq({
    /// 学生id
    required int studentId,

    /// 学生学号
    required String studentCode,

    /// 请假天数
    required int leaveNum,

    /// 请假开始时间
    required String beginDate,

    /// 请假结束时间
    required String endDate,

    /// 真实开始时间
    required String realBeginDate,

    /// 真实结束时间
    required String realEndDate,

    /// 请假类型
    required String leaveType,

    /// 请假原因
    required String remark,
  }) = _LeaveSubmitReq;

  factory LeaveSubmitReq.fromJson(Map<String, Object?> json) =>
      _$LeaveSubmitReqFromJson(json);
}
