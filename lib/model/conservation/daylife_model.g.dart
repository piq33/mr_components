// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daylife_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculateModelImpl _$$CalculateModelImplFromJson(Map<String, dynamic> json) =>
    _$CalculateModelImpl(
      name: json['calculateName'] as String? ?? '',
      showSign: json['showSign'] as bool? ?? false,
    );

Map<String, dynamic> _$$CalculateModelImplToJson(
        _$CalculateModelImpl instance) =>
    <String, dynamic>{
      'calculateName': instance.name,
      'showSign': instance.showSign,
    };

_$MeteringModelImpl _$$MeteringModelImplFromJson(Map<String, dynamic> json) =>
    _$MeteringModelImpl(
      min: (json['minValue'] as num?)?.toDouble() ?? 0,
      max: (json['maxValue'] as num?)?.toDouble() ?? 0,
      showSign: json['showSign'] as bool? ?? false,
      name: json['meteringName'] as String? ?? '',
      unit: json['meteringUnit'] as String? ?? '',
    );

Map<String, dynamic> _$$MeteringModelImplToJson(_$MeteringModelImpl instance) =>
    <String, dynamic>{
      'minValue': instance.min,
      'maxValue': instance.max,
      'showSign': instance.showSign,
      'meteringName': instance.name,
      'meteringUnit': instance.unit,
    };

