import 'package:bsl/model/converter/activity/activity_status_converter.dart';
import 'package:bsl/model/converter/activity/apply_status_converter.dart';
import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/string2int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

enum ActivityStatus {
  /// 未知
  unknown,

  /// 未开始
  notStart,

  /// 进行中
  processing,

  /// 已结束
  end,

  /// 暂停
  pause,

  /// 已作废
  invalid,
}

enum ApplyStatus {
  /// 未知
  unknown(''),

  /// 已报名
  applied('已报名'),

  /// 已签到
  signed('已签到');

  final String display;
  const ApplyStatus(this.display);
}

@freezed
class ActivityReq with _$ActivityReq {
  const ActivityReq._();
  const factory ActivityReq({
    // 1.查询所有活动  2.只查所在区域活动
    required int queryType,
    required List<String> schoolCodes,
  }) = _ActivityReq;

  factory ActivityReq.fromJson(Map<String, Object?> json) =>
      _$ActivityReqFromJson(json);
}

@freezed
class ActivityModel with _$ActivityModel {
  const ActivityModel._();
  const factory ActivityModel({
    /// 活动报名id
    @JsonKey(name: 'activityApplyId') @String2IntJsonConverter() int? applyId,

    /// 活动id
    @JsonKey(name: 'activityId') @String2IntJsonConverter() required int id,

    /// 活动名称
    @JsonKey(name: 'activityName') @Default('') String name,

    /// 学校id
    @String2IntJsonConverter() required int schoolId,

    /// 学校编码
    String? schoolCode,

    /// 学校名称
    @Default('') String schoolName,

    /// 学校英文名称
    @Default('') String schoolEngName,

    /// 活动状态
    @ActivityStatusJsonConverter()
    @Default(ActivityStatus.unknown)
    ActivityStatus status,

    /// 报名状态
    @ApplyStatusJsonConverter()
    @Default(ApplyStatus.unknown)
    ApplyStatus applyStatus,

    /// 参加人数
    @String2IntJsonConverter() @Default(0) int applyCount,

    /// 活动开始日期
    @TimestampStringNullableJsonConverter() DateTime? activityStartDate,

    /// 活动结束日期
    @TimestampStringNullableJsonConverter() DateTime? activityEndDate,

    /// 活动报名开始日期
    @TimestampStringNullableJsonConverter() DateTime? applyStartDate,

    /// 活动报名结束日期
    @TimestampStringNullableJsonConverter() DateTime? applyEndDate,

    /// 活动宣传图
    @JsonKey(name: 'pictureAddress') String? cover,

    /// 活动链接
    @JsonKey(name: 'activityLink') String? link,

    /// 默认值“活动”
    String? tag,

    /// 活动内容
    @JsonKey(name: 'activityContent') @Default('') String content,
  }) = _ActivityModel;

  SignActivityQrCodeModel? get toQrCode => SignActivityQrCodeModel(
        activityApplyId: applyId?.toString() ?? '',
        tag: tag ?? '',
      );

  factory ActivityModel.fromJson(Map<String, Object?> json) =>
      _$ActivityModelFromJson(json);
}

@freezed
class SignActivityQrCodeModel with _$SignActivityQrCodeModel {
  const SignActivityQrCodeModel._();
  const factory SignActivityQrCodeModel({
    /// 活动报名id
    required String activityApplyId,

    /// 活动tag
    required String tag,
  }) = _SignActivityQrCodeModel;

  factory SignActivityQrCodeModel.fromJson(Map<String, Object?> json) =>
      _$SignActivityQrCodeModelFromJson(json);
}
