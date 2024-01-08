import 'package:components/log/global_log.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'week_plan_model.freezed.dart';
part 'week_plan_model.g.dart';

enum WeekPlanStatus {
  /// 待发布
  @JsonValue(1)
  waiting('待发布'),

  /// 已发布
  @JsonValue(2)
  send('已发布'),

  /// 已撤回
  @JsonValue(3)
  cancel('已撤回');

  final String display;
  const WeekPlanStatus(this.display);
}

enum WeekPlanTimeType {
  @JsonValue('')
  unknown(''),
  @JsonValue('morning')
  morning('上午'),
  @JsonValue('afternoon')
  afternoon('下午');

  final String display;
  const WeekPlanTimeType(this.display);
}

@freezed
class WeekPlanOtherParam with _$WeekPlanOtherParam {
  const WeekPlanOtherParam._();
  const factory WeekPlanOtherParam({
    /// 指定的周计划日期
    @Default('') String date,
  }) = _WeekPlanOtherParam;

  factory WeekPlanOtherParam.fromJson(Map<String, Object?> json) =>
      _$WeekPlanOtherParamFromJson(json);
}

@freezed
class WeekPlanInfoModel with _$WeekPlanInfoModel {
  const WeekPlanInfoModel._();
  const factory WeekPlanInfoModel({
    int? id,

    /// 计划表编码
    @Default('') String planCode,

    /// 内容
    @Default('') String title,

    /// 图片
    @JsonKey(name: 'resourceUrl') String? resources,

    /// 时间类型
    @Default(WeekPlanTimeType.unknown) WeekPlanTimeType timeType,

    /// 活动类型
    @Default('') String activity,

    /// 日期
    @SimpleDateTimeJsonConverter() DateTime? currDate,

    /// 日期
    @JsonKey(name: 'dateType') int? weekday,

    /// 排序
    @Default(0) int orderNum,

    /// 活动类型编码
    @Default('') String activityCode,
  }) = _WeekPlanInfoModel;

  String? get img {
    final r = resources;
    if (r == null || r.isEmpty) return null;
    try {
      final list = r.split(',');
      return list.isNotEmpty ? list.first : null;
    } catch (e, stackTrace) {
      logError('周计划图片资源解析异常', e, stackTrace);
      return null;
    }
  }

  factory WeekPlanInfoModel.fromJson(Map<String, Object?> json) =>
      _$WeekPlanInfoModelFromJson(json);
}

@freezed
class WeekPlanInfoWrapper with _$WeekPlanInfoWrapper {
  const WeekPlanInfoWrapper._();
  const factory WeekPlanInfoWrapper({
    /// 时间类型
    required WeekPlanTimeType timeType,

    /// 计划详情
    required List<WeekPlanInfoModel> infoList,
  }) = _WeekPlanInfoWrapper;

  factory WeekPlanInfoWrapper.fromJson(Map<String, Object?> json) =>
      _$WeekPlanInfoWrapperFromJson(json);
}

/// 周目标
@freezed
class WeekPlanTargetModel with _$WeekPlanTargetModel {
  const WeekPlanTargetModel._();
  const factory WeekPlanTargetModel({
    int? id,

    /// 标题
    @Default('') String title,

    /// 内容
    @Default('') String content,

    /// 计划表编码
    @Default('') String planCode,

    /// 排序
    @Default(0) int orderNum,
  }) = _WeekPlanTargetModel;

  factory WeekPlanTargetModel.fromJson(Map<String, Object?> json) =>
      _$WeekPlanTargetModelFromJson(json);
}

@freezed
class WeekPlanModel with _$WeekPlanModel {
  const WeekPlanModel._();
  const factory WeekPlanModel({
    /// 日期
    @SimpleDateTimeJsonConverter() DateTime? currDate,

    /// 计划表编码
    String? planCode,

    /// 状态
    @Default(WeekPlanStatus.waiting) WeekPlanStatus status,

    /// 就读学校编码
    @Default('') String schoolCode,

    /// 就读学段编码
    @Default('') String phaseCode,

    /// 就读学段名称
    @Default('') String phaseName,

    /// 就读课程编码
    @Default('') String courseCode,

    /// 就读年级编码
    @Default('') String gradeCode,

    /// 就读班级编码
    @Default('') String classCode,

    /// 学年学期编码
    @Default('') String yearTermCode,

    /// 内容类型 1 => 文字 2 => 图片
    @Default(0) int contentType,

    /// 开始日期
    @SimpleDateTimeJsonConverter() DateTime? startDate,

    /// 结束日期
    @SimpleDateTimeJsonConverter() DateTime? endDate,

    /// 周目标
    @JsonKey(name: 'detailList')
    @Default([])
    List<WeekPlanTargetModel> targetList,

    /// 周计划
    @JsonKey(name: 'itemList') @Default([]) List<WeekPlanInfoModel> infoList,
  }) = _WeekPlanModel;

  bool get validate => contentType != 0;
  bool get isPlainText => contentType == 1;
  bool get isPicture => contentType == 2;
  bool get isEmpty => planCode == null;

  factory WeekPlanModel.empty() => const WeekPlanModel();

  factory WeekPlanModel.fromJson(Map<String, Object?> json) =>
      _$WeekPlanModelFromJson(json);
}
