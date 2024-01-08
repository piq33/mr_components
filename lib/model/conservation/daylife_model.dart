import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/int2bool_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daylife_model.freezed.dart';
part 'daylife_model.g.dart';

enum InputType {
  // 未知
  @JsonValue('unknown')
  unknown,
  // 单选
  @JsonValue('radio')
  radio,
  // 多选
  @JsonValue('select')
  select,
  // 填空
  @JsonValue('fillin')
  fillIn,
  // 上传
  @JsonValue('upload')
  upload,
  // 评价
  @JsonValue('evaluate')
  evaluate,
  // 计数
  @JsonValue('calculate')
  calculate,
  // 计量
  @JsonValue('metering')
  metering,
  // 记录
  @JsonValue('record')
  record,
}

/// 计数类型
@freezed
class CalculateModel with _$CalculateModel {
  const CalculateModel._();
  const factory CalculateModel({
    /// 计数名称
    @JsonKey(name: 'calculateName') @Default('') String name,

    /// 展示签名
    @Default(false) bool showSign,
  }) = _CalculateModel;

  factory CalculateModel.fromJson(Map<String, Object?> json) =>
      _$CalculateModelFromJson(json);
}

/// 计量类型
@freezed
class MeteringModel with _$MeteringModel {
  const MeteringModel._();
  const factory MeteringModel({
    /// 最小值
    @JsonKey(name: 'minValue') @Default(0) double min,

    /// 最大值
    @JsonKey(name: 'maxValue') @Default(0) double max,

    /// 展示签名
    @Default(false) bool showSign,

    /// 计量名称
    @JsonKey(name: 'meteringName') @Default('') String name,

    /// 计量单位
    @JsonKey(name: 'meteringUnit') @Default('') String unit,
  }) = _MeteringModel;

  factory MeteringModel.fromJson(Map<String, Object?> json) =>
      _$MeteringModelFromJson(json);
}

/// 单选 多选类型
@freezed
class ChoiceModel with _$ChoiceModel {
  const ChoiceModel._();
  const factory ChoiceModel({
    /// 选项内容
    @Default('') String content,

    /// 是否默认
    @Default(false) bool isDefault,

    /// 家长端展示
    @Default('') String parentShow,

    /// 是否展示填空
    @Default(false) bool showBlank,
  }) = _ChoiceModel;

  String get display => parentShow.isNotEmpty ? parentShow : content;

  factory ChoiceModel.fromJson(Map<String, Object?> json) =>
      _$ChoiceModelFromJson(json);
}

/// 记录类型
@freezed
class RecordModel with _$RecordModel {
  const RecordModel._();
  const factory RecordModel({
    /// 记录名称
    @Default('') String recordName,

    /// 展示签名
    @Default(false) bool showSign,
  }) = _RecordModel;

  factory RecordModel.fromJson(Map<String, Object?> json) =>
      _$RecordModelFromJson(json);
}

/// 计数类型填写结果
@freezed
class CalculateResultModel with _$CalculateResultModel {
  const CalculateResultModel._();
  const factory CalculateResultModel({
    /// 填写时间
    @DateTimeJsonConverter() DateTime? fillTime,

    /// 签名图片地址 适用于计数、计量、记录这三种类型的才有值
    String? signUrl,
  }) = _CalculateResultModel;

  factory CalculateResultModel.fromJson(Map<String, Object?> json) =>
      _$CalculateResultModelFromJson(json);
}

/// 评价类型填写结果
@freezed
class EvaluateResultModel with _$EvaluateResultModel {
  const EvaluateResultModel._();
  const factory EvaluateResultModel({
    /// 评价评分
    double? score,
  }) = _EvaluateResultModel;

  factory EvaluateResultModel.fromJson(Map<String, Object?> json) =>
      _$EvaluateResultModelFromJson(json);
}

/// 填空类型填写结果
@freezed
class FillinResultModel with _$FillinResultModel {
  const FillinResultModel._();
  const factory FillinResultModel({
    /// 填写的内容
    String? content,
  }) = _FillinResultModel;

  factory FillinResultModel.fromJson(Map<String, Object?> json) =>
      _$FillinResultModelFromJson(json);
}

/// 计量类型填写结果
@freezed
class MeteringResultModel with _$MeteringResultModel {
  const MeteringResultModel._();
  const factory MeteringResultModel({
    /// 填写时间
    @DateTimeJsonConverter() DateTime? fillTime,

    /// 计量填写数值
    @JsonKey(name: 'meteringValue') double? value,

    /// 签名图片地址
    String? signUrl,
  }) = _MeteringResultModel;

  factory MeteringResultModel.fromJson(Map<String, Object?> json) =>
      _$MeteringResultModelFromJson(json);
}

/// 单选 多选类型填写结果
@freezed
class ChoiceResultModel with _$ChoiceResultModel {
  const ChoiceResultModel._();
  const factory ChoiceResultModel({
    /// 展示内容
    @Default('') String content,

    /// 填空内容
    @JsonKey(name: 'showBlankValue') @Default('') String inputValue,
  }) = _ChoiceResultModel;

  String get display => inputValue.isNotEmpty ? inputValue : content;

