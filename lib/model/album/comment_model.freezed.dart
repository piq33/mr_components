// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentReq _$CommentReqFromJson(Map<String, dynamic> json) {
  return _CommentReq.fromJson(json);
}

/// @nodoc
mixin _$CommentReq {
  /// 活动id
  String get activityId => throw _privateConstructorUsedError;

  /// 评论内容
  String get commentContent => throw _privateConstructorUsedError;

  /// 关系
  int? get familyRelation => throw _privateConstructorUsedError;

  /// 父评论id(回复时必填)
  String? get parentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentReqCopyWith<CommentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentReqCopyWith<$Res> {
  factory $CommentReqCopyWith(
          CommentReq value, $Res Function(CommentReq) then) =
      _$CommentReqCopyWithImpl<$Res, CommentReq>;
  @useResult
  $Res call(
      {String activityId,
      String commentContent,
      int? familyRelation,
      String? parentId});
}

/// @nodoc
class _$CommentReqCopyWithImpl<$Res, $Val extends CommentReq>
    implements $CommentReqCopyWith<$Res> {
  _$CommentReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? commentContent = null,
    Object? familyRelation = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_value.copyWith(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      commentContent: null == commentContent
          ? _value.commentContent
          : commentContent // ignore: cast_nullable_to_non_nullable
              as String,
      familyRelation: freezed == familyRelation
          ? _value.familyRelation
          : familyRelation // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentReqImplCopyWith<$Res>
    implements $CommentReqCopyWith<$Res> {
  factory _$$CommentReqImplCopyWith(
          _$CommentReqImpl value, $Res Function(_$CommentReqImpl) then) =
      __$$CommentReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String activityId,
      String commentContent,
      int? familyRelation,
      String? parentId});
}

/// @nodoc
class __$$CommentReqImplCopyWithImpl<$Res>
    extends _$CommentReqCopyWithImpl<$Res, _$CommentReqImpl>
    implements _$$CommentReqImplCopyWith<$Res> {
  __$$CommentReqImplCopyWithImpl(
      _$CommentReqImpl _value, $Res Function(_$CommentReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? commentContent = null,
    Object? familyRelation = freezed,
    Object? parentId = freezed,
  }) {
    return _then(_$CommentReqImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      commentContent: null == commentContent
          ? _value.commentContent
          : commentContent // ignore: cast_nullable_to_non_nullable
              as String,
      familyRelation: freezed == familyRelation
          ? _value.familyRelation
          : familyRelation // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentReqImpl extends _CommentReq {
  const _$CommentReqImpl(
      {required this.activityId,
      required this.commentContent,
      this.familyRelation,
      this.parentId})
      : super._();

  factory _$CommentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentReqImplFromJson(json);

  /// 活动id
  @override
  final String activityId;

  /// 评论内容
  @override
  final String commentContent;

  /// 关系
  @override
  final int? familyRelation;

  /// 父评论id(回复时必填)
  @override
  final String? parentId;

  @override
  String toString() {
    return 'CommentReq(activityId: $activityId, commentContent: $commentContent, familyRelation: $familyRelation, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReqImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.commentContent, commentContent) ||
                other.commentContent == commentContent) &&
            (identical(other.familyRelation, familyRelation) ||
                other.familyRelation == familyRelation) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, activityId, commentContent, familyRelation, parentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentReqImplCopyWith<_$CommentReqImpl> get copyWith =>
      __$$CommentReqImplCopyWithImpl<_$CommentReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentReqImplToJson(
      this,
    );
  }
}

abstract class _CommentReq extends CommentReq {
  const factory _CommentReq(
      {required final String activityId,
      required final String commentContent,
      final int? familyRelation,
      final String? parentId}) = _$CommentReqImpl;
  const _CommentReq._() : super._();

  factory _CommentReq.fromJson(Map<String, dynamic> json) =
      _$CommentReqImpl.fromJson;

  @override

  /// 活动id
  String get activityId;
  @override

  /// 评论内容
  String get commentContent;
  @override

  /// 关系
  int? get familyRelation;
  @override

  /// 父评论id(回复时必填)
  String? get parentId;
  @override
  @JsonKey(ignore: true)
  _$$CommentReqImplCopyWith<_$CommentReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  /// 活动id
  String get activityId => throw _privateConstructorUsedError;

  /// 评论id
  String get commentId => throw _privateConstructorUsedError;

  /// 评论内容
  String get commentContent => throw _privateConstructorUsedError;

  /// 评论路径
  String? get commentPath => throw _privateConstructorUsedError;

  /// 家庭关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship => throw _privateConstructorUsedError;

  /// 评论人头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar => throw _privateConstructorUsedError;

  /// 评论时间
  @DateTimeJsonConverter()
  DateTime? get commentTime => throw _privateConstructorUsedError;

  /// 评论类型
  @CommentTypeJsonConverter()
  CommentType get commentType => throw _privateConstructorUsedError;

  /// 联系电话
  String? get contactPhone => throw _privateConstructorUsedError;

  /// 自己是否点赞
  @JsonKey(name: 'selfLikeFlag')
  bool get selfLike => throw _privateConstructorUsedError;

  /// 收到点赞数
  int get selfLikeNum => throw _privateConstructorUsedError;

  /// 点赞数
  int get likeNum => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 干货id
  String? get knowledgeId => throw _privateConstructorUsedError;

  /// 父评论id
  String? get parentId => throw _privateConstructorUsedError;

  /// 实际父评论id
  int? get topParentId => throw _privateConstructorUsedError;

  /// 回复人编码
  @JsonKey(name: 'replyToUserCode')
  String? get replyUserCode => throw _privateConstructorUsedError;

  /// 回复人id
  @JsonKey(name: 'replyToUserId')
  int? get replyUserId => throw _privateConstructorUsedError;

  /// 回复人名称
  @JsonKey(name: 'replyToUserName')
  String get replyUserName => throw _privateConstructorUsedError;

  /// 回复人头像
  String? get replyAvatar => throw _privateConstructorUsedError;

  /// 回复人用户类型
  @JsonKey(name: 'replyToUserType')
  @CommentUserTypeJsonConverter()
  CommentUserType get replyUserType => throw _privateConstructorUsedError;

  /// 评论人学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 评论人编码
  String? get userCode => throw _privateConstructorUsedError;

  /// 评论人id
  int? get userId => throw _privateConstructorUsedError;

  /// 评论人名称
  String get userName => throw _privateConstructorUsedError;

  /// 评论人用户类型
  @CommentUserTypeJsonConverter()
  CommentUserType get userType => throw _privateConstructorUsedError;

  /// 业务状态
  @StatusJsonConverter()
  Status get status => throw _privateConstructorUsedError;

  /// 是否存在回复列表
  @JsonKey(name: 'hasChildFlag')
  bool get hasReply => throw _privateConstructorUsedError;

  /// 回复列表
  @JsonKey(name: 'childList')
  List<CommentModel> get reply => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res, CommentModel>;
  @useResult
  $Res call(
      {String activityId,
      String commentId,
      String commentContent,
      String? commentPath,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'avatarUrl') String? avatar,
      @DateTimeJsonConverter() DateTime? commentTime,
      @CommentTypeJsonConverter() CommentType commentType,
      String? contactPhone,
      @JsonKey(name: 'selfLikeFlag') bool selfLike,
      int selfLikeNum,
      int likeNum,
      @Int2BoolJsonConverter() bool isDeleted,
      String? knowledgeId,
      String? parentId,
      int? topParentId,
      @JsonKey(name: 'replyToUserCode') String? replyUserCode,
      @JsonKey(name: 'replyToUserId') int? replyUserId,
      @JsonKey(name: 'replyToUserName') String replyUserName,
      String? replyAvatar,
      @JsonKey(name: 'replyToUserType')
      @CommentUserTypeJsonConverter()
      CommentUserType replyUserType,
      String? schoolCode,
      String? userCode,
      int? userId,
      String userName,
      @CommentUserTypeJsonConverter() CommentUserType userType,
      @StatusJsonConverter() Status status,
      @JsonKey(name: 'hasChildFlag') bool hasReply,
      @JsonKey(name: 'childList') List<CommentModel> reply,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res, $Val extends CommentModel>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? commentId = null,
    Object? commentContent = null,
    Object? commentPath = freezed,
    Object? relationship = null,
    Object? avatar = freezed,
    Object? commentTime = freezed,
    Object? commentType = null,
    Object? contactPhone = freezed,
    Object? selfLike = null,
    Object? selfLikeNum = null,
    Object? likeNum = null,
    Object? isDeleted = null,
    Object? knowledgeId = freezed,
    Object? parentId = freezed,
    Object? topParentId = freezed,
    Object? replyUserCode = freezed,
    Object? replyUserId = freezed,
    Object? replyUserName = null,
    Object? replyAvatar = freezed,
    Object? replyUserType = null,
    Object? schoolCode = freezed,
    Object? userCode = freezed,
    Object? userId = freezed,
    Object? userName = null,
    Object? userType = null,
    Object? status = null,
    Object? hasReply = null,
    Object? reply = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      commentContent: null == commentContent
          ? _value.commentContent
          : commentContent // ignore: cast_nullable_to_non_nullable
              as String,
      commentPath: freezed == commentPath
          ? _value.commentPath
          : commentPath // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      commentTime: freezed == commentTime
          ? _value.commentTime
          : commentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      commentType: null == commentType
          ? _value.commentType
          : commentType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLike: null == selfLike
          ? _value.selfLike
          : selfLike // ignore: cast_nullable_to_non_nullable
              as bool,
      selfLikeNum: null == selfLikeNum
          ? _value.selfLikeNum
          : selfLikeNum // ignore: cast_nullable_to_non_nullable
              as int,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      knowledgeId: freezed == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      topParentId: freezed == topParentId
          ? _value.topParentId
          : topParentId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserCode: freezed == replyUserCode
          ? _value.replyUserCode
          : replyUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      replyUserId: freezed == replyUserId
          ? _value.replyUserId
          : replyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserName: null == replyUserName
          ? _value.replyUserName
          : replyUserName // ignore: cast_nullable_to_non_nullable
              as String,
      replyAvatar: freezed == replyAvatar
          ? _value.replyAvatar
          : replyAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      replyUserType: null == replyUserType
          ? _value.replyUserType
          : replyUserType // ignore: cast_nullable_to_non_nullable
              as CommentUserType,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as CommentUserType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      hasReply: null == hasReply
          ? _value.hasReply
          : hasReply // ignore: cast_nullable_to_non_nullable
              as bool,
      reply: null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentModelImplCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$CommentModelImplCopyWith(
          _$CommentModelImpl value, $Res Function(_$CommentModelImpl) then) =
      __$$CommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String activityId,
      String commentId,
      String commentContent,
      String? commentPath,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'avatarUrl') String? avatar,
      @DateTimeJsonConverter() DateTime? commentTime,
      @CommentTypeJsonConverter() CommentType commentType,
      String? contactPhone,
      @JsonKey(name: 'selfLikeFlag') bool selfLike,
      int selfLikeNum,
      int likeNum,
      @Int2BoolJsonConverter() bool isDeleted,
      String? knowledgeId,
      String? parentId,
      int? topParentId,
      @JsonKey(name: 'replyToUserCode') String? replyUserCode,
      @JsonKey(name: 'replyToUserId') int? replyUserId,
      @JsonKey(name: 'replyToUserName') String replyUserName,
      String? replyAvatar,
      @JsonKey(name: 'replyToUserType')
      @CommentUserTypeJsonConverter()
      CommentUserType replyUserType,
      String? schoolCode,
      String? userCode,
      int? userId,
      String userName,
      @CommentUserTypeJsonConverter() CommentUserType userType,
      @StatusJsonConverter() Status status,
      @JsonKey(name: 'hasChildFlag') bool hasReply,
      @JsonKey(name: 'childList') List<CommentModel> reply,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$CommentModelImplCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res, _$CommentModelImpl>
    implements _$$CommentModelImplCopyWith<$Res> {
  __$$CommentModelImplCopyWithImpl(
      _$CommentModelImpl _value, $Res Function(_$CommentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityId = null,
    Object? commentId = null,
    Object? commentContent = null,
    Object? commentPath = freezed,
    Object? relationship = null,
    Object? avatar = freezed,
    Object? commentTime = freezed,
    Object? commentType = null,
    Object? contactPhone = freezed,
    Object? selfLike = null,
    Object? selfLikeNum = null,
    Object? likeNum = null,
    Object? isDeleted = null,
    Object? knowledgeId = freezed,
    Object? parentId = freezed,
    Object? topParentId = freezed,
    Object? replyUserCode = freezed,
    Object? replyUserId = freezed,
    Object? replyUserName = null,
    Object? replyAvatar = freezed,
    Object? replyUserType = null,
    Object? schoolCode = freezed,
    Object? userCode = freezed,
    Object? userId = freezed,
    Object? userName = null,
    Object? userType = null,
    Object? status = null,
    Object? hasReply = null,
    Object? reply = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$CommentModelImpl(
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      commentContent: null == commentContent
          ? _value.commentContent
          : commentContent // ignore: cast_nullable_to_non_nullable
              as String,
      commentPath: freezed == commentPath
          ? _value.commentPath
          : commentPath // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      commentTime: freezed == commentTime
          ? _value.commentTime
          : commentTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      commentType: null == commentType
          ? _value.commentType
          : commentType // ignore: cast_nullable_to_non_nullable
              as CommentType,
      contactPhone: freezed == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLike: null == selfLike
          ? _value.selfLike
          : selfLike // ignore: cast_nullable_to_non_nullable
              as bool,
      selfLikeNum: null == selfLikeNum
          ? _value.selfLikeNum
          : selfLikeNum // ignore: cast_nullable_to_non_nullable
              as int,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      knowledgeId: freezed == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      topParentId: freezed == topParentId
          ? _value.topParentId
          : topParentId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserCode: freezed == replyUserCode
          ? _value.replyUserCode
          : replyUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      replyUserId: freezed == replyUserId
          ? _value.replyUserId
          : replyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserName: null == replyUserName
          ? _value.replyUserName
          : replyUserName // ignore: cast_nullable_to_non_nullable
              as String,
      replyAvatar: freezed == replyAvatar
          ? _value.replyAvatar
          : replyAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      replyUserType: null == replyUserType
          ? _value.replyUserType
          : replyUserType // ignore: cast_nullable_to_non_nullable
              as CommentUserType,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as CommentUserType,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      hasReply: null == hasReply
          ? _value.hasReply
          : hasReply // ignore: cast_nullable_to_non_nullable
              as bool,
      reply: null == reply
          ? _value._reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl extends _CommentModel {
  const _$CommentModelImpl(
      {required this.activityId,
      required this.commentId,
      this.commentContent = '',
      this.commentPath,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      this.relationship = Relationship.other,
      @JsonKey(name: 'avatarUrl') this.avatar,
      @DateTimeJsonConverter() this.commentTime,
      @CommentTypeJsonConverter() this.commentType = CommentType.unknown,
      this.contactPhone,
      @JsonKey(name: 'selfLikeFlag') this.selfLike = false,
      this.selfLikeNum = 0,
      this.likeNum = 0,
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.knowledgeId,
      this.parentId,
      this.topParentId,
      @JsonKey(name: 'replyToUserCode') this.replyUserCode,
      @JsonKey(name: 'replyToUserId') this.replyUserId,
      @JsonKey(name: 'replyToUserName') this.replyUserName = '',
      this.replyAvatar,
      @JsonKey(name: 'replyToUserType')
      @CommentUserTypeJsonConverter()
      this.replyUserType = CommentUserType.unknown,
      this.schoolCode,
      this.userCode,
      this.userId,
      this.userName = '',
      @CommentUserTypeJsonConverter() this.userType = CommentUserType.unknown,
      @StatusJsonConverter() this.status = Status.unknown,
      @JsonKey(name: 'hasChildFlag') this.hasReply = false,
      @JsonKey(name: 'childList') final List<CommentModel> reply = const [],
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : _reply = reply,
        super._();

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  /// 活动id
  @override
  final String activityId;

  /// 评论id
  @override
  final String commentId;

  /// 评论内容
  @override
  @JsonKey()
  final String commentContent;

  /// 评论路径
  @override
  final String? commentPath;

  /// 家庭关系
  @override
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  final Relationship relationship;

  /// 评论人头像
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatar;

  /// 评论时间
  @override
  @DateTimeJsonConverter()
  final DateTime? commentTime;

  /// 评论类型
  @override
  @JsonKey()
  @CommentTypeJsonConverter()
  final CommentType commentType;

  /// 联系电话
  @override
  final String? contactPhone;

  /// 自己是否点赞
  @override
  @JsonKey(name: 'selfLikeFlag')
  final bool selfLike;

  /// 收到点赞数
  @override
  @JsonKey()
  final int selfLikeNum;

  /// 点赞数
  @override
  @JsonKey()
  final int likeNum;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 干货id
  @override
  final String? knowledgeId;

  /// 父评论id
  @override
  final String? parentId;

  /// 实际父评论id
  @override
  final int? topParentId;

  /// 回复人编码
  @override
  @JsonKey(name: 'replyToUserCode')
  final String? replyUserCode;

  /// 回复人id
  @override
  @JsonKey(name: 'replyToUserId')
  final int? replyUserId;

  /// 回复人名称
  @override
  @JsonKey(name: 'replyToUserName')
  final String replyUserName;

  /// 回复人头像
  @override
  final String? replyAvatar;

  /// 回复人用户类型
  @override
  @JsonKey(name: 'replyToUserType')
  @CommentUserTypeJsonConverter()
  final CommentUserType replyUserType;

  /// 评论人学校编码
  @override
  final String? schoolCode;

  /// 评论人编码
  @override
  final String? userCode;

  /// 评论人id
  @override
  final int? userId;

  /// 评论人名称
  @override
  @JsonKey()
  final String userName;

  /// 评论人用户类型
  @override
  @JsonKey()
  @CommentUserTypeJsonConverter()
  final CommentUserType userType;

  /// 业务状态
  @override
  @JsonKey()
  @StatusJsonConverter()
  final Status status;

  /// 是否存在回复列表
  @override
  @JsonKey(name: 'hasChildFlag')
  final bool hasReply;

  /// 回复列表
  final List<CommentModel> _reply;

  /// 回复列表
  @override
  @JsonKey(name: 'childList')
  List<CommentModel> get reply {
    if (_reply is EqualUnmodifiableListView) return _reply;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reply);
  }

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  @override
  String toString() {
    return 'CommentModel(activityId: $activityId, commentId: $commentId, commentContent: $commentContent, commentPath: $commentPath, relationship: $relationship, avatar: $avatar, commentTime: $commentTime, commentType: $commentType, contactPhone: $contactPhone, selfLike: $selfLike, selfLikeNum: $selfLikeNum, likeNum: $likeNum, isDeleted: $isDeleted, knowledgeId: $knowledgeId, parentId: $parentId, topParentId: $topParentId, replyUserCode: $replyUserCode, replyUserId: $replyUserId, replyUserName: $replyUserName, replyAvatar: $replyAvatar, replyUserType: $replyUserType, schoolCode: $schoolCode, userCode: $userCode, userId: $userId, userName: $userName, userType: $userType, status: $status, hasReply: $hasReply, reply: $reply, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.commentContent, commentContent) ||
                other.commentContent == commentContent) &&
            (identical(other.commentPath, commentPath) ||
                other.commentPath == commentPath) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.commentTime, commentTime) ||
                other.commentTime == commentTime) &&
            (identical(other.commentType, commentType) ||
                other.commentType == commentType) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.selfLike, selfLike) ||
                other.selfLike == selfLike) &&
            (identical(other.selfLikeNum, selfLikeNum) ||
                other.selfLikeNum == selfLikeNum) &&
            (identical(other.likeNum, likeNum) || other.likeNum == likeNum) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.knowledgeId, knowledgeId) ||
                other.knowledgeId == knowledgeId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.topParentId, topParentId) ||
                other.topParentId == topParentId) &&
            (identical(other.replyUserCode, replyUserCode) ||
                other.replyUserCode == replyUserCode) &&
            (identical(other.replyUserId, replyUserId) ||
                other.replyUserId == replyUserId) &&
            (identical(other.replyUserName, replyUserName) ||
                other.replyUserName == replyUserName) &&
            (identical(other.replyAvatar, replyAvatar) ||
                other.replyAvatar == replyAvatar) &&
            (identical(other.replyUserType, replyUserType) ||
                other.replyUserType == replyUserType) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasReply, hasReply) ||
                other.hasReply == hasReply) &&
            const DeepCollectionEquality().equals(other._reply, _reply) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        activityId,
        commentId,
        commentContent,
        commentPath,
        relationship,
        avatar,
        commentTime,
        commentType,
        contactPhone,
        selfLike,
        selfLikeNum,
        likeNum,
        isDeleted,
        knowledgeId,
        parentId,
        topParentId,
        replyUserCode,
        replyUserId,
        replyUserName,
        replyAvatar,
        replyUserType,
        schoolCode,
        userCode,
        userId,
        userName,
        userType,
        status,
        hasReply,
        const DeepCollectionEquality().hash(_reply),
        createTime,
        updateTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      __$$CommentModelImplCopyWithImpl<_$CommentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentModelImplToJson(
      this,
    );
  }
}

