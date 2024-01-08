import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/int2bool_converter.dart';
import 'package:bsl/model/converter/survey/survey_status_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_model.freezed.dart';
part 'survey_model.g.dart';

enum SurveyStatus {
  unknown,

  /// 已保存
  saved,

  /// 已发布
  published,

  /// 人为结束
  manualFinished,

  /// 系统结束
  systemFinished,
}

@freezed
class SurveyTokenReq with _$SurveyTokenReq {
  const SurveyTokenReq._();
  const factory SurveyTokenReq({required String ticket}) = _SurveyTokenReq;

  factory SurveyTokenReq.fromJson(Map<String, Object?> json) =>
      _$SurveyTokenReqFromJson(json);
}

@freezed
class SurveyOtherParam with _$SurveyOtherParam {
  const factory SurveyOtherParam({
    /// 标题
    @Default('') String name,

    /// url
    String? url,
  }) = _SurveyOtherParam;

  factory SurveyOtherParam.fromJson(Map<String, Object?> json) =>
      _$SurveyOtherParamFromJson(json);
}

@freezed
class SurveyModel with _$SurveyModel {
  const SurveyModel._();
  const factory SurveyModel({
    /// 问卷id
    required int id,

    /// 问卷编码
    required String key,

    /// 问卷名称
    @Default('') String name,

    /// 问卷描述
    @Default('') String describe,

    /// 问卷来源
    int? sourceType,

    /// 来源id
    @Default('') String sourceId,

    /// 用户id
    @Default('') String userId,

    /// 发布人名称
    @Default('') String personName,

    /// 问卷状态
    @SurveyStatusJsonConverter()
    @Default(SurveyStatus.unknown)
    SurveyStatus status,

    /// 问卷类型
    int? type,

    /// 问卷类型名称
    @Default('') String typeName,

    /// 发布时间
    @DateTimeJsonConverter() DateTime? publishTime,

    /// 人为结束时间
    @DateTimeJsonConverter() DateTime? manualEndTime,

    /// 系统结束时间
    @DateTimeJsonConverter() DateTime? sysEndTime,

    /// 是否人为恢复
    @Default(false) bool isRecover,

    /// 恢复时间
    @DateTimeJsonConverter() DateTime? recoverTime,

    /// 恢复者
    String? recoverBy,

    /// PC访问地址
    String? pcUrl,

    /// wap访问地址
    String? wapUrl,

    /// 小程序访问地址
    String? miniUrl,

    /// app访问地址
    String? appUrl,

    /// 是否可以编辑
    @Default(false) bool canUpdate,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新
    @DateTimeJsonConverter() DateTime? updateTime,

    /// pc浏览量
    @Default(0) int pcRead,

    /// wap浏览量
    @Default(0) int wapRead,

    /// 小程序浏览量
    @Default(0) int miniRead,

    /// pc填写量
    @Default(0) int pcSubmit,

    /// wap填写量
    @Default(0) int wapSubmit,

    /// 小程序填写量
    @Default(0) int miniSubmit,

    /// 提交状态
    @JsonKey(name: 'submitStatus')
    @Int2BoolJsonConverter()
    @Default(false)
    bool hasSubmit,

    /// 总浏览量
    @Default(0) int allRead,

    /// 总填写量
    @Default(0) int allSubmit,

    /// 创建人名称
    @Default('') String userName,
  }) = _SurveyModel;

  factory SurveyModel.fromJson(Map<String, Object?> json) =>
      _$SurveyModelFromJson(json);
}
