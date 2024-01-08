// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentReqImpl _$$CommentReqImplFromJson(Map<String, dynamic> json) =>
    _$CommentReqImpl(
      knowledgeId: json['knowledgeId'] as String,
      commentContent: json['commentContent'] as String,
      parentId: json['parentId'] as String?,
    );

Map<String, dynamic> _$$CommentReqImplToJson(_$CommentReqImpl instance) =>
    <String, dynamic>{
      'knowledgeId': instance.knowledgeId,
      'commentContent': instance.commentContent,
      'parentId': instance.parentId,
    };

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      commentId: json['commentId'] as String,
      commentContent: json['commentContent'] as String? ?? '',
      commentPath: json['commentPath'] as String?,
      avatar: json['avatar'] as String?,
      commentTime: _$JsonConverterFromJson<String, DateTime?>(
          json['commentTime'], const DateTimeJsonConverter().fromJson),
      commentType: json['commentType'] == null
          ? CommentType.unknown
          : const CommentTypeJsonConverter()
              .fromJson(json['commentType'] as int),
      contactPhone: json['contactPhone'] as String?,
      selfLike: json['ifSelfLike'] as bool? ?? false,
      selfLikeNum: json['selfLikeNum'] as int? ?? 0,
      likeNum: json['likeNum'] as int? ?? 0,
      isDeleted: json['isDeleted'] == null
          ? false
          : const Int2BoolJsonConverter().fromJson(json['isDeleted'] as int),
      knowledgeId: json['knowledgeId'] as String?,
      parentId: json['parentId'] as String?,
      topParentId: json['topParentId'] as int?,
      replyUserCode: json['replyToUserCode'] as String?,
      replyUserId: json['replyToUserId'] as int?,
      replyUserName: json['replyToUserName'] as String? ?? '',
      replyAvatar: json['replyAvatar'] as String?,
      replyUserType: json['replyToUserType'] == null
          ? CommentUserType.unknown
          : const CommentUserTypeJsonConverter()
              .fromJson(json['replyToUserType'] as int),
      schoolCode: json['schoolCode'] as String?,
      userCode: json['userCode'] as String?,
      userId: json['userId'] as int?,
      userName: json['userName'] as String? ?? '',
      userType: json['userType'] == null
          ? CommentUserType.unknown
          : const CommentUserTypeJsonConverter()
              .fromJson(json['userType'] as int),
      status: json['status'] == null
          ? Status.unknown
          : const StatusJsonConverter().fromJson(json['status'] as int),
      hasReply: json['hasChildFlag'] as bool? ?? false,
      reply: (json['childList'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      createTime: _$JsonConverterFromJson<String, DateTime?>(
          json['createTime'], const DateTimeJsonConverter().fromJson),
      updateTime: _$JsonConverterFromJson<String, DateTime?>(
          json['updateTime'], const DateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'commentContent': instance.commentContent,
      'commentPath': instance.commentPath,
      'avatar': instance.avatar,
      'commentTime': const DateTimeJsonConverter().toJson(instance.commentTime),
      'commentType':
          const CommentTypeJsonConverter().toJson(instance.commentType),
      'contactPhone': instance.contactPhone,
      'ifSelfLike': instance.selfLike,
      'selfLikeNum': instance.selfLikeNum,
      'likeNum': instance.likeNum,
      'isDeleted': const Int2BoolJsonConverter().toJson(instance.isDeleted),
      'knowledgeId': instance.knowledgeId,
      'parentId': instance.parentId,
      'topParentId': instance.topParentId,
      'replyToUserCode': instance.replyUserCode,
      'replyToUserId': instance.replyUserId,
      'replyToUserName': instance.replyUserName,
      'replyAvatar': instance.replyAvatar,
      'replyToUserType':
          const CommentUserTypeJsonConverter().toJson(instance.replyUserType),
      'schoolCode': instance.schoolCode,
      'userCode': instance.userCode,
      'userId': instance.userId,
      'userName': instance.userName,
      'userType':
          const CommentUserTypeJsonConverter().toJson(instance.userType),
      'status': const StatusJsonConverter().toJson(instance.status),
      'hasChildFlag': instance.hasReply,
      'childList': instance.reply,
      'createTime': const DateTimeJsonConverter().toJson(instance.createTime),
      'updateTime': const DateTimeJsonConverter().toJson(instance.updateTime),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