abstract class _CommentModel extends CommentModel {
  const factory _CommentModel(
          {required final String activityId,
          required final String commentId,
          final String commentContent,
          final String? commentPath,
          @JsonKey(name: 'familyRelation')
          @RelationshipJsonConverter()
          final Relationship relationship,
          @JsonKey(name: 'avatarUrl') final String? avatar,
          @DateTimeJsonConverter() final DateTime? commentTime,
          @CommentTypeJsonConverter() final CommentType commentType,
          final String? contactPhone,
          @JsonKey(name: 'selfLikeFlag') final bool selfLike,
          final int selfLikeNum,
          final int likeNum,
          @Int2BoolJsonConverter() final bool isDeleted,
          final String? knowledgeId,
          final String? parentId,
          final int? topParentId,
          @JsonKey(name: 'replyToUserCode') final String? replyUserCode,
          @JsonKey(name: 'replyToUserId') final int? replyUserId,
          @JsonKey(name: 'replyToUserName') final String replyUserName,
          final String? replyAvatar,
          @JsonKey(name: 'replyToUserType')
          @CommentUserTypeJsonConverter()
          final CommentUserType replyUserType,
          final String? schoolCode,
          final String? userCode,
          final int? userId,
          final String userName,
          @CommentUserTypeJsonConverter() final CommentUserType userType,
          @StatusJsonConverter() final Status status,
          @JsonKey(name: 'hasChildFlag') final bool hasReply,
          @JsonKey(name: 'childList') final List<CommentModel> reply,
          @DateTimeJsonConverter() final DateTime? createTime,
          @DateTimeJsonConverter() final DateTime? updateTime}) =
      _$CommentModelImpl;
  const _CommentModel._() : super._();

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override

