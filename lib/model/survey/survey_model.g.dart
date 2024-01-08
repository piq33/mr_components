// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyTokenReqImpl _$$SurveyTokenReqImplFromJson(Map<String, dynamic> json) =>
    _$SurveyTokenReqImpl(
      ticket: json['ticket'] as String,
    );

Map<String, dynamic> _$$SurveyTokenReqImplToJson(
        _$SurveyTokenReqImpl instance) =>
    <String, dynamic>{
      'ticket': instance.ticket,
    };

_$SurveyOtherParamImpl _$$SurveyOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$SurveyOtherParamImpl(
      name: json['name'] as String? ?? '',
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SurveyOtherParamImplToJson(
        _$SurveyOtherParamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$SurveyModelImpl _$$SurveyModelImplFromJson(Map<String, dynamic> json) =>
    _$SurveyModelImpl(
      id: json['id'] as int,
      key: json['key'] as String,
      name: json['name'] as String? ?? '',
      describe: json['describe'] as String? ?? '',
      sourceType: json['sourceType'] as int?,
      sourceId: json['sourceId'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      personName: json['personName'] as String? ?? '',
      status: json['status'] == null
          ? SurveyStatus.unknown
          : const SurveyStatusJsonConverter().fromJson(json['status'] as int),
      type: json['type'] as int?,
      typeName: json['typeName'] as String? ?? '',
      publishTime: _$JsonConverterFromJson<String, DateTime?>(
          json['publishTime'], const DateTimeJsonConverter().fromJson),
      manualEndTime: _$JsonConverterFromJson<String, DateTime?>(
          json['manualEndTime'], const DateTimeJsonConverter().fromJson),
      sysEndTime: _$JsonConverterFromJson<String, DateTime?>(
          json['sysEndTime'], const DateTimeJsonConverter().fromJson),
      isRecover: json['isRecover'] as bool? ?? false,
      recoverTime: _$JsonConverterFromJson<String, DateTime?>(
          json['recoverTime'], const DateTimeJsonConverter().fromJson),
      recoverBy: json['recoverBy'] as String?,
      pcUrl: json['pcUrl'] as String?,
      wapUrl: json['wapUrl'] as String?,
      miniUrl: json['miniUrl'] as String?,
      appUrl: json['appUrl'] as String?,
      canUpdate: json['canUpdate'] as bool? ?? false,
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
      pcRead: json['pcRead'] as int? ?? 0,
      wapRead: json['wapRead'] as int? ?? 0,
      miniRead: json['miniRead'] as int? ?? 0,
      pcSubmit: json['pcSubmit'] as int? ?? 0,
      wapSubmit: json['wapSubmit'] as int? ?? 0,
      miniSubmit: json['miniSubmit'] as int? ?? 0,
      hasSubmit: json['submitStatus'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['submitStatus'] as int),
      allRead: json['allRead'] as int? ?? 0,
      allSubmit: json['allSubmit'] as int? ?? 0,
      userName: json['userName'] as String? ?? '',
    );

Map<String, dynamic> _$$SurveyModelImplToJson(_$SurveyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'name': instance.name,
      'describe': instance.describe,
      'sourceType': instance.sourceType,
      'sourceId': instance.sourceId,
      'userId': instance.userId,
      'personName': instance.personName,
      'status': const SurveyStatusJsonConverter().toJson(instance.status),
      'type': instance.type,
      'typeName': instance.typeName,
      'publishTime': const DateTimeJsonConverter().toJson(instance.publishTime),
      'manualEndTime':
          const DateTimeJsonConverter().toJson(instance.manualEndTime),
      'sysEndTime': const DateTimeJsonConverter().toJson(instance.sysEndTime),
      'isRecover': instance.isRecover,
      'recoverTime': const DateTimeJsonConverter().toJson(instance.recoverTime),
      'recoverBy': instance.recoverBy,
      'pcUrl': instance.pcUrl,
      'wapUrl': instance.wapUrl,
      'miniUrl': instance.miniUrl,
      'appUrl': instance.appUrl,
      'canUpdate': instance.canUpdate,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
      'pcRead': instance.pcRead,
      'wapRead': instance.wapRead,
      'miniRead': instance.miniRead,
      'pcSubmit': instance.pcSubmit,
      'wapSubmit': instance.wapSubmit,
      'miniSubmit': instance.miniSubmit,
      'submitStatus': const Int2BoolJsonConverter().toJson(instance.hasSubmit),
      'allRead': instance.allRead,
      'allSubmit': instance.allSubmit,
      'userName': instance.userName,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
