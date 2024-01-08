import 'package:components/model/bosocial_models.dart';
import 'package:components/model/common_model.dart';
import 'package:components/model/converter/bosocial/comment_type_converter.dart';
import 'package:components/model/converter/bosocial/comment_user_type_converter.dart';
import 'package:components/model/converter/bosocial/status_converter.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/int2bool_converter.dart';
import 'package:components/model/converter/relationship_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

/// 添加评论请求
@freezed
class CommentReq with _$CommentReq {
  const CommentReq._();
  const factory CommentReq({
    /// 活动id
    required String activityId,

    /// 评论内容
    required String commentContent,

    /// 关系
    int? familyRelation,

    /// 父评论id(回复时必填)
    String? parentId,
  }) = _CommentReq;

  factory CommentReq.fromJson(Map<String, Object?> json) =>
      _$CommentReqFromJson(json);
}

/// 评论
@freezed
class CommentModel with _$CommentModel {
  const CommentModel._();
  const factory CommentModel({
    /// 活动id
    required String activityId,

    /// 评论id
    required String commentId,

    /// 评论内容
    @Default('') String commentContent,

    /// 评论路径
    String? commentPath,

    /// 家庭关系
    @JsonKey(name: 'familyRelation')
    @Default(Relationship.other)
    @RelationshipJsonConverter()
    Relationship relationship,

    /// 评论人头像
    @JsonKey(name: 'avatarUrl') String? avatar,

    /// 评论时间
    @DateTimeJsonConverter() DateTime? commentTime,

    /// 评论类型
    @CommentTypeJsonConverter()
    @Default(CommentType.unknown)
    CommentType commentType,

    /// 联系电话
    String? contactPhone,

    /// 自己是否点赞
    @JsonKey(name: 'selfLikeFlag') @Default(false) bool selfLike,

    /// 收到点赞数
    @Default(0) int selfLikeNum,

    /// 点赞数
    @Default(0) int likeNum,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,

    /// 干货id
    String? knowledgeId,

    /// 父评论id
    String? parentId,

    /// 实际父评论id
    int? topParentId,

    /// 回复人编码
    @JsonKey(name: 'replyToUserCode') String? replyUserCode,

    /// 回复人id
    @JsonKey(name: 'replyToUserId') int? replyUserId,

    /// 回复人名称
    @JsonKey(name: 'replyToUserName') @Default('') String replyUserName,

    /// 回复人头像
    String? replyAvatar,

    /// 回复人用户类型
    @JsonKey(name: 'replyToUserType')
    @CommentUserTypeJsonConverter()
    @Default(CommentUserType.unknown)
    CommentUserType replyUserType,

    /// 评论人学校编码
    String? schoolCode,

    /// 评论人编码
    String? userCode,

    /// 评论人id
    int? userId,

    /// 评论人名称
    @Default('') String userName,

    /// 评论人用户类型
    @CommentUserTypeJsonConverter()
    @Default(CommentUserType.unknown)
    CommentUserType userType,

    /// 业务状态
    @StatusJsonConverter() @Default(Status.unknown) Status status,

    /// 是否存在回复列表
    @JsonKey(name: 'hasChildFlag') @Default(false) bool hasReply,

    /// 回复列表
    @JsonKey(name: 'childList') @Default([]) List<CommentModel> reply,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _CommentModel;

  factory CommentModel.empty() =>
      const CommentModel(activityId: '', commentId: '');

  bool get validate => commentId.isNotEmpty;
  bool get topComment => topParentId == -1;

  factory CommentModel.fromJson(Map<String, Object?> json) =>
      _$CommentModelFromJson(json);
}
