// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationCategoryModelImpl _$$NotificationCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationCategoryModelImpl(
      messageType: json['messageType'] == null
          ? MessageType.all
          : const MessageTypeJsonConverter()
              .fromJson(json['messageType'] as String),
      messageTypeName: json['messageTypeName'] as String? ?? '',
      countNum: json['countNum'] as int? ?? 0,
      hasMsg: json['hasMsgFlg'] as bool? ?? false,
      messageInfo: json['messageInfo'] == null
          ? null
          : NotificationModel.fromJson(
              json['messageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationCategoryModelImplToJson(
        _$NotificationCategoryModelImpl instance) =>
    <String, dynamic>{
      'messageType':
          const MessageTypeJsonConverter().toJson(instance.messageType),
      'messageTypeName': instance.messageTypeName,
      'countNum': instance.countNum,
      'hasMsgFlg': instance.hasMsg,
      'messageInfo': instance.messageInfo,
    };

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      bizId: _$JsonConverterFromJson<String, int?>(
          json['bizId'], const String2IntNullableJsonConverter().fromJson),
      bizType: json['bizType'] as String? ?? '',
      sendCid: json['sendCid'] as String?,
      messageId: json['messageId'] as int?,
      messageType: json['messageType'] == null
          ? MessageType.all
          : const MessageTypeJsonConverter()
              .fromJson(json['messageType'] as String),
      title: json['title'] as String? ?? '',
      image: json['imaUrl'] as String?,
      content: json['content'] as String? ?? '',
      otherParam: json['otherParam'] as String? ?? '',
      range: json['pushType'] == null
          ? PushRange.unknown
          : const PushRangeJsonConverter().fromJson(json['pushType'] as String),
      readFlag: json['readFlag'] as bool? ?? false,
      readTime: _$JsonConverterFromJson<String, DateTime?>(
          json['readTime'], const DateTimeJsonConverter().fromJson),
      senderCode: json['senderCode'] as String? ?? '',
      scene: json['sceneCode'] == null
          ? PushCode.unknown
          : const SceneJsonConverter().fromJson(json['sceneCode'] as String),
      schoolCode: json['schoolCode'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      status:
          $enumDecodeNullable(_$NotificationStatusEnumMap, json['status']) ??
              NotificationStatus.enable,
      urgentType:
          $enumDecodeNullable(_$UrgentTypeEnumMap, json['urgentType']) ??
              UrgentType.medium,
      author: json['attribute'] as String? ?? '',
      createUser: json['createUser'] as String? ?? '',
      createDate: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateUser: json['updateUser'] as String? ?? '',
      updateDate: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'bizId': const String2IntNullableJsonConverter().toJson(instance.bizId),
      'bizType': instance.bizType,
      'sendCid': instance.sendCid,
      'messageId': instance.messageId,
      'messageType':
          const MessageTypeJsonConverter().toJson(instance.messageType),
      'title': instance.title,
      'imaUrl': instance.image,
      'content': instance.content,
      'otherParam': instance.otherParam,
      'pushType': const PushRangeJsonConverter().toJson(instance.range),
      'readFlag': instance.readFlag,
      'readTime': const DateTimeJsonConverter().toJson(instance.readTime),
      'senderCode': instance.senderCode,
      'sceneCode': const SceneJsonConverter().toJson(instance.scene),
      'schoolCode': instance.schoolCode,
      'classCode': instance.classCode,
      'status': _$NotificationStatusEnumMap[instance.status]!,
      'urgentType': _$UrgentTypeEnumMap[instance.urgentType]!,
      'attribute': instance.author,
      'createUser': instance.createUser,
      'createTime': const DateTimeJsonConverter().toJson(instance.createDate),
      'updateUser': instance.updateUser,
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateDate),
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$NotificationStatusEnumMap = {
  NotificationStatus.none: 0,
  NotificationStatus.enable: 1,
  NotificationStatus.disable: 2,
};

const _$UrgentTypeEnumMap = {
  UrgentType.none: '',
  UrgentType.high: '1',
  UrgentType.medium: '2',
  UrgentType.low: '3',
};

_$NotificationSubmitReqImpl _$$NotificationSubmitReqImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSubmitReqImpl(
      noticeId: json['noticeId'] as String,
      studentCode: json['studentCode'] as String,
      status: json['status'] as int,
      confirm: json['confirm'] as int,
      signImg: json['signImg'] as String?,
      readTime: json['readTime'] as String,
    );

Map<String, dynamic> _$$NotificationSubmitReqImplToJson(
        _$NotificationSubmitReqImpl instance) =>
    <String, dynamic>{
      'noticeId': instance.noticeId,
      'studentCode': instance.studentCode,
      'status': instance.status,
      'confirm': instance.confirm,
      'signImg': instance.signImg,
      'readTime': instance.readTime,
    };

_$NotificationConfirmReqImpl _$$NotificationConfirmReqImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationConfirmReqImpl(
      studentCode: json['studentCode'] as String,
      noticeId: json['noticeId'] as String,
    );

Map<String, dynamic> _$$NotificationConfirmReqImplToJson(
        _$NotificationConfirmReqImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
      'noticeId': instance.noticeId,
    };

_$NotificationConfirmModelImpl _$$NotificationConfirmModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationConfirmModelImpl(
      noticeId: json['noticeId'] as int?,
      targetId: json['targetId'] as int?,
      studentName: json['stuName'] as String?,
      periodName: json['periodName'] as String?,
      courseName: json['courseName'] as String?,
      gradeName: json['gradeName'] as String?,
      className: json['className'] as String?,
      studentCode: json['stuNum'] as String?,
      readStatus: $enumDecodeNullable(
              _$NotificationReadStatusEnumMap, json['status'],
              unknownValue: NotificationReadStatus.unread) ??
          NotificationReadStatus.unread,
      confirmStatus: $enumDecodeNullable(
              _$NotificationSignStatusEnumMap, json['confirm'],
              unknownValue: NotificationSignStatus.unsigned) ??
          NotificationSignStatus.unsigned,
      signImg: json['signImg'] as String?,
      readTime: _$JsonConverterFromJson<String, DateTime?>(
          json['readTime'], const DateTimeJsonConverter().fromJson),
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$NotificationConfirmModelImplToJson(
        _$NotificationConfirmModelImpl instance) =>
    <String, dynamic>{
      'noticeId': instance.noticeId,
      'targetId': instance.targetId,
      'stuName': instance.studentName,
      'periodName': instance.periodName,
      'courseName': instance.courseName,
      'gradeName': instance.gradeName,
      'className': instance.className,
      'stuNum': instance.studentCode,
      'status': _$NotificationReadStatusEnumMap[instance.readStatus]!,
      'confirm': _$NotificationSignStatusEnumMap[instance.confirmStatus]!,
      'signImg': instance.signImg,
      'readTime': const DateTimeJsonConverter().toJson(instance.readTime),
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

const _$NotificationReadStatusEnumMap = {
  NotificationReadStatus.unread: 0,
  NotificationReadStatus.read: 1,
};

const _$NotificationSignStatusEnumMap = {
  NotificationSignStatus.unsigned: 0,
  NotificationSignStatus.signed: 1,
  NotificationSignStatus.resigned: 2,
};

_$NotificationOtherParamImpl _$$NotificationOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationOtherParamImpl(
      needConfirm: json['needConfirm'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['needConfirm'] as String),
    );

Map<String, dynamic> _$$NotificationOtherParamImplToJson(
        _$NotificationOtherParamImpl instance) =>
    <String, dynamic>{
      'needConfirm':
          const String2BoolJsonConverter().toJson(instance.needConfirm),
    };
