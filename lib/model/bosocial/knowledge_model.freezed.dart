// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knowledge_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KnowledgeRefreshOtherParam _$KnowledgeRefreshOtherParamFromJson(
    Map<String, dynamic> json) {
  return _KnowledgeRefreshOtherParam.fromJson(json);
}

/// @nodoc
mixin _$KnowledgeRefreshOtherParam {
  /// 分类id
  String? get catalogId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnowledgeRefreshOtherParamCopyWith<KnowledgeRefreshOtherParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeRefreshOtherParamCopyWith<$Res> {
  factory $KnowledgeRefreshOtherParamCopyWith(KnowledgeRefreshOtherParam value,
          $Res Function(KnowledgeRefreshOtherParam) then) =
      _$KnowledgeRefreshOtherParamCopyWithImpl<$Res,
          KnowledgeRefreshOtherParam>;
  @useResult
  $Res call({String? catalogId});
}

/// @nodoc
class _$KnowledgeRefreshOtherParamCopyWithImpl<$Res,
        $Val extends KnowledgeRefreshOtherParam>
    implements $KnowledgeRefreshOtherParamCopyWith<$Res> {
  _$KnowledgeRefreshOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogId = freezed,
  }) {
    return _then(_value.copyWith(
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnowledgeRefreshOtherParamImplCopyWith<$Res>
    implements $KnowledgeRefreshOtherParamCopyWith<$Res> {
  factory _$$KnowledgeRefreshOtherParamImplCopyWith(
          _$KnowledgeRefreshOtherParamImpl value,
          $Res Function(_$KnowledgeRefreshOtherParamImpl) then) =
      __$$KnowledgeRefreshOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? catalogId});
}

/// @nodoc
class __$$KnowledgeRefreshOtherParamImplCopyWithImpl<$Res>
    extends _$KnowledgeRefreshOtherParamCopyWithImpl<$Res,
        _$KnowledgeRefreshOtherParamImpl>
    implements _$$KnowledgeRefreshOtherParamImplCopyWith<$Res> {
  __$$KnowledgeRefreshOtherParamImplCopyWithImpl(
      _$KnowledgeRefreshOtherParamImpl _value,
      $Res Function(_$KnowledgeRefreshOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogId = freezed,
  }) {
    return _then(_$KnowledgeRefreshOtherParamImpl(
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KnowledgeRefreshOtherParamImpl extends _KnowledgeRefreshOtherParam {
  const _$KnowledgeRefreshOtherParamImpl({this.catalogId}) : super._();

  factory _$KnowledgeRefreshOtherParamImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KnowledgeRefreshOtherParamImplFromJson(json);

  /// 分类id
  @override
  final String? catalogId;

  @override
  String toString() {
    return 'KnowledgeRefreshOtherParam(catalogId: $catalogId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnowledgeRefreshOtherParamImpl &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, catalogId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KnowledgeRefreshOtherParamImplCopyWith<_$KnowledgeRefreshOtherParamImpl>
      get copyWith => __$$KnowledgeRefreshOtherParamImplCopyWithImpl<
          _$KnowledgeRefreshOtherParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KnowledgeRefreshOtherParamImplToJson(
      this,
    );
  }
}

abstract class _KnowledgeRefreshOtherParam extends KnowledgeRefreshOtherParam {
  const factory _KnowledgeRefreshOtherParam({final String? catalogId}) =
      _$KnowledgeRefreshOtherParamImpl;
  const _KnowledgeRefreshOtherParam._() : super._();

  factory _KnowledgeRefreshOtherParam.fromJson(Map<String, dynamic> json) =
      _$KnowledgeRefreshOtherParamImpl.fromJson;

  @override

  /// 分类id
  String? get catalogId;
  @override
  @JsonKey(ignore: true)
  _$$KnowledgeRefreshOtherParamImplCopyWith<_$KnowledgeRefreshOtherParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CatalogModel _$CatalogModelFromJson(Map<String, dynamic> json) {
  return _CatalogModel.fromJson(json);
}

/// @nodoc
mixin _$CatalogModel {
  /// 分类id
  String get catalogId => throw _privateConstructorUsedError;

  /// 分类名称
  String get catalogName => throw _privateConstructorUsedError;

  /// 排序
  int get sortNo => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 业务状态
  @StatusJsonConverter()
  Status get status => throw _privateConstructorUsedError;

  /// 创建人
  String? get createUser => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新人
  String? get updateUser => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogModelCopyWith<CatalogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogModelCopyWith<$Res> {
  factory $CatalogModelCopyWith(
          CatalogModel value, $Res Function(CatalogModel) then) =
      _$CatalogModelCopyWithImpl<$Res, CatalogModel>;
  @useResult
  $Res call(
      {String catalogId,
      String catalogName,
      int sortNo,
      @Int2BoolJsonConverter() bool isDeleted,
      @StatusJsonConverter() Status status,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$CatalogModelCopyWithImpl<$Res, $Val extends CatalogModel>
    implements $CatalogModelCopyWith<$Res> {
  _$CatalogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogId = null,
    Object? catalogName = null,
    Object? sortNo = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? createUser = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      catalogId: null == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogName: null == catalogName
          ? _value.catalogName
          : catalogName // ignore: cast_nullable_to_non_nullable
              as String,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatalogModelImplCopyWith<$Res>
    implements $CatalogModelCopyWith<$Res> {
  factory _$$CatalogModelImplCopyWith(
          _$CatalogModelImpl value, $Res Function(_$CatalogModelImpl) then) =
      __$$CatalogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String catalogId,
      String catalogName,
      int sortNo,
      @Int2BoolJsonConverter() bool isDeleted,
      @StatusJsonConverter() Status status,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$CatalogModelImplCopyWithImpl<$Res>
    extends _$CatalogModelCopyWithImpl<$Res, _$CatalogModelImpl>
    implements _$$CatalogModelImplCopyWith<$Res> {
  __$$CatalogModelImplCopyWithImpl(
      _$CatalogModelImpl _value, $Res Function(_$CatalogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catalogId = null,
    Object? catalogName = null,
    Object? sortNo = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? createUser = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$CatalogModelImpl(
      catalogId: null == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String,
      catalogName: null == catalogName
          ? _value.catalogName
          : catalogName // ignore: cast_nullable_to_non_nullable
              as String,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogModelImpl extends _CatalogModel {
  const _$CatalogModelImpl(
      {required this.catalogId,
      this.catalogName = '',
      this.sortNo = 0,
      @Int2BoolJsonConverter() this.isDeleted = false,
      @StatusJsonConverter() this.status = Status.unknown,
      this.createUser,
      @DateTimeJsonConverter() this.createTime,
      this.updateUser,
      @DateTimeJsonConverter() this.updateTime})
      : super._();

  factory _$CatalogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogModelImplFromJson(json);

  /// 分类id
  @override
  final String catalogId;

  /// 分类名称
  @override
  @JsonKey()
  final String catalogName;

  /// 排序
  @override
  @JsonKey()
  final int sortNo;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 业务状态
  @override
  @JsonKey()
  @StatusJsonConverter()
  final Status status;

  /// 创建人
  @override
  final String? createUser;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新人
  @override
  final String? updateUser;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  @override
  String toString() {
    return 'CatalogModel(catalogId: $catalogId, catalogName: $catalogName, sortNo: $sortNo, isDeleted: $isDeleted, status: $status, createUser: $createUser, createTime: $createTime, updateUser: $updateUser, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogModelImpl &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.catalogName, catalogName) ||
                other.catalogName == catalogName) &&
            (identical(other.sortNo, sortNo) || other.sortNo == sortNo) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, catalogId, catalogName, sortNo,
      isDeleted, status, createUser, createTime, updateUser, updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogModelImplCopyWith<_$CatalogModelImpl> get copyWith =>
      __$$CatalogModelImplCopyWithImpl<_$CatalogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogModelImplToJson(
      this,
    );
  }
}

abstract class _CatalogModel extends CatalogModel {
  const factory _CatalogModel(
          {required final String catalogId,
          final String catalogName,
          final int sortNo,
          @Int2BoolJsonConverter() final bool isDeleted,
          @StatusJsonConverter() final Status status,
          final String? createUser,
          @DateTimeJsonConverter() final DateTime? createTime,
          final String? updateUser,
          @DateTimeJsonConverter() final DateTime? updateTime}) =
      _$CatalogModelImpl;
  const _CatalogModel._() : super._();

  factory _CatalogModel.fromJson(Map<String, dynamic> json) =
      _$CatalogModelImpl.fromJson;

  @override

  /// 分类id
  String get catalogId;
  @override

  /// 分类名称
  String get catalogName;
  @override

  /// 排序
  int get sortNo;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 业务状态
  @StatusJsonConverter()
  Status get status;
  @override

  /// 创建人
  String? get createUser;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新人
  String? get updateUser;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$CatalogModelImplCopyWith<_$CatalogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KnowledgeModel _$KnowledgeModelFromJson(Map<String, dynamic> json) {
  return _KnowledgeModel.fromJson(json);
}

/// @nodoc
mixin _$KnowledgeModel {
  /// 干货id
  @String2IntJsonConverter()
  String get knowledgeId => throw _privateConstructorUsedError;

  /// 作者
  String get author => throw _privateConstructorUsedError;

  /// 分类id
  String? get catalogId => throw _privateConstructorUsedError;

  /// 评论数
  int get commentNum => throw _privateConstructorUsedError;

  /// 收藏数
  int get likeNum => throw _privateConstructorUsedError;

  /// 标题
  String get title => throw _privateConstructorUsedError;

  /// 内容
  String get content => throw _privateConstructorUsedError;

  /// 封面
  @JsonKey(name: 'coverUrl')
  String? get url => throw _privateConstructorUsedError;

  /// 视频地址
  String? get videoUrl => throw _privateConstructorUsedError;

  /// 干货类型
  @KnowledgeTypeJsonConverter()
  @JsonKey(name: 'knType')
  KnowledgeType get type => throw _privateConstructorUsedError;

  /// 可见范围
  @JsonKey(name: 'schoolScope')
  @KnowledgeScopeJsonConverter()
  KnowledgeScope get scope => throw _privateConstructorUsedError;

  /// 学生观看人数
  int get studentViewNum => throw _privateConstructorUsedError;

  /// 教师编码
  String? get teacherCode => throw _privateConstructorUsedError;

  /// 教师姓名
  String get teacherName => throw _privateConstructorUsedError;

  /// 教师观看人数
  int get teacherViewNum => throw _privateConstructorUsedError;

  /// 状态
  @StatusJsonConverter()
  Status get status => throw _privateConstructorUsedError;

  /// 发布单位
  String get deployOrg => throw _privateConstructorUsedError;

  /// 发布人
  String? get deployUser => throw _privateConstructorUsedError;

  /// 发布人编码
  String? get deployUserCode => throw _privateConstructorUsedError;

  /// 发布人姓名
  String get deployUserName => throw _privateConstructorUsedError;

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get deployTime => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 创建人
  String? get createUser => throw _privateConstructorUsedError;

  /// 创建人姓名
  String? get createUserName => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新人
  String? get updateUser => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  /// 撤回人
  int? get withdrawUserId => throw _privateConstructorUsedError;

  /// 撤回人姓名
  String? get withdrawUserName => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get withdrawTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnowledgeModelCopyWith<KnowledgeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeModelCopyWith<$Res> {
  factory $KnowledgeModelCopyWith(
          KnowledgeModel value, $Res Function(KnowledgeModel) then) =
      _$KnowledgeModelCopyWithImpl<$Res, KnowledgeModel>;
  @useResult
  $Res call(
      {@String2IntJsonConverter() String knowledgeId,
      String author,
      String? catalogId,
      int commentNum,
      int likeNum,
      String title,
      String content,
      @JsonKey(name: 'coverUrl') String? url,
      String? videoUrl,
      @KnowledgeTypeJsonConverter() @JsonKey(name: 'knType') KnowledgeType type,
      @JsonKey(name: 'schoolScope')
      @KnowledgeScopeJsonConverter()
      KnowledgeScope scope,
      int studentViewNum,
      String? teacherCode,
      String teacherName,
      int teacherViewNum,
      @StatusJsonConverter() Status status,
      String deployOrg,
      String? deployUser,
      String? deployUserCode,
      String deployUserName,
      @DateTimeJsonConverter() DateTime? deployTime,
      @Int2BoolJsonConverter() bool isDeleted,
      String? createUser,
      String? createUserName,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime,
      int? withdrawUserId,
      String? withdrawUserName,
      @DateTimeJsonConverter() DateTime? withdrawTime});
}

/// @nodoc
class _$KnowledgeModelCopyWithImpl<$Res, $Val extends KnowledgeModel>
    implements $KnowledgeModelCopyWith<$Res> {
  _$KnowledgeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knowledgeId = null,
    Object? author = null,
    Object? catalogId = freezed,
    Object? commentNum = null,
    Object? likeNum = null,
    Object? title = null,
    Object? content = null,
    Object? url = freezed,
    Object? videoUrl = freezed,
    Object? type = null,
    Object? scope = null,
    Object? studentViewNum = null,
    Object? teacherCode = freezed,
    Object? teacherName = null,
    Object? teacherViewNum = null,
    Object? status = null,
    Object? deployOrg = null,
    Object? deployUser = freezed,
    Object? deployUserCode = freezed,
    Object? deployUserName = null,
    Object? deployTime = freezed,
    Object? isDeleted = null,
    Object? createUser = freezed,
    Object? createUserName = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
    Object? withdrawUserId = freezed,
    Object? withdrawUserName = freezed,
    Object? withdrawTime = freezed,
  }) {
    return _then(_value.copyWith(
      knowledgeId: null == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KnowledgeType,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as KnowledgeScope,
      studentViewNum: null == studentViewNum
          ? _value.studentViewNum
          : studentViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      teacherCode: freezed == teacherCode
          ? _value.teacherCode
          : teacherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherViewNum: null == teacherViewNum
          ? _value.teacherViewNum
          : teacherViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      deployOrg: null == deployOrg
          ? _value.deployOrg
          : deployOrg // ignore: cast_nullable_to_non_nullable
              as String,
      deployUser: freezed == deployUser
          ? _value.deployUser
          : deployUser // ignore: cast_nullable_to_non_nullable
              as String?,
      deployUserCode: freezed == deployUserCode
          ? _value.deployUserCode
          : deployUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      deployUserName: null == deployUserName
          ? _value.deployUserName
          : deployUserName // ignore: cast_nullable_to_non_nullable
              as String,
      deployTime: freezed == deployTime
          ? _value.deployTime
          : deployTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserName: freezed == createUserName
          ? _value.createUserName
          : createUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withdrawUserId: freezed == withdrawUserId
          ? _value.withdrawUserId
          : withdrawUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawUserName: freezed == withdrawUserName
          ? _value.withdrawUserName
          : withdrawUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawTime: freezed == withdrawTime
          ? _value.withdrawTime
          : withdrawTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnowledgeModelImplCopyWith<$Res>
    implements $KnowledgeModelCopyWith<$Res> {
  factory _$$KnowledgeModelImplCopyWith(_$KnowledgeModelImpl value,
          $Res Function(_$KnowledgeModelImpl) then) =
      __$$KnowledgeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2IntJsonConverter() String knowledgeId,
      String author,
      String? catalogId,
      int commentNum,
      int likeNum,
      String title,
      String content,
      @JsonKey(name: 'coverUrl') String? url,
      String? videoUrl,
      @KnowledgeTypeJsonConverter() @JsonKey(name: 'knType') KnowledgeType type,
      @JsonKey(name: 'schoolScope')
      @KnowledgeScopeJsonConverter()
      KnowledgeScope scope,
      int studentViewNum,
      String? teacherCode,
      String teacherName,
      int teacherViewNum,
      @StatusJsonConverter() Status status,
      String deployOrg,
      String? deployUser,
      String? deployUserCode,
      String deployUserName,
      @DateTimeJsonConverter() DateTime? deployTime,
      @Int2BoolJsonConverter() bool isDeleted,
      String? createUser,
      String? createUserName,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime,
      int? withdrawUserId,
      String? withdrawUserName,
      @DateTimeJsonConverter() DateTime? withdrawTime});
}

/// @nodoc
class __$$KnowledgeModelImplCopyWithImpl<$Res>
    extends _$KnowledgeModelCopyWithImpl<$Res, _$KnowledgeModelImpl>
    implements _$$KnowledgeModelImplCopyWith<$Res> {
  __$$KnowledgeModelImplCopyWithImpl(
      _$KnowledgeModelImpl _value, $Res Function(_$KnowledgeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knowledgeId = null,
    Object? author = null,
    Object? catalogId = freezed,
    Object? commentNum = null,
    Object? likeNum = null,
    Object? title = null,
    Object? content = null,
    Object? url = freezed,
    Object? videoUrl = freezed,
    Object? type = null,
    Object? scope = null,
    Object? studentViewNum = null,
    Object? teacherCode = freezed,
    Object? teacherName = null,
    Object? teacherViewNum = null,
    Object? status = null,
    Object? deployOrg = null,
    Object? deployUser = freezed,
    Object? deployUserCode = freezed,
    Object? deployUserName = null,
    Object? deployTime = freezed,
    Object? isDeleted = null,
    Object? createUser = freezed,
    Object? createUserName = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
    Object? withdrawUserId = freezed,
    Object? withdrawUserName = freezed,
    Object? withdrawTime = freezed,
  }) {
    return _then(_$KnowledgeModelImpl(
      knowledgeId: null == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KnowledgeType,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as KnowledgeScope,
      studentViewNum: null == studentViewNum
          ? _value.studentViewNum
          : studentViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      teacherCode: freezed == teacherCode
          ? _value.teacherCode
          : teacherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherViewNum: null == teacherViewNum
          ? _value.teacherViewNum
          : teacherViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      deployOrg: null == deployOrg
          ? _value.deployOrg
          : deployOrg // ignore: cast_nullable_to_non_nullable
              as String,
      deployUser: freezed == deployUser
          ? _value.deployUser
          : deployUser // ignore: cast_nullable_to_non_nullable
              as String?,
      deployUserCode: freezed == deployUserCode
          ? _value.deployUserCode
          : deployUserCode // ignore: cast_nullable_to_non_nullable
              as String?,
      deployUserName: null == deployUserName
          ? _value.deployUserName
          : deployUserName // ignore: cast_nullable_to_non_nullable
              as String,
      deployTime: freezed == deployTime
          ? _value.deployTime
          : deployTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserName: freezed == createUserName
          ? _value.createUserName
          : createUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withdrawUserId: freezed == withdrawUserId
          ? _value.withdrawUserId
          : withdrawUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawUserName: freezed == withdrawUserName
          ? _value.withdrawUserName
          : withdrawUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawTime: freezed == withdrawTime
          ? _value.withdrawTime
          : withdrawTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KnowledgeModelImpl extends _KnowledgeModel {
  const _$KnowledgeModelImpl(
      {@String2IntJsonConverter() required this.knowledgeId,
      this.author = '',
      this.catalogId,
      this.commentNum = 0,
      this.likeNum = 0,
      this.title = '',
      this.content = '',
      @JsonKey(name: 'coverUrl') this.url,
      this.videoUrl,
      @KnowledgeTypeJsonConverter()
      @JsonKey(name: 'knType')
      this.type = KnowledgeType.unknown,
      @JsonKey(name: 'schoolScope')
      @KnowledgeScopeJsonConverter()
      this.scope = KnowledgeScope.unknown,
      this.studentViewNum = 0,
      this.teacherCode,
      this.teacherName = '',
      this.teacherViewNum = 0,
      @StatusJsonConverter() this.status = Status.unknown,
      this.deployOrg = '',
      this.deployUser,
      this.deployUserCode,
      this.deployUserName = '',
      @DateTimeJsonConverter() this.deployTime,
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.createUser,
      this.createUserName,
      @DateTimeJsonConverter() this.createTime,
      this.updateUser,
      @DateTimeJsonConverter() this.updateTime,
      this.withdrawUserId,
      this.withdrawUserName,
      @DateTimeJsonConverter() this.withdrawTime})
      : super._();

  factory _$KnowledgeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KnowledgeModelImplFromJson(json);

  /// 干货id
  @override
  @String2IntJsonConverter()
  final String knowledgeId;

  /// 作者
  @override
  @JsonKey()
  final String author;

  /// 分类id
  @override
  final String? catalogId;

  /// 评论数
  @override
  @JsonKey()
  final int commentNum;

  /// 收藏数
  @override
  @JsonKey()
  final int likeNum;

  /// 标题
  @override
  @JsonKey()
  final String title;

  /// 内容
  @override
  @JsonKey()
  final String content;

  /// 封面
  @override
  @JsonKey(name: 'coverUrl')
  final String? url;

  /// 视频地址
  @override
  final String? videoUrl;

  /// 干货类型
  @override
  @KnowledgeTypeJsonConverter()
  @JsonKey(name: 'knType')
  final KnowledgeType type;

  /// 可见范围
  @override
  @JsonKey(name: 'schoolScope')
  @KnowledgeScopeJsonConverter()
  final KnowledgeScope scope;

  /// 学生观看人数
  @override
  @JsonKey()
  final int studentViewNum;

  /// 教师编码
  @override
  final String? teacherCode;

  /// 教师姓名
  @override
  @JsonKey()
  final String teacherName;

  /// 教师观看人数
  @override
  @JsonKey()
  final int teacherViewNum;

  /// 状态
  @override
  @JsonKey()
  @StatusJsonConverter()
  final Status status;

  /// 发布单位
  @override
  @JsonKey()
  final String deployOrg;

  /// 发布人
  @override
  final String? deployUser;

  /// 发布人编码
  @override
  final String? deployUserCode;

  /// 发布人姓名
  @override
  @JsonKey()
  final String deployUserName;

  /// 发布时间
  @override
  @DateTimeJsonConverter()
  final DateTime? deployTime;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 创建人
  @override
  final String? createUser;

  /// 创建人姓名
  @override
  final String? createUserName;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新人
  @override
  final String? updateUser;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  /// 撤回人
  @override
  final int? withdrawUserId;

  /// 撤回人姓名
  @override
  final String? withdrawUserName;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? withdrawTime;

  @override
  String toString() {
    return 'KnowledgeModel(knowledgeId: $knowledgeId, author: $author, catalogId: $catalogId, commentNum: $commentNum, likeNum: $likeNum, title: $title, content: $content, url: $url, videoUrl: $videoUrl, type: $type, scope: $scope, studentViewNum: $studentViewNum, teacherCode: $teacherCode, teacherName: $teacherName, teacherViewNum: $teacherViewNum, status: $status, deployOrg: $deployOrg, deployUser: $deployUser, deployUserCode: $deployUserCode, deployUserName: $deployUserName, deployTime: $deployTime, isDeleted: $isDeleted, createUser: $createUser, createUserName: $createUserName, createTime: $createTime, updateUser: $updateUser, updateTime: $updateTime, withdrawUserId: $withdrawUserId, withdrawUserName: $withdrawUserName, withdrawTime: $withdrawTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnowledgeModelImpl &&
            (identical(other.knowledgeId, knowledgeId) ||
                other.knowledgeId == knowledgeId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.commentNum, commentNum) ||
                other.commentNum == commentNum) &&
            (identical(other.likeNum, likeNum) || other.likeNum == likeNum) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.studentViewNum, studentViewNum) ||
                other.studentViewNum == studentViewNum) &&
            (identical(other.teacherCode, teacherCode) ||
                other.teacherCode == teacherCode) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.teacherViewNum, teacherViewNum) ||
                other.teacherViewNum == teacherViewNum) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deployOrg, deployOrg) ||
                other.deployOrg == deployOrg) &&
            (identical(other.deployUser, deployUser) ||
                other.deployUser == deployUser) &&
            (identical(other.deployUserCode, deployUserCode) ||
                other.deployUserCode == deployUserCode) &&
            (identical(other.deployUserName, deployUserName) ||
                other.deployUserName == deployUserName) &&
            (identical(other.deployTime, deployTime) ||
                other.deployTime == deployTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.createUserName, createUserName) ||
                other.createUserName == createUserName) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.withdrawUserId, withdrawUserId) ||
                other.withdrawUserId == withdrawUserId) &&
            (identical(other.withdrawUserName, withdrawUserName) ||
                other.withdrawUserName == withdrawUserName) &&
            (identical(other.withdrawTime, withdrawTime) ||
                other.withdrawTime == withdrawTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        knowledgeId,
        author,
        catalogId,
        commentNum,
        likeNum,
        title,
        content,
        url,
        videoUrl,
        type,
        scope,
        studentViewNum,
        teacherCode,
        teacherName,
        teacherViewNum,
        status,
        deployOrg,
        deployUser,
        deployUserCode,
        deployUserName,
        deployTime,
        isDeleted,
        createUser,
        createUserName,
        createTime,
        updateUser,
        updateTime,
        withdrawUserId,
        withdrawUserName,
        withdrawTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KnowledgeModelImplCopyWith<_$KnowledgeModelImpl> get copyWith =>
      __$$KnowledgeModelImplCopyWithImpl<_$KnowledgeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KnowledgeModelImplToJson(
      this,
    );
  }
}

abstract class _KnowledgeModel extends KnowledgeModel {
  const factory _KnowledgeModel(
          {@String2IntJsonConverter() required final String knowledgeId,
          final String author,
          final String? catalogId,
          final int commentNum,
          final int likeNum,
          final String title,
          final String content,
          @JsonKey(name: 'coverUrl') final String? url,
          final String? videoUrl,
          @KnowledgeTypeJsonConverter()
          @JsonKey(name: 'knType')
          final KnowledgeType type,
          @JsonKey(name: 'schoolScope')
          @KnowledgeScopeJsonConverter()
          final KnowledgeScope scope,
          final int studentViewNum,
          final String? teacherCode,
          final String teacherName,
          final int teacherViewNum,
          @StatusJsonConverter() final Status status,
          final String deployOrg,
          final String? deployUser,
          final String? deployUserCode,
          final String deployUserName,
          @DateTimeJsonConverter() final DateTime? deployTime,
          @Int2BoolJsonConverter() final bool isDeleted,
          final String? createUser,
          final String? createUserName,
          @DateTimeJsonConverter() final DateTime? createTime,
          final String? updateUser,
          @DateTimeJsonConverter() final DateTime? updateTime,
          final int? withdrawUserId,
          final String? withdrawUserName,
          @DateTimeJsonConverter() final DateTime? withdrawTime}) =
      _$KnowledgeModelImpl;
  const _KnowledgeModel._() : super._();

  factory _KnowledgeModel.fromJson(Map<String, dynamic> json) =
      _$KnowledgeModelImpl.fromJson;

  @override

  /// 干货id
  @String2IntJsonConverter()
  String get knowledgeId;
  @override

  /// 作者
  String get author;
  @override

  /// 分类id
  String? get catalogId;
  @override

  /// 评论数
  int get commentNum;
  @override

  /// 收藏数
  int get likeNum;
  @override

  /// 标题
  String get title;
  @override

  /// 内容
  String get content;
  @override

  /// 封面
  @JsonKey(name: 'coverUrl')
  String? get url;
  @override

  /// 视频地址
  String? get videoUrl;
  @override

  /// 干货类型
  @KnowledgeTypeJsonConverter()
  @JsonKey(name: 'knType')
  KnowledgeType get type;
  @override

  /// 可见范围
  @JsonKey(name: 'schoolScope')
  @KnowledgeScopeJsonConverter()
  KnowledgeScope get scope;
  @override

  /// 学生观看人数
  int get studentViewNum;
  @override

  /// 教师编码
  String? get teacherCode;
  @override

  /// 教师姓名
  String get teacherName;
  @override

  /// 教师观看人数
  int get teacherViewNum;
  @override

  /// 状态
  @StatusJsonConverter()
  Status get status;
  @override

  /// 发布单位
  String get deployOrg;
  @override

  /// 发布人
  String? get deployUser;
  @override

  /// 发布人编码
  String? get deployUserCode;
  @override

  /// 发布人姓名
  String get deployUserName;
  @override

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get deployTime;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 创建人
  String? get createUser;
  @override

  /// 创建人姓名
  String? get createUserName;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新人
  String? get updateUser;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override

  /// 撤回人
  int? get withdrawUserId;
  @override

  /// 撤回人姓名
  String? get withdrawUserName;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get withdrawTime;
  @override
  @JsonKey(ignore: true)
  _$$KnowledgeModelImplCopyWith<_$KnowledgeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagModel _$TagModelFromJson(Map<String, dynamic> json) {
  return _TagModel.fromJson(json);
}

/// @nodoc
mixin _$TagModel {
  /// 标签id
  String get tagId => throw _privateConstructorUsedError;

  /// 干货id
  @String2IntNullableJsonConverter()
  String? get knowledgeId => throw _privateConstructorUsedError;

  /// 关联id
  String? get relaId => throw _privateConstructorUsedError;

  /// 标签名称
  String get tagName => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 业务状态
  @StatusJsonConverter()
  Status get status => throw _privateConstructorUsedError;

  /// 创建人
  String? get createUser => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新人
  String? get updateUser => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagModelCopyWith<TagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagModelCopyWith<$Res> {
  factory $TagModelCopyWith(TagModel value, $Res Function(TagModel) then) =
      _$TagModelCopyWithImpl<$Res, TagModel>;
  @useResult
  $Res call(
      {String tagId,
      @String2IntNullableJsonConverter() String? knowledgeId,
      String? relaId,
      String tagName,
      @Int2BoolJsonConverter() bool isDeleted,
      @StatusJsonConverter() Status status,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$TagModelCopyWithImpl<$Res, $Val extends TagModel>
    implements $TagModelCopyWith<$Res> {
  _$TagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
    Object? knowledgeId = freezed,
    Object? relaId = freezed,
    Object? tagName = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? createUser = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      knowledgeId: freezed == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String?,
      relaId: freezed == relaId
          ? _value.relaId
          : relaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagModelImplCopyWith<$Res>
    implements $TagModelCopyWith<$Res> {
  factory _$$TagModelImplCopyWith(
          _$TagModelImpl value, $Res Function(_$TagModelImpl) then) =
      __$$TagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tagId,
      @String2IntNullableJsonConverter() String? knowledgeId,
      String? relaId,
      String tagName,
      @Int2BoolJsonConverter() bool isDeleted,
      @StatusJsonConverter() Status status,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$TagModelImplCopyWithImpl<$Res>
    extends _$TagModelCopyWithImpl<$Res, _$TagModelImpl>
    implements _$$TagModelImplCopyWith<$Res> {
  __$$TagModelImplCopyWithImpl(
      _$TagModelImpl _value, $Res Function(_$TagModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
    Object? knowledgeId = freezed,
    Object? relaId = freezed,
    Object? tagName = null,
    Object? isDeleted = null,
    Object? status = null,
    Object? createUser = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$TagModelImpl(
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as String,
      knowledgeId: freezed == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String?,
      relaId: freezed == relaId
          ? _value.relaId
          : relaId // ignore: cast_nullable_to_non_nullable
              as String?,
      tagName: null == tagName
          ? _value.tagName
          : tagName // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagModelImpl extends _TagModel {
  const _$TagModelImpl(
      {required this.tagId,
      @String2IntNullableJsonConverter() this.knowledgeId,
      this.relaId,
      this.tagName = '',
      @Int2BoolJsonConverter() this.isDeleted = false,
      @StatusJsonConverter() this.status = Status.unknown,
      this.createUser,
      @DateTimeJsonConverter() this.createTime,
      this.updateUser,
      @DateTimeJsonConverter() this.updateTime})
      : super._();

  factory _$TagModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagModelImplFromJson(json);

  /// 标签id
  @override
  final String tagId;

  /// 干货id
  @override
  @String2IntNullableJsonConverter()
  final String? knowledgeId;

  /// 关联id
  @override
  final String? relaId;

  /// 标签名称
  @override
  @JsonKey()
  final String tagName;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 业务状态
  @override
  @JsonKey()
  @StatusJsonConverter()
  final Status status;

  /// 创建人
  @override
  final String? createUser;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新人
  @override
  final String? updateUser;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  @override
  String toString() {
    return 'TagModel(tagId: $tagId, knowledgeId: $knowledgeId, relaId: $relaId, tagName: $tagName, isDeleted: $isDeleted, status: $status, createUser: $createUser, createTime: $createTime, updateUser: $updateUser, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagModelImpl &&
            (identical(other.tagId, tagId) || other.tagId == tagId) &&
            (identical(other.knowledgeId, knowledgeId) ||
                other.knowledgeId == knowledgeId) &&
            (identical(other.relaId, relaId) || other.relaId == relaId) &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tagId,
      knowledgeId,
      relaId,
      tagName,
      isDeleted,
      status,
      createUser,
      createTime,
      updateUser,
      updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagModelImplCopyWith<_$TagModelImpl> get copyWith =>
      __$$TagModelImplCopyWithImpl<_$TagModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagModelImplToJson(
      this,
    );
  }
}

abstract class _TagModel extends TagModel {
  const factory _TagModel(
      {required final String tagId,
      @String2IntNullableJsonConverter() final String? knowledgeId,
      final String? relaId,
      final String tagName,
      @Int2BoolJsonConverter() final bool isDeleted,
      @StatusJsonConverter() final Status status,
      final String? createUser,
      @DateTimeJsonConverter() final DateTime? createTime,
      final String? updateUser,
      @DateTimeJsonConverter() final DateTime? updateTime}) = _$TagModelImpl;
  const _TagModel._() : super._();

  factory _TagModel.fromJson(Map<String, dynamic> json) =
      _$TagModelImpl.fromJson;

  @override

  /// 标签id
  String get tagId;
  @override

  /// 干货id
  @String2IntNullableJsonConverter()
  String? get knowledgeId;
  @override

  /// 关联id
  String? get relaId;
  @override

  /// 标签名称
  String get tagName;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 业务状态
  @StatusJsonConverter()
  Status get status;
  @override

  /// 创建人
  String? get createUser;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新人
  String? get updateUser;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$TagModelImplCopyWith<_$TagModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KnowledgeDetailModel _$KnowledgeDetailModelFromJson(Map<String, dynamic> json) {
  return _KnowledgeDetailModel.fromJson(json);
}

/// @nodoc
mixin _$KnowledgeDetailModel {
  /// 干货id
  @String2IntJsonConverter()
  String get knowledgeId => throw _privateConstructorUsedError;

  /// 作者
  String get author => throw _privateConstructorUsedError;

  /// 分类id
  String? get catalogId => throw _privateConstructorUsedError;

  /// 评论数
  int get commentNum => throw _privateConstructorUsedError;

  /// 收藏数
  int get likeNum => throw _privateConstructorUsedError;

  /// 自己是否点赞
  @JsonKey(name: 'selfLikeFlag')
  bool get selfLike => throw _privateConstructorUsedError;

  /// 标题
  String get title => throw _privateConstructorUsedError;

  /// 内容
  String get content => throw _privateConstructorUsedError;

  /// 封面
  @JsonKey(name: 'coverUrl')
  String? get url => throw _privateConstructorUsedError;

  /// 视频地址
  String? get videoUrl => throw _privateConstructorUsedError;

  /// 干货类型
  @KnowledgeTypeJsonConverter()
  @JsonKey(name: 'knType')
  KnowledgeType get type => throw _privateConstructorUsedError;

  /// 可见范围
  @JsonKey(name: 'schoolScope')
  @KnowledgeScopeJsonConverter()
  KnowledgeScope get scope => throw _privateConstructorUsedError;

  /// 学生观看人数
  int get studentViewNum => throw _privateConstructorUsedError;

  /// 教师编码
  String? get teacherCode => throw _privateConstructorUsedError;

  /// 教师姓名
  String get teacherName => throw _privateConstructorUsedError;

  /// 教师观看人数
  int get teacherViewNum => throw _privateConstructorUsedError;

  /// 状态
  @StatusJsonConverter()
  Status get status => throw _privateConstructorUsedError;

  /// 发布单位
  String get deployOrg => throw _privateConstructorUsedError;

  /// 发布人
  String? get deployUser => throw _privateConstructorUsedError;

  /// 发布人编码
  String get deployUserCode => throw _privateConstructorUsedError;

  /// 发布人姓名
  String get deployUserName => throw _privateConstructorUsedError;

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get deployTime => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 标签列表
  @JsonKey(name: 'tagList')
  List<TagModel> get tags => throw _privateConstructorUsedError;

  /// 创建人
  String? get createUser => throw _privateConstructorUsedError;

  /// 创建人姓名
  String? get createUserName => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新人
  String? get updateUser => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  /// 撤回人
  int? get withdrawUserId => throw _privateConstructorUsedError;

  /// 撤回人姓名
  String? get withdrawUserName => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get withdrawTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnowledgeDetailModelCopyWith<KnowledgeDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeDetailModelCopyWith<$Res> {
  factory $KnowledgeDetailModelCopyWith(KnowledgeDetailModel value,
          $Res Function(KnowledgeDetailModel) then) =
      _$KnowledgeDetailModelCopyWithImpl<$Res, KnowledgeDetailModel>;
  @useResult
  $Res call(
      {@String2IntJsonConverter() String knowledgeId,
      String author,
      String? catalogId,
      int commentNum,
      int likeNum,
      @JsonKey(name: 'selfLikeFlag') bool selfLike,
      String title,
      String content,
      @JsonKey(name: 'coverUrl') String? url,
      String? videoUrl,
      @KnowledgeTypeJsonConverter() @JsonKey(name: 'knType') KnowledgeType type,
      @JsonKey(name: 'schoolScope')
      @KnowledgeScopeJsonConverter()
      KnowledgeScope scope,
      int studentViewNum,
      String? teacherCode,
      String teacherName,
      int teacherViewNum,
      @StatusJsonConverter() Status status,
      String deployOrg,
      String? deployUser,
      String deployUserCode,
      String deployUserName,
      @DateTimeJsonConverter() DateTime? deployTime,
      @Int2BoolJsonConverter() bool isDeleted,
      @JsonKey(name: 'tagList') List<TagModel> tags,
      String? createUser,
      String? createUserName,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime,
      int? withdrawUserId,
      String? withdrawUserName,
      @DateTimeJsonConverter() DateTime? withdrawTime});
}

/// @nodoc
class _$KnowledgeDetailModelCopyWithImpl<$Res,
        $Val extends KnowledgeDetailModel>
    implements $KnowledgeDetailModelCopyWith<$Res> {
  _$KnowledgeDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knowledgeId = null,
    Object? author = null,
    Object? catalogId = freezed,
    Object? commentNum = null,
    Object? likeNum = null,
    Object? selfLike = null,
    Object? title = null,
    Object? content = null,
    Object? url = freezed,
    Object? videoUrl = freezed,
    Object? type = null,
    Object? scope = null,
    Object? studentViewNum = null,
    Object? teacherCode = freezed,
    Object? teacherName = null,
    Object? teacherViewNum = null,
    Object? status = null,
    Object? deployOrg = null,
    Object? deployUser = freezed,
    Object? deployUserCode = null,
    Object? deployUserName = null,
    Object? deployTime = freezed,
    Object? isDeleted = null,
    Object? tags = null,
    Object? createUser = freezed,
    Object? createUserName = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
    Object? withdrawUserId = freezed,
    Object? withdrawUserName = freezed,
    Object? withdrawTime = freezed,
  }) {
    return _then(_value.copyWith(
      knowledgeId: null == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      selfLike: null == selfLike
          ? _value.selfLike
          : selfLike // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KnowledgeType,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as KnowledgeScope,
      studentViewNum: null == studentViewNum
          ? _value.studentViewNum
          : studentViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      teacherCode: freezed == teacherCode
          ? _value.teacherCode
          : teacherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherViewNum: null == teacherViewNum
          ? _value.teacherViewNum
          : teacherViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      deployOrg: null == deployOrg
          ? _value.deployOrg
          : deployOrg // ignore: cast_nullable_to_non_nullable
              as String,
      deployUser: freezed == deployUser
          ? _value.deployUser
          : deployUser // ignore: cast_nullable_to_non_nullable
              as String?,
      deployUserCode: null == deployUserCode
          ? _value.deployUserCode
          : deployUserCode // ignore: cast_nullable_to_non_nullable
              as String,
      deployUserName: null == deployUserName
          ? _value.deployUserName
          : deployUserName // ignore: cast_nullable_to_non_nullable
              as String,
      deployTime: freezed == deployTime
          ? _value.deployTime
          : deployTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserName: freezed == createUserName
          ? _value.createUserName
          : createUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withdrawUserId: freezed == withdrawUserId
          ? _value.withdrawUserId
          : withdrawUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawUserName: freezed == withdrawUserName
          ? _value.withdrawUserName
          : withdrawUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawTime: freezed == withdrawTime
          ? _value.withdrawTime
          : withdrawTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnowledgeDetailModelImplCopyWith<$Res>
    implements $KnowledgeDetailModelCopyWith<$Res> {
  factory _$$KnowledgeDetailModelImplCopyWith(_$KnowledgeDetailModelImpl value,
          $Res Function(_$KnowledgeDetailModelImpl) then) =
      __$$KnowledgeDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2IntJsonConverter() String knowledgeId,
      String author,
      String? catalogId,
      int commentNum,
      int likeNum,
      @JsonKey(name: 'selfLikeFlag') bool selfLike,
      String title,
      String content,
      @JsonKey(name: 'coverUrl') String? url,
      String? videoUrl,
      @KnowledgeTypeJsonConverter() @JsonKey(name: 'knType') KnowledgeType type,
      @JsonKey(name: 'schoolScope')
      @KnowledgeScopeJsonConverter()
      KnowledgeScope scope,
      int studentViewNum,
      String? teacherCode,
      String teacherName,
      int teacherViewNum,
      @StatusJsonConverter() Status status,
      String deployOrg,
      String? deployUser,
      String deployUserCode,
      String deployUserName,
      @DateTimeJsonConverter() DateTime? deployTime,
      @Int2BoolJsonConverter() bool isDeleted,
      @JsonKey(name: 'tagList') List<TagModel> tags,
      String? createUser,
      String? createUserName,
      @DateTimeJsonConverter() DateTime? createTime,
      String? updateUser,
      @DateTimeJsonConverter() DateTime? updateTime,
      int? withdrawUserId,
      String? withdrawUserName,
      @DateTimeJsonConverter() DateTime? withdrawTime});
}

/// @nodoc
class __$$KnowledgeDetailModelImplCopyWithImpl<$Res>
    extends _$KnowledgeDetailModelCopyWithImpl<$Res, _$KnowledgeDetailModelImpl>
    implements _$$KnowledgeDetailModelImplCopyWith<$Res> {
  __$$KnowledgeDetailModelImplCopyWithImpl(_$KnowledgeDetailModelImpl _value,
      $Res Function(_$KnowledgeDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knowledgeId = null,
    Object? author = null,
    Object? catalogId = freezed,
    Object? commentNum = null,
    Object? likeNum = null,
    Object? selfLike = null,
    Object? title = null,
    Object? content = null,
    Object? url = freezed,
    Object? videoUrl = freezed,
    Object? type = null,
    Object? scope = null,
    Object? studentViewNum = null,
    Object? teacherCode = freezed,
    Object? teacherName = null,
    Object? teacherViewNum = null,
    Object? status = null,
    Object? deployOrg = null,
    Object? deployUser = freezed,
    Object? deployUserCode = null,
    Object? deployUserName = null,
    Object? deployTime = freezed,
    Object? isDeleted = null,
    Object? tags = null,
    Object? createUser = freezed,
    Object? createUserName = freezed,
    Object? createTime = freezed,
    Object? updateUser = freezed,
    Object? updateTime = freezed,
    Object? withdrawUserId = freezed,
    Object? withdrawUserName = freezed,
    Object? withdrawTime = freezed,
  }) {
    return _then(_$KnowledgeDetailModelImpl(
      knowledgeId: null == knowledgeId
          ? _value.knowledgeId
          : knowledgeId // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      catalogId: freezed == catalogId
          ? _value.catalogId
          : catalogId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentNum: null == commentNum
          ? _value.commentNum
          : commentNum // ignore: cast_nullable_to_non_nullable
              as int,
      likeNum: null == likeNum
          ? _value.likeNum
          : likeNum // ignore: cast_nullable_to_non_nullable
              as int,
      selfLike: null == selfLike
          ? _value.selfLike
          : selfLike // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as KnowledgeType,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as KnowledgeScope,
      studentViewNum: null == studentViewNum
          ? _value.studentViewNum
          : studentViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      teacherCode: freezed == teacherCode
          ? _value.teacherCode
          : teacherCode // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherViewNum: null == teacherViewNum
          ? _value.teacherViewNum
          : teacherViewNum // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      deployOrg: null == deployOrg
          ? _value.deployOrg
          : deployOrg // ignore: cast_nullable_to_non_nullable
              as String,
      deployUser: freezed == deployUser
          ? _value.deployUser
          : deployUser // ignore: cast_nullable_to_non_nullable
              as String?,
      deployUserCode: null == deployUserCode
          ? _value.deployUserCode
          : deployUserCode // ignore: cast_nullable_to_non_nullable
              as String,
      deployUserName: null == deployUserName
          ? _value.deployUserName
          : deployUserName // ignore: cast_nullable_to_non_nullable
              as String,
      deployTime: freezed == deployTime
          ? _value.deployTime
          : deployTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagModel>,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createUserName: freezed == createUserName
          ? _value.createUserName
          : createUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      withdrawUserId: freezed == withdrawUserId
          ? _value.withdrawUserId
          : withdrawUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawUserName: freezed == withdrawUserName
          ? _value.withdrawUserName
          : withdrawUserName // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawTime: freezed == withdrawTime
          ? _value.withdrawTime
          : withdrawTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KnowledgeDetailModelImpl extends _KnowledgeDetailModel {
  const _$KnowledgeDetailModelImpl(
      {@String2IntJsonConverter() required this.knowledgeId,
      this.author = '',
      this.catalogId,
      this.commentNum = 0,
      this.likeNum = 0,
      @JsonKey(name: 'selfLikeFlag') this.selfLike = false,
      this.title = '',
      this.content = '',
      @JsonKey(name: 'coverUrl') this.url,
      this.videoUrl,
      @KnowledgeTypeJsonConverter()
      @JsonKey(name: 'knType')
      this.type = KnowledgeType.unknown,
      @JsonKey(name: 'schoolScope')
      @KnowledgeScopeJsonConverter()
      this.scope = KnowledgeScope.unknown,
      this.studentViewNum = 0,
      this.teacherCode,
      this.teacherName = '',
      this.teacherViewNum = 0,
      @StatusJsonConverter() this.status = Status.unknown,
      this.deployOrg = '',
      this.deployUser,
      required this.deployUserCode,
      this.deployUserName = '',
      @DateTimeJsonConverter() this.deployTime,
      @Int2BoolJsonConverter() this.isDeleted = false,
      @JsonKey(name: 'tagList') final List<TagModel> tags = const [],
      this.createUser,
      this.createUserName,
      @DateTimeJsonConverter() this.createTime,
      this.updateUser,
      @DateTimeJsonConverter() this.updateTime,
      this.withdrawUserId,
      this.withdrawUserName,
      @DateTimeJsonConverter() this.withdrawTime})
      : _tags = tags,
        super._();

  factory _$KnowledgeDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KnowledgeDetailModelImplFromJson(json);

  /// 干货id
  @override
  @String2IntJsonConverter()
  final String knowledgeId;

  /// 作者
  @override
  @JsonKey()
  final String author;

  /// 分类id
  @override
  final String? catalogId;

  /// 评论数
  @override
  @JsonKey()
  final int commentNum;

  /// 收藏数
  @override
  @JsonKey()
  final int likeNum;

  /// 自己是否点赞
  @override
  @JsonKey(name: 'selfLikeFlag')
  final bool selfLike;

  /// 标题
  @override
  @JsonKey()
  final String title;

  /// 内容
  @override
  @JsonKey()
  final String content;

  /// 封面
  @override
  @JsonKey(name: 'coverUrl')
  final String? url;

  /// 视频地址
  @override
  final String? videoUrl;

  /// 干货类型
  @override
  @KnowledgeTypeJsonConverter()
  @JsonKey(name: 'knType')
  final KnowledgeType type;

  /// 可见范围
  @override
  @JsonKey(name: 'schoolScope')
  @KnowledgeScopeJsonConverter()
  final KnowledgeScope scope;

  /// 学生观看人数
  @override
  @JsonKey()
  final int studentViewNum;

  /// 教师编码
  @override
  final String? teacherCode;

  /// 教师姓名
  @override
  @JsonKey()
  final String teacherName;

  /// 教师观看人数
  @override
  @JsonKey()
  final int teacherViewNum;

  /// 状态
  @override
  @JsonKey()
  @StatusJsonConverter()
  final Status status;

  /// 发布单位
  @override
  @JsonKey()
  final String deployOrg;

  /// 发布人
  @override
  final String? deployUser;

  /// 发布人编码
  @override
  final String deployUserCode;

  /// 发布人姓名
  @override
  @JsonKey()
  final String deployUserName;

  /// 发布时间
  @override
  @DateTimeJsonConverter()
  final DateTime? deployTime;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 标签列表
  final List<TagModel> _tags;

  /// 标签列表
  @override
  @JsonKey(name: 'tagList')
  List<TagModel> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// 创建人
  @override
  final String? createUser;

  /// 创建人姓名
  @override
  final String? createUserName;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新人
  @override
  final String? updateUser;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  /// 撤回人
  @override
  final int? withdrawUserId;

  /// 撤回人姓名
  @override
  final String? withdrawUserName;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? withdrawTime;

  @override
  String toString() {
    return 'KnowledgeDetailModel(knowledgeId: $knowledgeId, author: $author, catalogId: $catalogId, commentNum: $commentNum, likeNum: $likeNum, selfLike: $selfLike, title: $title, content: $content, url: $url, videoUrl: $videoUrl, type: $type, scope: $scope, studentViewNum: $studentViewNum, teacherCode: $teacherCode, teacherName: $teacherName, teacherViewNum: $teacherViewNum, status: $status, deployOrg: $deployOrg, deployUser: $deployUser, deployUserCode: $deployUserCode, deployUserName: $deployUserName, deployTime: $deployTime, isDeleted: $isDeleted, tags: $tags, createUser: $createUser, createUserName: $createUserName, createTime: $createTime, updateUser: $updateUser, updateTime: $updateTime, withdrawUserId: $withdrawUserId, withdrawUserName: $withdrawUserName, withdrawTime: $withdrawTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnowledgeDetailModelImpl &&
            (identical(other.knowledgeId, knowledgeId) ||
                other.knowledgeId == knowledgeId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.catalogId, catalogId) ||
                other.catalogId == catalogId) &&
            (identical(other.commentNum, commentNum) ||
                other.commentNum == commentNum) &&
            (identical(other.likeNum, likeNum) || other.likeNum == likeNum) &&
            (identical(other.selfLike, selfLike) ||
                other.selfLike == selfLike) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.studentViewNum, studentViewNum) ||
                other.studentViewNum == studentViewNum) &&
            (identical(other.teacherCode, teacherCode) ||
                other.teacherCode == teacherCode) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.teacherViewNum, teacherViewNum) ||
                other.teacherViewNum == teacherViewNum) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deployOrg, deployOrg) ||
                other.deployOrg == deployOrg) &&
            (identical(other.deployUser, deployUser) ||
                other.deployUser == deployUser) &&
            (identical(other.deployUserCode, deployUserCode) ||
                other.deployUserCode == deployUserCode) &&
            (identical(other.deployUserName, deployUserName) ||
                other.deployUserName == deployUserName) &&
            (identical(other.deployTime, deployTime) ||
                other.deployTime == deployTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.createUserName, createUserName) ||
                other.createUserName == createUserName) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.withdrawUserId, withdrawUserId) ||
                other.withdrawUserId == withdrawUserId) &&
            (identical(other.withdrawUserName, withdrawUserName) ||
                other.withdrawUserName == withdrawUserName) &&
            (identical(other.withdrawTime, withdrawTime) ||
                other.withdrawTime == withdrawTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        knowledgeId,
        author,
        catalogId,
        commentNum,
        likeNum,
        selfLike,
        title,
        content,
        url,
        videoUrl,
        type,
        scope,
        studentViewNum,
        teacherCode,
        teacherName,
        teacherViewNum,
        status,
        deployOrg,
        deployUser,
        deployUserCode,
        deployUserName,
        deployTime,
        isDeleted,
        const DeepCollectionEquality().hash(_tags),
        createUser,
        createUserName,
        createTime,
        updateUser,
        updateTime,
        withdrawUserId,
        withdrawUserName,
        withdrawTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KnowledgeDetailModelImplCopyWith<_$KnowledgeDetailModelImpl>
      get copyWith =>
          __$$KnowledgeDetailModelImplCopyWithImpl<_$KnowledgeDetailModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KnowledgeDetailModelImplToJson(
      this,
    );
  }
}

abstract class _KnowledgeDetailModel extends KnowledgeDetailModel {
  const factory _KnowledgeDetailModel(
          {@String2IntJsonConverter() required final String knowledgeId,
          final String author,
          final String? catalogId,
          final int commentNum,
          final int likeNum,
          @JsonKey(name: 'selfLikeFlag') final bool selfLike,
          final String title,
          final String content,
          @JsonKey(name: 'coverUrl') final String? url,
          final String? videoUrl,
          @KnowledgeTypeJsonConverter()
          @JsonKey(name: 'knType')
          final KnowledgeType type,
          @JsonKey(name: 'schoolScope')
          @KnowledgeScopeJsonConverter()
          final KnowledgeScope scope,
          final int studentViewNum,
          final String? teacherCode,
          final String teacherName,
          final int teacherViewNum,
          @StatusJsonConverter() final Status status,
          final String deployOrg,
          final String? deployUser,
          required final String deployUserCode,
          final String deployUserName,
          @DateTimeJsonConverter() final DateTime? deployTime,
          @Int2BoolJsonConverter() final bool isDeleted,
          @JsonKey(name: 'tagList') final List<TagModel> tags,
          final String? createUser,
          final String? createUserName,
          @DateTimeJsonConverter() final DateTime? createTime,
          final String? updateUser,
          @DateTimeJsonConverter() final DateTime? updateTime,
          final int? withdrawUserId,
          final String? withdrawUserName,
          @DateTimeJsonConverter() final DateTime? withdrawTime}) =
      _$KnowledgeDetailModelImpl;
  const _KnowledgeDetailModel._() : super._();

  factory _KnowledgeDetailModel.fromJson(Map<String, dynamic> json) =
      _$KnowledgeDetailModelImpl.fromJson;

  @override

  /// 干货id
  @String2IntJsonConverter()
  String get knowledgeId;
  @override

  /// 作者
  String get author;
  @override

  /// 分类id
  String? get catalogId;
  @override

  /// 评论数
  int get commentNum;
  @override

  /// 收藏数
  int get likeNum;
  @override

  /// 自己是否点赞
  @JsonKey(name: 'selfLikeFlag')
  bool get selfLike;
  @override

  /// 标题
  String get title;
  @override

  /// 内容
  String get content;
  @override

  /// 封面
  @JsonKey(name: 'coverUrl')
  String? get url;
  @override

  /// 视频地址
  String? get videoUrl;
  @override

  /// 干货类型
  @KnowledgeTypeJsonConverter()
  @JsonKey(name: 'knType')
  KnowledgeType get type;
  @override

  /// 可见范围
  @JsonKey(name: 'schoolScope')
  @KnowledgeScopeJsonConverter()
  KnowledgeScope get scope;
  @override

  /// 学生观看人数
  int get studentViewNum;
  @override

  /// 教师编码
  String? get teacherCode;
  @override

  /// 教师姓名
  String get teacherName;
  @override

  /// 教师观看人数
  int get teacherViewNum;
  @override

  /// 状态
  @StatusJsonConverter()
  Status get status;
  @override

  /// 发布单位
  String get deployOrg;
  @override

  /// 发布人
  String? get deployUser;
  @override

  /// 发布人编码
  String get deployUserCode;
  @override

  /// 发布人姓名
  String get deployUserName;
  @override

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get deployTime;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 标签列表
  @JsonKey(name: 'tagList')
  List<TagModel> get tags;
  @override

  /// 创建人
  String? get createUser;
  @override

  /// 创建人姓名
  String? get createUserName;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新人
  String? get updateUser;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override

  /// 撤回人
  int? get withdrawUserId;
  @override

  /// 撤回人姓名
  String? get withdrawUserName;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get withdrawTime;
  @override
  @JsonKey(ignore: true)
  _$$KnowledgeDetailModelImplCopyWith<_$KnowledgeDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