_$ChoiceModelImpl _$$ChoiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceModelImpl(
      content: json['content'] as String? ?? '',
      isDefault: json['isDefault'] as bool? ?? false,
      parentShow: json['parentShow'] as String? ?? '',
      showBlank: json['showBlank'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChoiceModelImplToJson(_$ChoiceModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'isDefault': instance.isDefault,
      'parentShow': instance.parentShow,
      'showBlank': instance.showBlank,
    };

_$RecordModelImpl _$$RecordModelImplFromJson(Map<String, dynamic> json) =>
    _$RecordModelImpl(
      recordName: json['recordName'] as String? ?? '',
      showSign: json['showSign'] as bool? ?? false,
    );

Map<String, dynamic> _$$RecordModelImplToJson(_$RecordModelImpl instance) =>
    <String, dynamic>{
      'recordName': instance.recordName,
      'showSign': instance.showSign,
    };

_$CalculateResultModelImpl _$$CalculateResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculateResultModelImpl(
      fillTime: _$JsonConverterFromJson<String, DateTime?>(
          json['fillTime'], const DateTimeJsonConverter().fromJson),
      signUrl: json['signUrl'] as String?,
    );

Map<String, dynamic> _$$CalculateResultModelImplToJson(
        _$CalculateResultModelImpl instance) =>
    <String, dynamic>{
      'fillTime': const DateTimeJsonConverter().toJson(instance.fillTime),
      'signUrl': instance.signUrl,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$EvaluateResultModelImpl _$$EvaluateResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EvaluateResultModelImpl(
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$EvaluateResultModelImplToJson(
        _$EvaluateResultModelImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
    };

_$FillinResultModelImpl _$$FillinResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FillinResultModelImpl(
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$FillinResultModelImplToJson(
        _$FillinResultModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_$MeteringResultModelImpl _$$MeteringResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeteringResultModelImpl(
      fillTime: _$JsonConverterFromJson<String, DateTime?>(
          json['fillTime'], const DateTimeJsonConverter().fromJson),
      value: (json['meteringValue'] as num?)?.toDouble(),
      signUrl: json['signUrl'] as String?,
    );

Map<String, dynamic> _$$MeteringResultModelImplToJson(
        _$MeteringResultModelImpl instance) =>
    <String, dynamic>{
      'fillTime': const DateTimeJsonConverter().toJson(instance.fillTime),
      'meteringValue': instance.value,
      'signUrl': instance.signUrl,
    };

_$ChoiceResultModelImpl _$$ChoiceResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceResultModelImpl(
      content: json['content'] as String? ?? '',
      inputValue: json['showBlankValue'] as String? ?? '',
    );

Map<String, dynamic> _$$ChoiceResultModelImplToJson(
        _$ChoiceResultModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'showBlankValue': instance.inputValue,
    };

_$RecordResultModelImpl _$$RecordResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordResultModelImpl(
      content: json['content'] as String?,
      signUrl: json['signUrl'] as String?,
      fillTime: _$JsonConverterFromJson<String, DateTime?>(
          json['fillTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$RecordResultModelImplToJson(
        _$RecordResultModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'signUrl': instance.signUrl,
      'fillTime': const DateTimeJsonConverter().toJson(instance.fillTime),
    };

_$UploadResultModelImpl _$$UploadResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadResultModelImpl(
      pictures: (json['picUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UploadResultModelImplToJson(
        _$UploadResultModelImpl instance) =>
    <String, dynamic>{
      'picUrls': instance.pictures,
    };

_$ConservationInputModelImpl _$$ConservationInputModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConservationInputModelImpl(
      id: json['id'] as int,
      name: json['itemName'] as String? ?? '',
      type: $enumDecodeNullable(_$InputTypeEnumMap, json['itemType'],
              unknownValue: InputType.unknown) ??
          InputType.unknown,
      calculate: json['calculateDef'] == null
          ? null
          : CalculateModel.fromJson(
              json['calculateDef'] as Map<String, dynamic>),
      metering: json['meteringDef'] == null
          ? null
          : MeteringModel.fromJson(json['meteringDef'] as Map<String, dynamic>),
      choice: (json['radioOrSelectDefs'] as List<dynamic>?)
              ?.map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      record: json['recordDef'] == null
          ? null
          : RecordModel.fromJson(json['recordDef'] as Map<String, dynamic>),
      calculateResults: (json['calculateResults'] as List<dynamic>?)
              ?.map((e) =>
                  CalculateResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      evaluateResult: json['evaluateResult'] == null
          ? null
          : EvaluateResultModel.fromJson(
              json['evaluateResult'] as Map<String, dynamic>),
      fillinResult: json['fillinResult'] == null
          ? null
          : FillinResultModel.fromJson(
              json['fillinResult'] as Map<String, dynamic>),
      meteringResults: (json['meteringResults'] as List<dynamic>?)
              ?.map((e) =>
                  MeteringResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      radioResult: json['radioResult'] == null
          ? null
          : ChoiceResultModel.fromJson(
              json['radioResult'] as Map<String, dynamic>),
      selectResults: (json['selectResults'] as List<dynamic>?)
              ?.map(
                  (e) => ChoiceResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      recordResults: (json['recordResults'] as List<dynamic>?)
              ?.map(
                  (e) => RecordResultModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      uploadResult: json['uploadResult'] == null
          ? null
          : UploadResultModel.fromJson(
              json['uploadResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConservationInputModelImplToJson(
        _$ConservationInputModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'itemName': instance.name,
      'itemType': _$InputTypeEnumMap[instance.type]!,
      'calculateDef': instance.calculate,
      'meteringDef': instance.metering,
      'radioOrSelectDefs': instance.choice,
      'recordDef': instance.record,
      'calculateResults': instance.calculateResults,
      'evaluateResult': instance.evaluateResult,
      'fillinResult': instance.fillinResult,
      'meteringResults': instance.meteringResults,
      'radioResult': instance.radioResult,
      'selectResults': instance.selectResults,
      'recordResults': instance.recordResults,
      'uploadResult': instance.uploadResult,
    };

const _$InputTypeEnumMap = {
  InputType.unknown: 'unknown',
  InputType.radio: 'radio',
  InputType.select: 'select',
  InputType.fillIn: 'fillin',
  InputType.upload: 'upload',
  InputType.evaluate: 'evaluate',
  InputType.calculate: 'calculate',
  InputType.metering: 'metering',
  InputType.record: 'record',
};

_$SimpleDayLifeReqImpl _$$SimpleDayLifeReqImplFromJson(
        Map<String, dynamic> json) =>
    _$SimpleDayLifeReqImpl(
      studentCode: json['studentCode'] as String,
      startDate: _$JsonConverterFromJson<String, DateTime?>(
          json['startDate'], const SimpleDateTimeJsonConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime?>(
          json['endDate'], const SimpleDateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$SimpleDayLifeReqImplToJson(
        _$SimpleDayLifeReqImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
      'startDate':
          const SimpleDateTimeJsonConverter().toJson(instance.startDate),
      'endDate': const SimpleDateTimeJsonConverter().toJson(instance.endDate),
    };

_$SimpleDayLifeModelImpl _$$SimpleDayLifeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SimpleDayLifeModelImpl(
      date: _$JsonConverterFromJson<String, DateTime?>(
          json['dateStr'], const SimpleDateTimeJsonConverter().fromJson),
      days: json['inSchoolDays'] as int? ?? 0,
    );

Map<String, dynamic> _$$SimpleDayLifeModelImplToJson(
        _$SimpleDayLifeModelImpl instance) =>
    <String, dynamic>{
      'dateStr': const SimpleDateTimeJsonConverter().toJson(instance.date),
      'inSchoolDays': instance.days,
    };

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelImpl(
      id: json['id'] as int,
      name: json['conservationName'] as String? ?? '',
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      sortNo: json['sortNo'] as int? ?? 0,
      status: json['status'] as int?,
      questionnaires: (json['itemAndResults'] as List<dynamic>?)
              ?.map((e) =>
                  ConservationInputModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      publishTime: _$JsonConverterFromJson<String, DateTime?>(
          json['publishTime'], const DateTimeJsonConverter().fromJson),
      createUser: json['createUser'] as String?,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conservationName': instance.name,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'sortNo': instance.sortNo,
      'status': instance.status,
      'itemAndResults': instance.questionnaires,
      'publishTime': const DateTimeJsonConverter().toJson(instance.publishTime),
      'createUser': instance.createUser,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
    };

_$ReportReqImpl _$$ReportReqImplFromJson(Map<String, dynamic> json) =>
    _$ReportReqImpl(
      studentCode: json['studentCode'] as String,
      date: _$JsonConverterFromJson<String, DateTime?>(
          json['dateStr'], const SimpleDateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$ReportReqImplToJson(_$ReportReqImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
      'dateStr': const SimpleDateTimeJsonConverter().toJson(instance.date),
    };

_$ConservationOtherParamImpl _$$ConservationOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$ConservationOtherParamImpl(
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$ConservationOtherParamImplToJson(
        _$ConservationOtherParamImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
    };