  /// 活动id
  String get activityId;
  @override

  /// 评论id
  String get commentId;
  @override

  /// 评论内容
  String get commentContent;
  @override

  /// 评论路径
  String? get commentPath;
  @override

  /// 家庭关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship;
  @override

  /// 评论人头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar;
  @override

  /// 评论时间
  @DateTimeJsonConverter()
  DateTime? get commentTime;
  @override

  /// 评论类型
  @CommentTypeJsonConverter()
  CommentType get commentType;
  @override

  /// 联系电话
  String? get contactPhone;
  @override

  /// 自己是否点赞
  @JsonKey(name: 'selfLikeFlag')
  bool get selfLike;
  @override

  /// 收到点赞数
  int get selfLikeNum;
  @override

  /// 点赞数
  int get likeNum;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 干货id
  String? get knowledgeId;
  @override

  /// 父评论id
  String? get parentId;
  @override

  /// 实际父评论id
  int? get topParentId;
  @override

  /// 回复人编码
  @JsonKey(name: 'replyToUserCode')
  String? get replyUserCode;
  @override

  /// 回复人id
  @JsonKey(name: 'replyToUserId')
  int? get replyUserId;
  @override

  /// 回复人名称
  @JsonKey(name: 'replyToUserName')
  String get replyUserName;
  @override

  /// 回复人头像
  String? get replyAvatar;
  @override

  /// 回复人用户类型
  @JsonKey(name: 'replyToUserType')
  @CommentUserTypeJsonConverter()
  CommentUserType get replyUserType;
  @override

  /// 评论人学校编码
  String? get schoolCode;
  @override

  /// 评论人编码
  String? get userCode;
  @override

  /// 评论人id
  int? get userId;
  @override

  /// 评论人名称
  String get userName;
  @override

  /// 评论人用户类型
  @CommentUserTypeJsonConverter()
  CommentUserType get userType;
  @override

  /// 业务状态
  @StatusJsonConverter()
  Status get status;
  @override

  /// 是否存在回复列表
  @JsonKey(name: 'hasChildFlag')
  bool get hasReply;
  @override

  /// 回复列表
  @JsonKey(name: 'childList')
  List<CommentModel> get reply;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
