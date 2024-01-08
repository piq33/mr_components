import 'package:components/model/converter/attendance/attendance_date_converter.dart';
import 'package:components/model/converter/attendance/attendance_status_converter.dart';
import 'package:components/model/converter/attendance/attendance_type_converter.dart';
import 'package:components/model/converter/attendance/signature_status_converter.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/string2bool_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

/// 考勤类型
enum AttendanceType {
  none(''),
  attendance('到勤'),
  absence('缺勤'),
  leave('请假'),
  added('补录');

  final String display;
  const AttendanceType(this.display);
}

/// 考勤状态
enum AttendanceStatus {
  /// 非法状态
  invalidate(''),

  /// 已确认
  approval('已确认'),

  /// 待审核
  verifying('待老师审核'),

  /// 待确认
  toBeConfirmed('待确认');

  final String display;
  const AttendanceStatus(this.display);
}

/// 签名状态
enum SignatureStatus {
  none,

  /// 未签名
  unsigned,

  /// 未签名(有异议)
  unsignedButFeedback,

  /// 有异议
  feedback,

  /// 已签名
  signed,

  /// 重签
  resigned,
}

@freezed
class AttendanceOtherParam with _$AttendanceOtherParam {
  const AttendanceOtherParam._();
  const factory AttendanceOtherParam({
    /// 指定的考勤日期
    @Default('') String date,
  }) = _AttendanceOtherParam;

  factory AttendanceOtherParam.fromJson(Map<String, Object?> json) =>
      _$AttendanceOtherParamFromJson(json);
}

@freezed
class AttendanceReq with _$AttendanceReq {
  const AttendanceReq._();
  const factory AttendanceReq({
    /// 起始日期
    @JsonKey(name: 'checkWorkDateBegin') required String beginDate,

    /// 结束日期
    @JsonKey(name: 'checkWorkDateEnd') required String endDate,

    /// 学生学号
    required String studentCode,

    /// 学校编码
    required String schoolCode,
  }) = _AttendanceReq;

  factory AttendanceReq.fromJson(Map<String, Object?> json) =>
      _$AttendanceReqFromJson(json);
}

@freezed
class AttendanceModel with _$AttendanceModel {
  const AttendanceModel._();
  const factory AttendanceModel({
    // 考勤日期
    @JsonKey(name: 'checkWorkDate')
    @TimestampStringJsonConverter()
    required DateTime dateTime,

    // 考勤状态英文名称
    @JsonKey(name: 'checkWorkStatus') String? stateEngName,

    // 考勤状态名称
    @JsonKey(name: 'checkWorkStatusName') String? stateName,

    // 考勤状态
    @AttendanceTypeJsonConverter()
    @Default(AttendanceType.none)
    AttendanceType state,
  }) = _AttendanceModel;

  factory AttendanceModel.empty(DateTime dateTime) {
    return AttendanceModel(dateTime: dateTime);
  }

  factory AttendanceModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceModelFromJson(json);
}

@freezed
class AttendanceDetailFeedbackModel with _$AttendanceDetailFeedbackModel {
  const AttendanceDetailFeedbackModel._();
  const factory AttendanceDetailFeedbackModel({
    /// 反馈时间
    @TimestampStringNullableJsonConverter() DateTime? dissentDate,

    /// 反馈信息
    @Default('') String dissentRemark,
  }) = _AttendanceDetailFeedbackModel;

  factory AttendanceDetailFeedbackModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceDetailFeedbackModelFromJson(json);
}

@freezed
class AttendanceOverviewReq with _$AttendanceOverviewReq {
  const AttendanceOverviewReq._();
  const factory AttendanceOverviewReq({
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

    /// 开始时间
    required String beginDate,

    /// 结束时间
    required String endDate,
  }) = _AttendanceOverviewReq;

  factory AttendanceOverviewReq.fromJson(Map<String, Object?> json) =>
      _$AttendanceOverviewReqFromJson(json);
}

@freezed
class AttendanceOverviewModel with _$AttendanceOverviewModel {
  const AttendanceOverviewModel._();
  const factory AttendanceOverviewModel({
    /// 日期
    @AttendanceDateJsonConverter() DateTime? date,

    /// 考勤状态
    @AttendanceStatusJsonConverter()
    @Default(AttendanceStatus.invalidate)
    AttendanceStatus status,
  }) = _AttendanceOverviewModel;

  factory AttendanceOverviewModel.empty() => const AttendanceOverviewModel();

  factory AttendanceOverviewModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceOverviewModelFromJson(json);
}

@freezed
class AttendanceDetailReq with _$AttendanceDetailReq {
  const AttendanceDetailReq._();
  const factory AttendanceDetailReq({
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
    required String month,

    /// 学生id
    required int studentId,
  }) = _AttendanceDetailReq;

  factory AttendanceDetailReq.fromJson(Map<String, Object?> json) =>
      _$AttendanceDetailReqFromJson(json);
}

@freezed
class AttendanceDetailModel with _$AttendanceDetailModel {
  const AttendanceDetailModel._();
  const factory AttendanceDetailModel({
    /// 反馈信息列表
    @Default([]) List<AttendanceDetailFeedbackModel> dissents,

    /// 考勤月份
    @AttendanceDateJsonConverter() DateTime? month,

    /// 反馈信息
    @Default('') String remark,

    /// 学校编码
    String? schoolCode,

    /// 学生id
    String? studentId,

    /// 签名是否已下发给家长
    @String2BoolJsonConverter() @Default(false) bool isSend,

    /// 签名状态
    @JsonKey(name: 'signatureStatus')
    @SignatureStatusJsonConverter()
    @Default(SignatureStatus.unsigned)
    SignatureStatus status,

    /// 签名日期
    @TimestampStringNullableJsonConverter() DateTime? signatureDate,

    /// 签名图片地址
    String? signatureUrl,
  }) = _AttendanceDetailModel;

  factory AttendanceDetailModel.empty() => const AttendanceDetailModel();

  factory AttendanceDetailModel.fromJson(Map<String, Object?> json) =>
      _$AttendanceDetailModelFromJson(json);
}

@freezed
class AttendanceFeedbackReq with _$AttendanceFeedbackReq {
  const AttendanceFeedbackReq._();
  const factory AttendanceFeedbackReq({
    /// 是否签名 true => 是 false => 否
    required bool isSignature,

    /// 考勤月份 yyyy-MM
    @JsonKey(name: 'mouth') required String month,

    /// 反馈信息
    String? remark,

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

    /// 签名url
    String? url,
  }) = _AttendanceFeedbackReq;

  factory AttendanceFeedbackReq.fromJson(Map<String, Object?> json) =>
      _$AttendanceFeedbackReqFromJson(json);
}