  factory ChoiceResultModel.fromJson(Map<String, Object?> json) =>
      _$ChoiceResultModelFromJson(json);
}

/// 记录类型填写结果
@freezed
class RecordResultModel with _$RecordResultModel {
  const RecordResultModel._();
  const factory RecordResultModel({
    /// 展示内容
    String? content,

    /// 签名图片地址
    String? signUrl,

    /// 填写时间
    @DateTimeJsonConverter() DateTime? fillTime,
  }) = _RecordResultModel;

  factory RecordResultModel.fromJson(Map<String, Object?> json) =>
      _$RecordResultModelFromJson(json);
}

/// 上传结果
@freezed
class UploadResultModel with _$UploadResultModel {
  const UploadResultModel._();
  const factory UploadResultModel({
    /// 图片地址
    @JsonKey(name: 'picUrls') @Default([]) List<String> pictures,
  }) = _UploadResultModel;

  factory UploadResultModel.fromJson(Map<String, Object?> json) =>
      _$UploadResultModelFromJson(json);
}

@freezed
class ConservationInputModel with _$ConservationInputModel {
  const ConservationInputModel._();
  const factory ConservationInputModel({
    required int id,

    /// 保育项名称
    @JsonKey(name: 'itemName') @Default('') String name,

    /// 保育项类型
    @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
    @Default(InputType.unknown)
    InputType type,

    /// 计数类型
    @JsonKey(name: 'calculateDef') CalculateModel? calculate,

    /// 计量类型
    @JsonKey(name: 'meteringDef') MeteringModel? metering,

    /// 单选 多选类型
    @JsonKey(name: 'radioOrSelectDefs') @Default([]) List<ChoiceModel> choice,

    /// 记录类型
    @JsonKey(name: 'recordDef') RecordModel? record,

    /// 计数结果
    @Default([]) List<CalculateResultModel> calculateResults,

    /// 评价结果
    EvaluateResultModel? evaluateResult,

    /// 填空结果
    FillinResultModel? fillinResult,

    /// 计量结果
    @Default([]) List<MeteringResultModel> meteringResults,

    /// 单选结果
    @JsonKey(name: 'radioResult') ChoiceResultModel? radioResult,

    /// 多选结果
    @Default([]) List<ChoiceResultModel> selectResults,

    /// 记录结果
    @Default([]) List<RecordResultModel> recordResults,

    /// 上传结果
    @JsonKey(name: 'uploadResult') UploadResultModel? uploadResult,
  }) = _ConservationInputModel;

  factory ConservationInputModel.fromJson(Map<String, Object?> json) =>
      _$ConservationInputModelFromJson(json);
}

@freezed
class SimpleDayLifeReq with _$SimpleDayLifeReq {
  const SimpleDayLifeReq._();
  const factory SimpleDayLifeReq({
    /// 学号
    required String studentCode,

    /// 开始日期
    @SimpleDateTimeJsonConverter() DateTime? startDate,

    /// 结束日期
    @SimpleDateTimeJsonConverter() DateTime? endDate,
  }) = _SimpleDayLifeReq;

  factory SimpleDayLifeReq.fromJson(Map<String, Object?> json) =>
      _$SimpleDayLifeReqFromJson(json);
}

@freezed
class SimpleDayLifeModel with _$SimpleDayLifeModel {
  const SimpleDayLifeModel._();
  const factory SimpleDayLifeModel({
    @JsonKey(name: 'dateStr') @SimpleDateTimeJsonConverter() DateTime? date,

    /// 入园天数
    @JsonKey(name: 'inSchoolDays') @Default(0) int days,
  }) = _SimpleDayLifeModel;

  factory SimpleDayLifeModel.fromJson(Map<String, Object?> json) =>
      _$SimpleDayLifeModelFromJson(json);
}

@freezed
class ReportModel with _$ReportModel {
  const ReportModel._();
  const factory ReportModel({
    required int id,

    /// 保育模块名称
    @JsonKey(name: 'conservationName') @Default('') String name,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 排序
    @Default(0) int sortNo,

    ///	业务状态
    int? status,

    /// 保育问卷选项及结果
    @JsonKey(name: 'itemAndResults')
    @Default([])
    List<ConservationInputModel> questionnaires,

    /// 发布时间
    @DateTimeJsonConverter() DateTime? publishTime,

    /// 创建人
    String? createUser,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, Object?> json) =>
      _$ReportModelFromJson(json);
}

@freezed
class ReportReq with _$ReportReq {
  const ReportReq._();
  const factory ReportReq({
    required String studentCode,
    @SimpleDateTimeJsonConverter() @JsonKey(name: 'dateStr') DateTime? date,
  }) = _ReportReq;

  factory ReportReq.fromJson(Map<String, Object?> json) =>
      _$ReportReqFromJson(json);
}

@freezed
class ConservationOtherParam with _$ConservationOtherParam {
  const ConservationOtherParam._();
  const factory ConservationOtherParam({
    /// 指定的保育日期
    @Default('') String date,
  }) = _ConservationOtherParam;

  factory ConservationOtherParam.fromJson(Map<String, Object?> json) =>
      _$ConservationOtherParamFromJson(json);
}
