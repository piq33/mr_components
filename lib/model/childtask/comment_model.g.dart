// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentReqImpl _$$CommentReqImplFromJson(Map<String, dynamic> json) =>
    _$CommentReqImpl(
      taskCode: json['taskCode'] as String,
      commentUserId: json['commentUserId'] as int,
      commentStudentId: json['studentIdOfCommentUser'] as int,
      replyStudentId: json['studentIdOfReplyUser'] as int?,
      commentContent: json['commentContent'] as String,
      replyCommentId: json['replyCommentId'] as int?,
      replyUserId: json['replyUserId'] as int?,
      taskCodeSubId: json['taskCodeSubId'] as int?,
    );

Map<String, dynamic> _$$CommentReqImplToJson(_$CommentReqImpl instance) =>
    <String, dynamic>{
      'taskCode': instance.taskCode,
      'commentUserId': instance.commentUserId,
      'studentIdOfCommentUser': instance.commentStudentId,
      'studentIdOfReplyUser': instance.replyStudentId,
      'commentContent': instance.commentContent,
      'replyCommentId': instance.replyCommentId,
      'replyUserId': instance.replyUserId,
      'taskCodeSubId': instance.taskCodeSubId,
    };

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      commentId: json['commentId'] as int,
      commentUserId: json['commentUserId'] as int,
      taskCode: json['taskCode'] as String,
      taskCodeSubId: json['taskCodeSubId'] as int?,
      userName: json['userName'] as String? ?? '',
      nickName: json['nickName'] as String? ?? '',
      studentCode: json['studentCode'] as String?,
      studentId: json['studentId'] as int?,
      studentName: json['studentName'] as String? ?? '',
      studentAvatarUrl: json['studentAvatarUrl'] as String?,
      parentAvatarUrl: json['avatarUrl'] as String?,
      relationship: json['familyRelation'] == null
          ? Relationship.other
          : const RelationshipJsonConverter()
              .fromJson(json['familyRelation'] as int),
      relationshipDesc: json['familyRelationDesc'] as String? ?? '',
      content: json['commentContent'] as String? ?? '',
      replyCommentId: json['replyCommentId'] as int?,
      replyUserId: json['replyUserId'] as int?,
      replyUserName: json['replyUserName'] as String? ?? '',
      createdDate: _$JsonConverterFromJson<String, DateTime?>(
          json['createdDate'], const DateTimeJsonConverter().fromJson),
      replies: (json['subCommentVO'] as List<dynamic>?)
              ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'commentUserId': instance.commentUserId,
      'taskCode': instance.taskCode,
      'taskCodeSubId': instance.taskCodeSubId,
      'userName': instance.userName,
      'nickName': instance.nickName,
      'studentCode': instance.studentCode,
      'studentId': instance.studentId,
      'studentName': instance.studentName,
      'studentAvatarUrl': instance.studentAvatarUrl,
      'avatarUrl': instance.parentAvatarUrl,
      'familyRelation':
          const RelationshipJsonConverter().toJson(instance.relationship),
      'familyRelationDesc': instance.relationshipDesc,
      'commentContent': instance.content,
      'replyCommentId': instance.replyCommentId,
      'replyUserId': instance.replyUserId,
      'replyUserName': instance.replyUserName,
      'createdDate': const DateTimeJsonConverter().toJson(instance.createdDate),
      'subCommentVO': instance.replies,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
