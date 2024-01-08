// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoModelImpl _$$TodoModelImplFromJson(Map<String, dynamic> json) =>
    _$TodoModelImpl(
      bizId: json['bizId'] as String? ?? '',
      bizType: json['bizType'] as String? ?? '',
      sendCid: json['sendCid'] as String? ?? '',
      messageId: json['messageId'] as int?,
      messageType: json['messageType'] as String? ?? '',
      title: json['title'] as String? ?? '',
      image: json['imaUrl'] as String?,
      content: json['content'] as String? ?? '',
      notificationType: json['noticeType'] == null
          ? PushType.unknown
          : const PushTypeJsonConverter()
              .fromJson(json['noticeType'] as String),
      otherParam: json['otherParam'] as String? ?? '',
      range: json['pushType'] == null
          ? PushRange.unknown
          : const PushRangeJsonConverter().fromJson(json['pushType'] as String),
      readFlag: json['readFlag'] as bool? ?? false,
      readTime: _$JsonConverterFromJson<String, DateTime?>(
          json['readTime'], const SimpleDateTimeJsonConverter().fromJson),
      senderCode: json['senderCode'] as String? ?? '',
      scene: json['sceneCode'] == null
          ? PushCode.unknown
          : const SceneJsonConverter().fromJson(json['sceneCode'] as String),
      schoolCode: json['schoolCode'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      status: $enumDecodeNullable(_$TodoStatusEnumMap, json['status']) ??
          TodoStatus.enable,
      urgentType:
          $enumDecodeNullable(_$UrgentTypeEnumMap, json['urgentType']) ??
              UrgentType.medium,
      createUser: json['createUser'] as String? ?? '',
      createDate: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const SimpleDateTimeJsonConverter().fromJson),
      updateUser: json['updateUser'] as String? ?? '',
      updateDate: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const SimpleDateTimeJsonConverter().fromJson),
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
    );

Map<String, dynamic> _$$TodoModelImplToJson(_$TodoModelImpl instance) =>
    <String, dynamic>{
      'bizId': instance.bizId,
      'bizType': instance.bizType,
      'sendCid': instance.sendCid,
      'messageId': instance.messageId,
      'messageType': instance.messageType,
      'title': instance.title,
      'imaUrl': instance.image,
      'content': instance.content,
      'noticeType':
          const PushTypeJsonConverter().toJson(instance.notificationType),
      'otherParam': instance.otherParam,
      'pushType': const PushRangeJsonConverter().toJson(instance.range),
      'readFlag': instance.readFlag,
      'readTime': const SimpleDateTimeJsonConverter().toJson(instance.readTime),
      'senderCode': instance.senderCode,
      'sceneCode': const SceneJsonConverter().toJson(instance.scene),
      'schoolCode': instance.schoolCode,
      'classCode': instance.classCode,
      'status': _$TodoStatusEnumMap[instance.status]!,
      'urgentType': _$UrgentTypeEnumMap[instance.urgentType]!,
      'createUser': instance.createUser,
      'createTime':
          const SimpleDateTimeJsonConverter().toJson(instance.createDate),
      'updateUser': instance.updateUser,
      'updateTime':
          const SimpleDateTimeJsonConverter().toJson(instance.updateDate),
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$TodoStatusEnumMap = {
  TodoStatus.enable: 1,
  TodoStatus.disable: 2,
};

const _$UrgentTypeEnumMap = {
  UrgentType.high: '1',
  UrgentType.medium: '2',
  UrgentType.low: '3',
};

_$TodoOtherParamImpl _$$TodoOtherParamImplFromJson(Map<String, dynamic> json) =>
    _$TodoOtherParamImpl(
      needConfirm: json['needConfirm'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['needConfirm'] as String),
    );

Map<String, dynamic> _$$TodoOtherParamImplToJson(
        _$TodoOtherParamImpl instance) =>
    <String, dynamic>{
      'needConfirm':
          const String2BoolJsonConverter().toJson(instance.needConfirm),
    };
