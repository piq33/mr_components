// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PushAliasModelImpl _$$PushAliasModelImplFromJson(Map<String, dynamic> json) =>
    _$PushAliasModelImpl(
      action: json['action'] as String? ?? '',
      error: json['error'] as String? ?? '',
      result: json['result'] as bool,
      sn: json['sn'] as String,
    );

Map<String, dynamic> _$$PushAliasModelImplToJson(
        _$PushAliasModelImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'error': instance.error,
      'result': instance.result,
      'sn': instance.sn,
    };

_$GetuiPushPayloadImpl _$$GetuiPushPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$GetuiPushPayloadImpl(
      bizId: json['bizId'] as String? ?? '',
      messageId: json['messageId'] as int?,
      pushType: json['noticeType'] == null
          ? PushType.unknown
          : const PushTypeJsonConverter()
              .fromJson(json['noticeType'] as String),
      code: json['sceneCode'] == null
          ? PushCode.unknown
          : const SceneJsonConverter().fromJson(json['sceneCode'] as String),
      title: json['title'] as String? ?? '',
      senderCode: json['senderCode'] as String? ?? '',
      content: json['content'] as String? ?? '',
      otherParam: json['otherParam'] as String? ?? '',
    );

Map<String, dynamic> _$$GetuiPushPayloadImplToJson(
        _$GetuiPushPayloadImpl instance) =>
    <String, dynamic>{
      'bizId': instance.bizId,
      'messageId': instance.messageId,
      'noticeType': const PushTypeJsonConverter().toJson(instance.pushType),
      'sceneCode': const SceneJsonConverter().toJson(instance.code),
      'title': instance.title,
      'senderCode': instance.senderCode,
      'content': instance.content,
      'otherParam': instance.otherParam,
    };
