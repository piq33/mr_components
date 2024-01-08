import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/relationship_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentReq with _$CommentReq {
  const CommentReq._();
  const factory CommentReq({
    /// 作业编码
    required String taskCode,

    /// 评论人id
    required int commentUserId,

    /// 评论人学生id
    @JsonKey(name: 'studentIdOfCommentUser') required int commentStudentId,

    /// 回复人学生id
    @JsonKey(name: 'studentIdOfReplyUser') int? replyStudentId,

    /// 评论内容
    required String commentContent,

    /// 回复评论id
    int? replyCommentId,

    /// 回复人id
    int? replyUserId,

    /// 进度id
    int? taskCodeSubId,
  }) = _CommentReq;

  factory CommentReq.fromJson(Map<String, Object?> json) =>
      _$CommentReqFromJson(json);
}

@freezed
class CommentModel with _$CommentModel {
  const CommentModel._();
  const factory CommentModel({
    /// 评论id
    required int commentId,

    /// 评论人id
    required int commentUserId,

    /// 作业编码
    required String taskCode,

    /// 同学进度id
    int? taskCodeSubId,

    /// 用户姓名
    @Default('') String userName,

    /// 用户昵称
    @Default('') String nickName,

    /// 学生编码
    String? studentCode,

    /// 学生id
    int? studentId,

    /// 学生姓名
    @Default('') String studentName,

    /// 学生头像
    String? studentAvatarUrl,

    /// 家长头像
    @JsonKey(name: 'avatarUrl') String? parentAvatarUrl,

    /// 家庭关系
    @JsonKey(name: 'familyRelation')
    @Default(Relationship.other)
    @RelationshipJsonConverter()
    Relationship relationship,

    /// 家庭关系描述
    @JsonKey(name: 'familyRelationDesc') @Default('') String relationshipDesc,

    /// 评论内容
    @JsonKey(name: 'commentContent') @Default('') String content,

    /// 回复所指向父评论id
    int? replyCommentId,

    /// 回复人id
    int? replyUserId,

    /// 回复人名称
    @Default('') String replyUserName,

    /// 评论时间
    @DateTimeJsonConverter() DateTime? createdDate,

    /// 评论回复列表
    @JsonKey(name: 'subCommentVO') @Default([]) List<CommentModel> replies,
  }) = _CommentModel;

  bool get validate => taskCode.isNotEmpty;

  factory CommentModel.empty() =>
      const CommentModel(commentId: -1, commentUserId: -1, taskCode: '');

  factory CommentModel.fromJson(Map<String, Object?> json) =>
      _$CommentModelFromJson(json);
}
