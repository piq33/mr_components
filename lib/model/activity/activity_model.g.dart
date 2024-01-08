// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityReqImpl _$$ActivityReqImplFromJson(Map<String, dynamic> json) =>
    _$ActivityReqImpl(
      queryType: json['queryType'] as int,
      schoolCodes: (json['schoolCodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ActivityReqImplToJson(_$ActivityReqImpl instance) =>
    <String, dynamic>{
      'queryType': instance.queryType,
      'schoolCodes': instance.schoolCodes,
    };

_$ActivityModelImpl _$$ActivityModelImplFromJson(Map<String, dynamic> json) =>
    _$ActivityModelImpl(
      applyId: _$JsonConverterFromJson<String, int>(
          json['activityApplyId'], const String2IntJsonConverter().fromJson),
      id: const String2IntJsonConverter()
          .fromJson(json['activityId'] as String),
      name: json['activityName'] as String? ?? '',
      schoolId:
          const String2IntJsonConverter().fromJson(json['schoolId'] as String),
      schoolCode: json['schoolCode'] as String?,
      schoolName: json['schoolName'] as String? ?? '',
      schoolEngName: json['schoolEngName'] as String? ?? '',
      status: json['status'] == null
          ? ActivityStatus.unknown
          : const ActivityStatusJsonConverter()
              .fromJson(json['status'] as String),
      applyStatus: json['applyStatus'] == null
          ? ApplyStatus.unknown
          : const ApplyStatusJsonConverter()
              .fromJson(json['applyStatus'] as String),
      applyCount: json['applyCount'] == null
          ? 0
          : const String2IntJsonConverter()
              .fromJson(json['applyCount'] as String),
      activityStartDate: _$JsonConverterFromJson<String, DateTime?>(
          json['activityStartDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      activityEndDate: _$JsonConverterFromJson<String, DateTime?>(
          json['activityEndDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      applyStartDate: _$JsonConverterFromJson<String, DateTime?>(
          json['applyStartDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      applyEndDate: _$JsonConverterFromJson<String, DateTime?>(
          json['applyEndDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      cover: json['pictureAddress'] as String?,
      link: json['activityLink'] as String?,
      tag: json['tag'] as String?,
      content: json['activityContent'] as String? ?? '',
    );

Map<String, dynamic> _$$ActivityModelImplToJson(_$ActivityModelImpl instance) =>
    <String, dynamic>{
      'activityApplyId': _$JsonConverterToJson<String, int>(
          instance.applyId, const String2IntJsonConverter().toJson),
      'activityId': const String2IntJsonConverter().toJson(instance.id),
      'activityName': instance.name,
      'schoolId': const String2IntJsonConverter().toJson(instance.schoolId),
      'schoolCode': instance.schoolCode,
      'schoolName': instance.schoolName,
      'schoolEngName': instance.schoolEngName,
      'status': const ActivityStatusJsonConverter().toJson(instance.status),
      'applyStatus':
          const ApplyStatusJsonConverter().toJson(instance.applyStatus),
      'applyCount': const String2IntJsonConverter().toJson(instance.applyCount),
      'activityStartDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.activityStartDate),
      'activityEndDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.activityEndDate),
      'applyStartDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.applyStartDate),
      'applyEndDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.applyEndDate),
      'pictureAddress': instance.cover,
      'activityLink': instance.link,
      'tag': instance.tag,
      'activityContent': instance.content,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$SignActivityQrCodeModelImpl _$$SignActivityQrCodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignActivityQrCodeModelImpl(
      activityApplyId: json['activityApplyId'] as String,
      tag: json['tag'] as String,
    );

Map<String, dynamic> _$$SignActivityQrCodeModelImplToJson(
        _$SignActivityQrCodeModelImpl instance) =>
    <String, dynamic>{
      'activityApplyId': instance.activityApplyId,
      'tag': instance.tag,
    };
