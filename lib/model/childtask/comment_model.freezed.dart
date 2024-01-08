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
  /// 作业编码
  String get taskCode => throw _privateConstructorUsedError;

  /// 评论人id
  int get commentUserId => throw _privateConstructorUsedError;

  /// 评论人学生id
  @JsonKey(name: 'studentIdOfCommentUser')
  int get commentStudentId => throw _privateConstructorUsedError;

  /// 回复人学生id
  @JsonKey(name: 'studentIdOfReplyUser')
  int? get replyStudentId => throw _privateConstructorUsedError;

  /// 评论内容
  String get commentContent => throw _privateConstructorUsedError;

  /// 回复评论id
  int? get replyCommentId => throw _privateConstructorUsedError;

  /// 回复人id
  int? get replyUserId => throw _privateConstructorUsedError;

  /// 进度id
  int? get taskCodeSubId => throw _privateConstructorUsedError;

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
      {String taskCode,
      int commentUserId,
      @JsonKey(name: 'studentIdOfCommentUser') int commentStudentId,
      @JsonKey(name: 'studentIdOfReplyUser') int? replyStudentId,
      String commentContent,
      int? replyCommentId,
      int? replyUserId,
      int? taskCodeSubId});
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
    Object? taskCode = null,
    Object? commentUserId = null,
    Object? commentStudentId = null,
    Object? replyStudentId = freezed,
    Object? commentContent = null,
    Object? replyCommentId = freezed,
    Object? replyUserId = freezed,
    Object? taskCodeSubId = freezed,
  }) {
    return _then(_value.copyWith(
      taskCode: null == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as int,
      commentStudentId: null == commentStudentId
          ? _value.commentStudentId
          : commentStudentId // ignore: cast_nullable_to_non_nullable
              as int,
      replyStudentId: freezed == replyStudentId
          ? _value.replyStudentId
          : replyStudentId // ignore: cast_nullable_to_non_nullable
              as int?,
      commentContent: null == commentContent
          ? _value.commentContent
          : commentContent // ignore: cast_nullable_to_non_nullable
              as String,
      replyCommentId: freezed == replyCommentId
          ? _value.replyCommentId
          : replyCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserId: freezed == replyUserId
          ? _value.replyUserId
          : replyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      taskCodeSubId: freezed == taskCodeSubId
          ? _value.taskCodeSubId
          : taskCodeSubId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {String taskCode,
      int commentUserId,
      @JsonKey(name: 'studentIdOfCommentUser') int commentStudentId,
      @JsonKey(name: 'studentIdOfReplyUser') int? replyStudentId,
      String commentContent,
      int? replyCommentId,
      int? replyUserId,
      int? taskCodeSubId});
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
    Object? taskCode = null,
    Object? commentUserId = null,
    Object? commentStudentId = null,
    Object? replyStudentId = freezed,
    Object? commentContent = null,
    Object? replyCommentId = freezed,
    Object? replyUserId = freezed,
    Object? taskCodeSubId = freezed,
  }) {
    return _then(_$CommentReqImpl(
      taskCode: null == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as int,
      commentStudentId: null == commentStudentId
          ? _value.commentStudentId
          : commentStudentId // ignore: cast_nullable_to_non_nullable
              as int,
      replyStudentId: freezed == replyStudentId
          ? _value.replyStudentId
          : replyStudentId // ignore: cast_nullable_to_non_nullable
              as int?,
      commentContent: null == commentContent
          ? _value.commentContent
          : commentContent // ignore: cast_nullable_to_non_nullable
              as String,
      replyCommentId: freezed == replyCommentId
          ? _value.replyCommentId
          : replyCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserId: freezed == replyUserId
          ? _value.replyUserId
          : replyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      taskCodeSubId: freezed == taskCodeSubId
          ? _value.taskCodeSubId
          : taskCodeSubId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentReqImpl extends _CommentReq {
  const _$CommentReqImpl(
      {required this.taskCode,
      required this.commentUserId,
      @JsonKey(name: 'studentIdOfCommentUser') required this.commentStudentId,
      @JsonKey(name: 'studentIdOfReplyUser') this.replyStudentId,
      required this.commentContent,
      this.replyCommentId,
      this.replyUserId,
      this.taskCodeSubId})
      : super._();

  factory _$CommentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentReqImplFromJson(json);

  /// 作业编码
  @override
  final String taskCode;

  /// 评论人id
  @override
  final int commentUserId;

  /// 评论人学生id
  @override
  @JsonKey(name: 'studentIdOfCommentUser')
  final int commentStudentId;

  /// 回复人学生id
  @override
  @JsonKey(name: 'studentIdOfReplyUser')
  final int? replyStudentId;

  /// 评论内容
  @override
  final String commentContent;

  /// 回复评论id
  @override
  final int? replyCommentId;

  /// 回复人id
  @override
  final int? replyUserId;

  /// 进度id
  @override
  final int? taskCodeSubId;

  @override
  String toString() {
    return 'CommentReq(taskCode: $taskCode, commentUserId: $commentUserId, commentStudentId: $commentStudentId, replyStudentId: $replyStudentId, commentContent: $commentContent, replyCommentId: $replyCommentId, replyUserId: $replyUserId, taskCodeSubId: $taskCodeSubId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentReqImpl &&
            (identical(other.taskCode, taskCode) ||
                other.taskCode == taskCode) &&
            (identical(other.commentUserId, commentUserId) ||
                other.commentUserId == commentUserId) &&
            (identical(other.commentStudentId, commentStudentId) ||
                other.commentStudentId == commentStudentId) &&
            (identical(other.replyStudentId, replyStudentId) ||
                other.replyStudentId == replyStudentId) &&
            (identical(other.commentContent, commentContent) ||
                other.commentContent == commentContent) &&
            (identical(other.replyCommentId, replyCommentId) ||
                other.replyCommentId == replyCommentId) &&
            (identical(other.replyUserId, replyUserId) ||
                other.replyUserId == replyUserId) &&
            (identical(other.taskCodeSubId, taskCodeSubId) ||
                other.taskCodeSubId == taskCodeSubId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskCode,
      commentUserId,
      commentStudentId,
      replyStudentId,
      commentContent,
      replyCommentId,
      replyUserId,
      taskCodeSubId);

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
      {required final String taskCode,
      required final int commentUserId,
      @JsonKey(name: 'studentIdOfCommentUser')
      required final int commentStudentId,
      @JsonKey(name: 'studentIdOfReplyUser') final int? replyStudentId,
      required final String commentContent,
      final int? replyCommentId,
      final int? replyUserId,
      final int? taskCodeSubId}) = _$CommentReqImpl;
  const _CommentReq._() : super._();

  factory _CommentReq.fromJson(Map<String, dynamic> json) =
      _$CommentReqImpl.fromJson;

  @override

  /// 作业编码
  String get taskCode;
  @override

  /// 评论人id
  int get commentUserId;
  @override

  /// 评论人学生id
  @JsonKey(name: 'studentIdOfCommentUser')
  int get commentStudentId;
  @override

  /// 回复人学生id
  @JsonKey(name: 'studentIdOfReplyUser')
  int? get replyStudentId;
  @override

  /// 评论内容
  String get commentContent;
  @override

  /// 回复评论id
  int? get replyCommentId;
  @override

  /// 回复人id
  int? get replyUserId;
  @override

  /// 进度id
  int? get taskCodeSubId;
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
  /// 评论id
  int get commentId => throw _privateConstructorUsedError;

  /// 评论人id
  int get commentUserId => throw _privateConstructorUsedError;

  /// 作业编码
  String get taskCode => throw _privateConstructorUsedError;

  /// 同学进度id
  int? get taskCodeSubId => throw _privateConstructorUsedError;

  /// 用户姓名
  String get userName => throw _privateConstructorUsedError;

  /// 用户昵称
  String get nickName => throw _privateConstructorUsedError;

  /// 学生编码
  String? get studentCode => throw _privateConstructorUsedError;

  /// 学生id
  int? get studentId => throw _privateConstructorUsedError;

  /// 学生姓名
  String get studentName => throw _privateConstructorUsedError;

  /// 学生头像
  String? get studentAvatarUrl => throw _privateConstructorUsedError;

  /// 家长头像
  @JsonKey(name: 'avatarUrl')
  String? get parentAvatarUrl => throw _privateConstructorUsedError;

  /// 家庭关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship => throw _privateConstructorUsedError;

  /// 家庭关系描述
  @JsonKey(name: 'familyRelationDesc')
  String get relationshipDesc => throw _privateConstructorUsedError;

  /// 评论内容
  @JsonKey(name: 'commentContent')
  String get content => throw _privateConstructorUsedError;

  /// 回复所指向父评论id
  int? get replyCommentId => throw _privateConstructorUsedError;

  /// 回复人id
  int? get replyUserId => throw _privateConstructorUsedError;

  /// 回复人名称
  String get replyUserName => throw _privateConstructorUsedError;

  /// 评论时间
  @DateTimeJsonConverter()
  DateTime? get createdDate => throw _privateConstructorUsedError;

  /// 评论回复列表
  @JsonKey(name: 'subCommentVO')
  List<CommentModel> get replies => throw _privateConstructorUsedError;

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
      {int commentId,
      int commentUserId,
      String taskCode,
      int? taskCodeSubId,
      String userName,
      String nickName,
      String? studentCode,
      int? studentId,
      String studentName,
      String? studentAvatarUrl,
      @JsonKey(name: 'avatarUrl') String? parentAvatarUrl,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'familyRelationDesc') String relationshipDesc,
      @JsonKey(name: 'commentContent') String content,
      int? replyCommentId,
      int? replyUserId,
      String replyUserName,
      @DateTimeJsonConverter() DateTime? createdDate,
      @JsonKey(name: 'subCommentVO') List<CommentModel> replies});
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
    Object? commentId = null,
    Object? commentUserId = null,
    Object? taskCode = null,
    Object? taskCodeSubId = freezed,
    Object? userName = null,
    Object? nickName = null,
    Object? studentCode = freezed,
    Object? studentId = freezed,
    Object? studentName = null,
    Object? studentAvatarUrl = freezed,
    Object? parentAvatarUrl = freezed,
    Object? relationship = null,
    Object? relationshipDesc = null,
    Object? content = null,
    Object? replyCommentId = freezed,
    Object? replyUserId = freezed,
    Object? replyUserName = null,
    Object? createdDate = freezed,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as int,
      taskCode: null == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String,
      taskCodeSubId: freezed == taskCodeSubId
          ? _value.taskCodeSubId
          : taskCodeSubId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentAvatarUrl: freezed == studentAvatarUrl
          ? _value.studentAvatarUrl
          : studentAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAvatarUrl: freezed == parentAvatarUrl
          ? _value.parentAvatarUrl
          : parentAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      relationshipDesc: null == relationshipDesc
          ? _value.relationshipDesc
          : relationshipDesc // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      replyCommentId: freezed == replyCommentId
          ? _value.replyCommentId
          : replyCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserId: freezed == replyUserId
          ? _value.replyUserId
          : replyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserName: null == replyUserName
          ? _value.replyUserName
          : replyUserName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
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
      {int commentId,
      int commentUserId,
      String taskCode,
      int? taskCodeSubId,
      String userName,
      String nickName,
      String? studentCode,
      int? studentId,
      String studentName,
      String? studentAvatarUrl,
      @JsonKey(name: 'avatarUrl') String? parentAvatarUrl,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'familyRelationDesc') String relationshipDesc,
      @JsonKey(name: 'commentContent') String content,
      int? replyCommentId,
      int? replyUserId,
      String replyUserName,
      @DateTimeJsonConverter() DateTime? createdDate,
      @JsonKey(name: 'subCommentVO') List<CommentModel> replies});
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
    Object? commentId = null,
    Object? commentUserId = null,
    Object? taskCode = null,
    Object? taskCodeSubId = freezed,
    Object? userName = null,
    Object? nickName = null,
    Object? studentCode = freezed,
    Object? studentId = freezed,
    Object? studentName = null,
    Object? studentAvatarUrl = freezed,
    Object? parentAvatarUrl = freezed,
    Object? relationship = null,
    Object? relationshipDesc = null,
    Object? content = null,
    Object? replyCommentId = freezed,
    Object? replyUserId = freezed,
    Object? replyUserName = null,
    Object? createdDate = freezed,
    Object? replies = null,
  }) {
    return _then(_$CommentModelImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as int,
      commentUserId: null == commentUserId
          ? _value.commentUserId
          : commentUserId // ignore: cast_nullable_to_non_nullable
              as int,
      taskCode: null == taskCode
          ? _value.taskCode
          : taskCode // ignore: cast_nullable_to_non_nullable
              as String,
      taskCodeSubId: freezed == taskCodeSubId
          ? _value.taskCodeSubId
          : taskCodeSubId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentAvatarUrl: freezed == studentAvatarUrl
          ? _value.studentAvatarUrl
          : studentAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      parentAvatarUrl: freezed == parentAvatarUrl
          ? _value.parentAvatarUrl
          : parentAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      relationshipDesc: null == relationshipDesc
          ? _value.relationshipDesc
          : relationshipDesc // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      replyCommentId: freezed == replyCommentId
          ? _value.replyCommentId
          : replyCommentId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserId: freezed == replyUserId
          ? _value.replyUserId
          : replyUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyUserName: null == replyUserName
          ? _value.replyUserName
          : replyUserName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentModelImpl extends _CommentModel {
  const _$CommentModelImpl(
      {required this.commentId,
      required this.commentUserId,
      required this.taskCode,
      this.taskCodeSubId,
      this.userName = '',
      this.nickName = '',
      this.studentCode,
      this.studentId,
      this.studentName = '',
      this.studentAvatarUrl,
      @JsonKey(name: 'avatarUrl') this.parentAvatarUrl,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      this.relationship = Relationship.other,
      @JsonKey(name: 'familyRelationDesc') this.relationshipDesc = '',
      @JsonKey(name: 'commentContent') this.content = '',
      this.replyCommentId,
      this.replyUserId,
      this.replyUserName = '',
      @DateTimeJsonConverter() this.createdDate,
      @JsonKey(name: 'subCommentVO')
      final List<CommentModel> replies = const []})
      : _replies = replies,
        super._();

  factory _$CommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentModelImplFromJson(json);

  /// 评论id
  @override
  final int commentId;

  /// 评论人id
  @override
  final int commentUserId;

  /// 作业编码
  @override
  final String taskCode;

  /// 同学进度id
  @override
  final int? taskCodeSubId;

  /// 用户姓名
  @override
  @JsonKey()
  final String userName;

  /// 用户昵称
  @override
  @JsonKey()
  final String nickName;

  /// 学生编码
  @override
  final String? studentCode;

  /// 学生id
  @override
  final int? studentId;

  /// 学生姓名
  @override
  @JsonKey()
  final String studentName;

  /// 学生头像
  @override
  final String? studentAvatarUrl;

  /// 家长头像
  @override
  @JsonKey(name: 'avatarUrl')
  final String? parentAvatarUrl;

  /// 家庭关系
  @override
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  final Relationship relationship;

  /// 家庭关系描述
  @override
  @JsonKey(name: 'familyRelationDesc')
  final String relationshipDesc;

  /// 评论内容
  @override
  @JsonKey(name: 'commentContent')
  final String content;

  /// 回复所指向父评论id
  @override
  final int? replyCommentId;

  /// 回复人id
  @override
  final int? replyUserId;

  /// 回复人名称
  @override
  @JsonKey()
  final String replyUserName;

  /// 评论时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createdDate;

  /// 评论回复列表
  final List<CommentModel> _replies;

  /// 评论回复列表
  @override
  @JsonKey(name: 'subCommentVO')
  List<CommentModel> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'CommentModel(commentId: $commentId, commentUserId: $commentUserId, taskCode: $taskCode, taskCodeSubId: $taskCodeSubId, userName: $userName, nickName: $nickName, studentCode: $studentCode, studentId: $studentId, studentName: $studentName, studentAvatarUrl: $studentAvatarUrl, parentAvatarUrl: $parentAvatarUrl, relationship: $relationship, relationshipDesc: $relationshipDesc, content: $content, replyCommentId: $replyCommentId, replyUserId: $replyUserId, replyUserName: $replyUserName, createdDate: $createdDate, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentModelImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.commentUserId, commentUserId) ||
                other.commentUserId == commentUserId) &&
            (identical(other.taskCode, taskCode) ||
                other.taskCode == taskCode) &&
            (identical(other.taskCodeSubId, taskCodeSubId) ||
                other.taskCodeSubId == taskCodeSubId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentAvatarUrl, studentAvatarUrl) ||
                other.studentAvatarUrl == studentAvatarUrl) &&
            (identical(other.parentAvatarUrl, parentAvatarUrl) ||
                other.parentAvatarUrl == parentAvatarUrl) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.relationshipDesc, relationshipDesc) ||
                other.relationshipDesc == relationshipDesc) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.replyCommentId, replyCommentId) ||
                other.replyCommentId == replyCommentId) &&
            (identical(other.replyUserId, replyUserId) ||
                other.replyUserId == replyUserId) &&
            (identical(other.replyUserName, replyUserName) ||
                other.replyUserName == replyUserName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        commentId,
        commentUserId,
        taskCode,
        taskCodeSubId,
        userName,
        nickName,
        studentCode,
        studentId,
        studentName,
        studentAvatarUrl,
        parentAvatarUrl,
        relationship,
        relationshipDesc,
        content,
        replyCommentId,
        replyUserId,
        replyUserName,
        createdDate,
        const DeepCollectionEquality().hash(_replies)
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
          {required final int commentId,
          required final int commentUserId,
          required final String taskCode,
          final int? taskCodeSubId,
          final String userName,
          final String nickName,
          final String? studentCode,
          final int? studentId,
          final String studentName,
          final String? studentAvatarUrl,
          @JsonKey(name: 'avatarUrl') final String? parentAvatarUrl,
          @JsonKey(name: 'familyRelation')
          @RelationshipJsonConverter()
          final Relationship relationship,
          @JsonKey(name: 'familyRelationDesc') final String relationshipDesc,
          @JsonKey(name: 'commentContent') final String content,
          final int? replyCommentId,
          final int? replyUserId,
          final String replyUserName,
          @DateTimeJsonConverter() final DateTime? createdDate,
          @JsonKey(name: 'subCommentVO') final List<CommentModel> replies}) =
      _$CommentModelImpl;
  const _CommentModel._() : super._();

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$CommentModelImpl.fromJson;

  @override

  /// 评论id
  int get commentId;
  @override

  /// 评论人id
  int get commentUserId;
  @override

  /// 作业编码
  String get taskCode;
  @override

  /// 同学进度id
  int? get taskCodeSubId;
  @override

  /// 用户姓名
  String get userName;
  @override

  /// 用户昵称
  String get nickName;
  @override

  /// 学生编码
  String? get studentCode;
  @override

  /// 学生id
  int? get studentId;
  @override

  /// 学生姓名
  String get studentName;
  @override

  /// 学生头像
  String? get studentAvatarUrl;
  @override

  /// 家长头像
  @JsonKey(name: 'avatarUrl')
  String? get parentAvatarUrl;
  @override

  /// 家庭关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship;
  @override

  /// 家庭关系描述
  @JsonKey(name: 'familyRelationDesc')
  String get relationshipDesc;
  @override

  /// 评论内容
  @JsonKey(name: 'commentContent')
  String get content;
  @override

  /// 回复所指向父评论id
  int? get replyCommentId;
  @override

  /// 回复人id
  int? get replyUserId;
  @override

  /// 回复人名称
  String get replyUserName;
  @override

  /// 评论时间
  @DateTimeJsonConverter()
  DateTime? get createdDate;
  @override

  /// 评论回复列表
  @JsonKey(name: 'subCommentVO')
  List<CommentModel> get replies;
  @override
  @JsonKey(ignore: true)
  _$$CommentModelImplCopyWith<_$CommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
