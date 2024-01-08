// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'survey_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyTokenReq _$SurveyTokenReqFromJson(Map<String, dynamic> json) {
  return _SurveyTokenReq.fromJson(json);
}

/// @nodoc
mixin _$SurveyTokenReq {
  String get ticket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyTokenReqCopyWith<SurveyTokenReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyTokenReqCopyWith<$Res> {
  factory $SurveyTokenReqCopyWith(
          SurveyTokenReq value, $Res Function(SurveyTokenReq) then) =
      _$SurveyTokenReqCopyWithImpl<$Res, SurveyTokenReq>;
  @useResult
  $Res call({String ticket});
}

/// @nodoc
class _$SurveyTokenReqCopyWithImpl<$Res, $Val extends SurveyTokenReq>
    implements $SurveyTokenReqCopyWith<$Res> {
  _$SurveyTokenReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyTokenReqImplCopyWith<$Res>
    implements $SurveyTokenReqCopyWith<$Res> {
  factory _$$SurveyTokenReqImplCopyWith(_$SurveyTokenReqImpl value,
          $Res Function(_$SurveyTokenReqImpl) then) =
      __$$SurveyTokenReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ticket});
}

/// @nodoc
class __$$SurveyTokenReqImplCopyWithImpl<$Res>
    extends _$SurveyTokenReqCopyWithImpl<$Res, _$SurveyTokenReqImpl>
    implements _$$SurveyTokenReqImplCopyWith<$Res> {
  __$$SurveyTokenReqImplCopyWithImpl(
      _$SurveyTokenReqImpl _value, $Res Function(_$SurveyTokenReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$SurveyTokenReqImpl(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyTokenReqImpl extends _SurveyTokenReq {
  const _$SurveyTokenReqImpl({required this.ticket}) : super._();

  factory _$SurveyTokenReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyTokenReqImplFromJson(json);

  @override
  final String ticket;

  @override
  String toString() {
    return 'SurveyTokenReq(ticket: $ticket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyTokenReqImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyTokenReqImplCopyWith<_$SurveyTokenReqImpl> get copyWith =>
      __$$SurveyTokenReqImplCopyWithImpl<_$SurveyTokenReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyTokenReqImplToJson(
      this,
    );
  }
}

abstract class _SurveyTokenReq extends SurveyTokenReq {
  const factory _SurveyTokenReq({required final String ticket}) =
      _$SurveyTokenReqImpl;
  const _SurveyTokenReq._() : super._();

  factory _SurveyTokenReq.fromJson(Map<String, dynamic> json) =
      _$SurveyTokenReqImpl.fromJson;

  @override
  String get ticket;
  @override
  @JsonKey(ignore: true)
  _$$SurveyTokenReqImplCopyWith<_$SurveyTokenReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyOtherParam _$SurveyOtherParamFromJson(Map<String, dynamic> json) {
  return _SurveyOtherParam.fromJson(json);
}

/// @nodoc
mixin _$SurveyOtherParam {
  /// 标题
  String get name => throw _privateConstructorUsedError;

  /// url
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyOtherParamCopyWith<SurveyOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyOtherParamCopyWith<$Res> {
  factory $SurveyOtherParamCopyWith(
          SurveyOtherParam value, $Res Function(SurveyOtherParam) then) =
      _$SurveyOtherParamCopyWithImpl<$Res, SurveyOtherParam>;
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class _$SurveyOtherParamCopyWithImpl<$Res, $Val extends SurveyOtherParam>
    implements $SurveyOtherParamCopyWith<$Res> {
  _$SurveyOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyOtherParamImplCopyWith<$Res>
    implements $SurveyOtherParamCopyWith<$Res> {
  factory _$$SurveyOtherParamImplCopyWith(_$SurveyOtherParamImpl value,
          $Res Function(_$SurveyOtherParamImpl) then) =
      __$$SurveyOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class __$$SurveyOtherParamImplCopyWithImpl<$Res>
    extends _$SurveyOtherParamCopyWithImpl<$Res, _$SurveyOtherParamImpl>
    implements _$$SurveyOtherParamImplCopyWith<$Res> {
  __$$SurveyOtherParamImplCopyWithImpl(_$SurveyOtherParamImpl _value,
      $Res Function(_$SurveyOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_$SurveyOtherParamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyOtherParamImpl implements _SurveyOtherParam {
  const _$SurveyOtherParamImpl({this.name = '', this.url});

  factory _$SurveyOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyOtherParamImplFromJson(json);

  /// 标题
  @override
  @JsonKey()
  final String name;

  /// url
  @override
  final String? url;

  @override
  String toString() {
    return 'SurveyOtherParam(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyOtherParamImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyOtherParamImplCopyWith<_$SurveyOtherParamImpl> get copyWith =>
      __$$SurveyOtherParamImplCopyWithImpl<_$SurveyOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyOtherParamImplToJson(
      this,
    );
  }
}

abstract class _SurveyOtherParam implements SurveyOtherParam {
  const factory _SurveyOtherParam({final String name, final String? url}) =
      _$SurveyOtherParamImpl;

  factory _SurveyOtherParam.fromJson(Map<String, dynamic> json) =
      _$SurveyOtherParamImpl.fromJson;

  @override

  /// 标题
  String get name;
  @override

  /// url
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$SurveyOtherParamImplCopyWith<_$SurveyOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyModel _$SurveyModelFromJson(Map<String, dynamic> json) {
  return _SurveyModel.fromJson(json);
}

/// @nodoc
mixin _$SurveyModel {
  /// 问卷id
  int get id => throw _privateConstructorUsedError;

  /// 问卷编码
  String get key => throw _privateConstructorUsedError;

  /// 问卷名称
  String get name => throw _privateConstructorUsedError;

  /// 问卷描述
  String get describe => throw _privateConstructorUsedError;

  /// 问卷来源
  int? get sourceType => throw _privateConstructorUsedError;

  /// 来源id
  String get sourceId => throw _privateConstructorUsedError;

  /// 用户id
  String get userId => throw _privateConstructorUsedError;

  /// 发布人名称
  String get personName => throw _privateConstructorUsedError;

  /// 问卷状态
  @SurveyStatusJsonConverter()
  SurveyStatus get status => throw _privateConstructorUsedError;

  /// 问卷类型
  int? get type => throw _privateConstructorUsedError;

  /// 问卷类型名称
  String get typeName => throw _privateConstructorUsedError;

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get publishTime => throw _privateConstructorUsedError;

  /// 人为结束时间
  @DateTimeJsonConverter()
  DateTime? get manualEndTime => throw _privateConstructorUsedError;

  /// 系统结束时间
  @DateTimeJsonConverter()
  DateTime? get sysEndTime => throw _privateConstructorUsedError;

  /// 是否人为恢复
  bool get isRecover => throw _privateConstructorUsedError;

  /// 恢复时间
  @DateTimeJsonConverter()
  DateTime? get recoverTime => throw _privateConstructorUsedError;

  /// 恢复者
  String? get recoverBy => throw _privateConstructorUsedError;

  /// PC访问地址
  String? get pcUrl => throw _privateConstructorUsedError;

  /// wap访问地址
  String? get wapUrl => throw _privateConstructorUsedError;

  /// 小程序访问地址
  String? get miniUrl => throw _privateConstructorUsedError;

  /// app访问地址
  String? get appUrl => throw _privateConstructorUsedError;

  /// 是否可以编辑
  bool get canUpdate => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  /// pc浏览量
  int get pcRead => throw _privateConstructorUsedError;

  /// wap浏览量
  int get wapRead => throw _privateConstructorUsedError;

  /// 小程序浏览量
  int get miniRead => throw _privateConstructorUsedError;

  /// pc填写量
  int get pcSubmit => throw _privateConstructorUsedError;

  /// wap填写量
  int get wapSubmit => throw _privateConstructorUsedError;

  /// 小程序填写量
  int get miniSubmit => throw _privateConstructorUsedError;

  /// 提交状态
  @JsonKey(name: 'submitStatus')
  @Int2BoolJsonConverter()
  bool get hasSubmit => throw _privateConstructorUsedError;

  /// 总浏览量
  int get allRead => throw _privateConstructorUsedError;

  /// 总填写量
  int get allSubmit => throw _privateConstructorUsedError;

  /// 创建人名称
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyModelCopyWith<SurveyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyModelCopyWith<$Res> {
  factory $SurveyModelCopyWith(
          SurveyModel value, $Res Function(SurveyModel) then) =
      _$SurveyModelCopyWithImpl<$Res, SurveyModel>;
  @useResult
  $Res call(
      {int id,
      String key,
      String name,
      String describe,
      int? sourceType,
      String sourceId,
      String userId,
      String personName,
      @SurveyStatusJsonConverter() SurveyStatus status,
      int? type,
      String typeName,
      @DateTimeJsonConverter() DateTime? publishTime,
      @DateTimeJsonConverter() DateTime? manualEndTime,
      @DateTimeJsonConverter() DateTime? sysEndTime,
      bool isRecover,
      @DateTimeJsonConverter() DateTime? recoverTime,
      String? recoverBy,
      String? pcUrl,
      String? wapUrl,
      String? miniUrl,
      String? appUrl,
      bool canUpdate,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime,
      int pcRead,
      int wapRead,
      int miniRead,
      int pcSubmit,
      int wapSubmit,
      int miniSubmit,
      @JsonKey(name: 'submitStatus') @Int2BoolJsonConverter() bool hasSubmit,
      int allRead,
      int allSubmit,
      String userName});
}

/// @nodoc
class _$SurveyModelCopyWithImpl<$Res, $Val extends SurveyModel>
    implements $SurveyModelCopyWith<$Res> {
  _$SurveyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? describe = null,
    Object? sourceType = freezed,
    Object? sourceId = null,
    Object? userId = null,
    Object? personName = null,
    Object? status = null,
    Object? type = freezed,
    Object? typeName = null,
    Object? publishTime = freezed,
    Object? manualEndTime = freezed,
    Object? sysEndTime = freezed,
    Object? isRecover = null,
    Object? recoverTime = freezed,
    Object? recoverBy = freezed,
    Object? pcUrl = freezed,
    Object? wapUrl = freezed,
    Object? miniUrl = freezed,
    Object? appUrl = freezed,
    Object? canUpdate = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
    Object? pcRead = null,
    Object? wapRead = null,
    Object? miniRead = null,
    Object? pcSubmit = null,
    Object? wapSubmit = null,
    Object? miniSubmit = null,
    Object? hasSubmit = null,
    Object? allRead = null,
    Object? allSubmit = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      describe: null == describe
          ? _value.describe
          : describe // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: freezed == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      personName: null == personName
          ? _value.personName
          : personName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SurveyStatus,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      manualEndTime: freezed == manualEndTime
          ? _value.manualEndTime
          : manualEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sysEndTime: freezed == sysEndTime
          ? _value.sysEndTime
          : sysEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecover: null == isRecover
          ? _value.isRecover
          : isRecover // ignore: cast_nullable_to_non_nullable
              as bool,
      recoverTime: freezed == recoverTime
          ? _value.recoverTime
          : recoverTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recoverBy: freezed == recoverBy
          ? _value.recoverBy
          : recoverBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pcUrl: freezed == pcUrl
          ? _value.pcUrl
          : pcUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wapUrl: freezed == wapUrl
          ? _value.wapUrl
          : wapUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      miniUrl: freezed == miniUrl
          ? _value.miniUrl
          : miniUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appUrl: freezed == appUrl
          ? _value.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      canUpdate: null == canUpdate
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pcRead: null == pcRead
          ? _value.pcRead
          : pcRead // ignore: cast_nullable_to_non_nullable
              as int,
      wapRead: null == wapRead
          ? _value.wapRead
          : wapRead // ignore: cast_nullable_to_non_nullable
              as int,
      miniRead: null == miniRead
          ? _value.miniRead
          : miniRead // ignore: cast_nullable_to_non_nullable
              as int,
      pcSubmit: null == pcSubmit
          ? _value.pcSubmit
          : pcSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      wapSubmit: null == wapSubmit
          ? _value.wapSubmit
          : wapSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      miniSubmit: null == miniSubmit
          ? _value.miniSubmit
          : miniSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      hasSubmit: null == hasSubmit
          ? _value.hasSubmit
          : hasSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      allRead: null == allRead
          ? _value.allRead
          : allRead // ignore: cast_nullable_to_non_nullable
              as int,
      allSubmit: null == allSubmit
          ? _value.allSubmit
          : allSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveyModelImplCopyWith<$Res>
    implements $SurveyModelCopyWith<$Res> {
  factory _$$SurveyModelImplCopyWith(
          _$SurveyModelImpl value, $Res Function(_$SurveyModelImpl) then) =
      __$$SurveyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String key,
      String name,
      String describe,
      int? sourceType,
      String sourceId,
      String userId,
      String personName,
      @SurveyStatusJsonConverter() SurveyStatus status,
      int? type,
      String typeName,
      @DateTimeJsonConverter() DateTime? publishTime,
      @DateTimeJsonConverter() DateTime? manualEndTime,
      @DateTimeJsonConverter() DateTime? sysEndTime,
      bool isRecover,
      @DateTimeJsonConverter() DateTime? recoverTime,
      String? recoverBy,
      String? pcUrl,
      String? wapUrl,
      String? miniUrl,
      String? appUrl,
      bool canUpdate,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime,
      int pcRead,
      int wapRead,
      int miniRead,
      int pcSubmit,
      int wapSubmit,
      int miniSubmit,
      @JsonKey(name: 'submitStatus') @Int2BoolJsonConverter() bool hasSubmit,
      int allRead,
      int allSubmit,
      String userName});
}

/// @nodoc
class __$$SurveyModelImplCopyWithImpl<$Res>
    extends _$SurveyModelCopyWithImpl<$Res, _$SurveyModelImpl>
    implements _$$SurveyModelImplCopyWith<$Res> {
  __$$SurveyModelImplCopyWithImpl(
      _$SurveyModelImpl _value, $Res Function(_$SurveyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
    Object? name = null,
    Object? describe = null,
    Object? sourceType = freezed,
    Object? sourceId = null,
    Object? userId = null,
    Object? personName = null,
    Object? status = null,
    Object? type = freezed,
    Object? typeName = null,
    Object? publishTime = freezed,
    Object? manualEndTime = freezed,
    Object? sysEndTime = freezed,
    Object? isRecover = null,
    Object? recoverTime = freezed,
    Object? recoverBy = freezed,
    Object? pcUrl = freezed,
    Object? wapUrl = freezed,
    Object? miniUrl = freezed,
    Object? appUrl = freezed,
    Object? canUpdate = null,
    Object? createTime = freezed,
    Object? updateTime = freezed,
    Object? pcRead = null,
    Object? wapRead = null,
    Object? miniRead = null,
    Object? pcSubmit = null,
    Object? wapSubmit = null,
    Object? miniSubmit = null,
    Object? hasSubmit = null,
    Object? allRead = null,
    Object? allSubmit = null,
    Object? userName = null,
  }) {
    return _then(_$SurveyModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      describe: null == describe
          ? _value.describe
          : describe // ignore: cast_nullable_to_non_nullable
              as String,
      sourceType: freezed == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      personName: null == personName
          ? _value.personName
          : personName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SurveyStatus,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      manualEndTime: freezed == manualEndTime
          ? _value.manualEndTime
          : manualEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sysEndTime: freezed == sysEndTime
          ? _value.sysEndTime
          : sysEndTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecover: null == isRecover
          ? _value.isRecover
          : isRecover // ignore: cast_nullable_to_non_nullable
              as bool,
      recoverTime: freezed == recoverTime
          ? _value.recoverTime
          : recoverTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      recoverBy: freezed == recoverBy
          ? _value.recoverBy
          : recoverBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pcUrl: freezed == pcUrl
          ? _value.pcUrl
          : pcUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wapUrl: freezed == wapUrl
          ? _value.wapUrl
          : wapUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      miniUrl: freezed == miniUrl
          ? _value.miniUrl
          : miniUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appUrl: freezed == appUrl
          ? _value.appUrl
          : appUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      canUpdate: null == canUpdate
          ? _value.canUpdate
          : canUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pcRead: null == pcRead
          ? _value.pcRead
          : pcRead // ignore: cast_nullable_to_non_nullable
              as int,
      wapRead: null == wapRead
          ? _value.wapRead
          : wapRead // ignore: cast_nullable_to_non_nullable
              as int,
      miniRead: null == miniRead
          ? _value.miniRead
          : miniRead // ignore: cast_nullable_to_non_nullable
              as int,
      pcSubmit: null == pcSubmit
          ? _value.pcSubmit
          : pcSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      wapSubmit: null == wapSubmit
          ? _value.wapSubmit
          : wapSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      miniSubmit: null == miniSubmit
          ? _value.miniSubmit
          : miniSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      hasSubmit: null == hasSubmit
          ? _value.hasSubmit
          : hasSubmit // ignore: cast_nullable_to_non_nullable
              as bool,
      allRead: null == allRead
          ? _value.allRead
          : allRead // ignore: cast_nullable_to_non_nullable
              as int,
      allSubmit: null == allSubmit
          ? _value.allSubmit
          : allSubmit // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveyModelImpl extends _SurveyModel {
  const _$SurveyModelImpl(
      {required this.id,
      required this.key,
      this.name = '',
      this.describe = '',
      this.sourceType,
      this.sourceId = '',
      this.userId = '',
      this.personName = '',
      @SurveyStatusJsonConverter() this.status = SurveyStatus.unknown,
      this.type,
      this.typeName = '',
      @DateTimeJsonConverter() this.publishTime,
      @DateTimeJsonConverter() this.manualEndTime,
      @DateTimeJsonConverter() this.sysEndTime,
      this.isRecover = false,
      @DateTimeJsonConverter() this.recoverTime,
      this.recoverBy,
      this.pcUrl,
      this.wapUrl,
      this.miniUrl,
      this.appUrl,
      this.canUpdate = false,
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime,
      this.pcRead = 0,
      this.wapRead = 0,
      this.miniRead = 0,
      this.pcSubmit = 0,
      this.wapSubmit = 0,
      this.miniSubmit = 0,
      @JsonKey(name: 'submitStatus')
      @Int2BoolJsonConverter()
      this.hasSubmit = false,
      this.allRead = 0,
      this.allSubmit = 0,
      this.userName = ''})
      : super._();

  factory _$SurveyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveyModelImplFromJson(json);

  /// 问卷id
  @override
  final int id;

  /// 问卷编码
  @override
  final String key;

  /// 问卷名称
  @override
  @JsonKey()
  final String name;

  /// 问卷描述
  @override
  @JsonKey()
  final String describe;

  /// 问卷来源
  @override
  final int? sourceType;

  /// 来源id
  @override
  @JsonKey()
  final String sourceId;

  /// 用户id
  @override
  @JsonKey()
  final String userId;

  /// 发布人名称
  @override
  @JsonKey()
  final String personName;

  /// 问卷状态
  @override
  @JsonKey()
  @SurveyStatusJsonConverter()
  final SurveyStatus status;

  /// 问卷类型
  @override
  final int? type;

  /// 问卷类型名称
  @override
  @JsonKey()
  final String typeName;

  /// 发布时间
  @override
  @DateTimeJsonConverter()
  final DateTime? publishTime;

  /// 人为结束时间
  @override
  @DateTimeJsonConverter()
  final DateTime? manualEndTime;

  /// 系统结束时间
  @override
  @DateTimeJsonConverter()
  final DateTime? sysEndTime;

  /// 是否人为恢复
  @override
  @JsonKey()
  final bool isRecover;

  /// 恢复时间
  @override
  @DateTimeJsonConverter()
  final DateTime? recoverTime;

  /// 恢复者
  @override
  final String? recoverBy;

  /// PC访问地址
  @override
  final String? pcUrl;

  /// wap访问地址
  @override
  final String? wapUrl;

  /// 小程序访问地址
  @override
  final String? miniUrl;

  /// app访问地址
  @override
  final String? appUrl;

  /// 是否可以编辑
  @override
  @JsonKey()
  final bool canUpdate;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  /// pc浏览量
  @override
  @JsonKey()
  final int pcRead;

  /// wap浏览量
  @override
  @JsonKey()
  final int wapRead;

  /// 小程序浏览量
  @override
  @JsonKey()
  final int miniRead;

  /// pc填写量
  @override
  @JsonKey()
  final int pcSubmit;

  /// wap填写量
  @override
  @JsonKey()
  final int wapSubmit;

  /// 小程序填写量
  @override
  @JsonKey()
  final int miniSubmit;

  /// 提交状态
  @override
  @JsonKey(name: 'submitStatus')
  @Int2BoolJsonConverter()
  final bool hasSubmit;

  /// 总浏览量
  @override
  @JsonKey()
  final int allRead;

  /// 总填写量
  @override
  @JsonKey()
  final int allSubmit;

  /// 创建人名称
  @override
  @JsonKey()
  final String userName;

  @override
  String toString() {
    return 'SurveyModel(id: $id, key: $key, name: $name, describe: $describe, sourceType: $sourceType, sourceId: $sourceId, userId: $userId, personName: $personName, status: $status, type: $type, typeName: $typeName, publishTime: $publishTime, manualEndTime: $manualEndTime, sysEndTime: $sysEndTime, isRecover: $isRecover, recoverTime: $recoverTime, recoverBy: $recoverBy, pcUrl: $pcUrl, wapUrl: $wapUrl, miniUrl: $miniUrl, appUrl: $appUrl, canUpdate: $canUpdate, createTime: $createTime, updateTime: $updateTime, pcRead: $pcRead, wapRead: $wapRead, miniRead: $miniRead, pcSubmit: $pcSubmit, wapSubmit: $wapSubmit, miniSubmit: $miniSubmit, hasSubmit: $hasSubmit, allRead: $allRead, allSubmit: $allSubmit, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.describe, describe) ||
                other.describe == describe) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.personName, personName) ||
                other.personName == personName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.publishTime, publishTime) ||
                other.publishTime == publishTime) &&
            (identical(other.manualEndTime, manualEndTime) ||
                other.manualEndTime == manualEndTime) &&
            (identical(other.sysEndTime, sysEndTime) ||
                other.sysEndTime == sysEndTime) &&
            (identical(other.isRecover, isRecover) ||
                other.isRecover == isRecover) &&
            (identical(other.recoverTime, recoverTime) ||
                other.recoverTime == recoverTime) &&
            (identical(other.recoverBy, recoverBy) ||
                other.recoverBy == recoverBy) &&
            (identical(other.pcUrl, pcUrl) || other.pcUrl == pcUrl) &&
            (identical(other.wapUrl, wapUrl) || other.wapUrl == wapUrl) &&
            (identical(other.miniUrl, miniUrl) || other.miniUrl == miniUrl) &&
            (identical(other.appUrl, appUrl) || other.appUrl == appUrl) &&
            (identical(other.canUpdate, canUpdate) ||
                other.canUpdate == canUpdate) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.pcRead, pcRead) || other.pcRead == pcRead) &&
            (identical(other.wapRead, wapRead) || other.wapRead == wapRead) &&
            (identical(other.miniRead, miniRead) ||
                other.miniRead == miniRead) &&
            (identical(other.pcSubmit, pcSubmit) ||
                other.pcSubmit == pcSubmit) &&
            (identical(other.wapSubmit, wapSubmit) ||
                other.wapSubmit == wapSubmit) &&
            (identical(other.miniSubmit, miniSubmit) ||
                other.miniSubmit == miniSubmit) &&
            (identical(other.hasSubmit, hasSubmit) ||
                other.hasSubmit == hasSubmit) &&
            (identical(other.allRead, allRead) || other.allRead == allRead) &&
            (identical(other.allSubmit, allSubmit) ||
                other.allSubmit == allSubmit) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        key,
        name,
        describe,
        sourceType,
        sourceId,
        userId,
        personName,
        status,
        type,
        typeName,
        publishTime,
        manualEndTime,
        sysEndTime,
        isRecover,
        recoverTime,
        recoverBy,
        pcUrl,
        wapUrl,
        miniUrl,
        appUrl,
        canUpdate,
        createTime,
        updateTime,
        pcRead,
        wapRead,
        miniRead,
        pcSubmit,
        wapSubmit,
        miniSubmit,
        hasSubmit,
        allRead,
        allSubmit,
        userName
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveyModelImplCopyWith<_$SurveyModelImpl> get copyWith =>
      __$$SurveyModelImplCopyWithImpl<_$SurveyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveyModelImplToJson(
      this,
    );
  }
}

abstract class _SurveyModel extends SurveyModel {
  const factory _SurveyModel(
      {required final int id,
      required final String key,
      final String name,
      final String describe,
      final int? sourceType,
      final String sourceId,
      final String userId,
      final String personName,
      @SurveyStatusJsonConverter() final SurveyStatus status,
      final int? type,
      final String typeName,
      @DateTimeJsonConverter() final DateTime? publishTime,
      @DateTimeJsonConverter() final DateTime? manualEndTime,
      @DateTimeJsonConverter() final DateTime? sysEndTime,
      final bool isRecover,
      @DateTimeJsonConverter() final DateTime? recoverTime,
      final String? recoverBy,
      final String? pcUrl,
      final String? wapUrl,
      final String? miniUrl,
      final String? appUrl,
      final bool canUpdate,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter() final DateTime? updateTime,
      final int pcRead,
      final int wapRead,
      final int miniRead,
      final int pcSubmit,
      final int wapSubmit,
      final int miniSubmit,
      @JsonKey(name: 'submitStatus')
      @Int2BoolJsonConverter()
      final bool hasSubmit,
      final int allRead,
      final int allSubmit,
      final String userName}) = _$SurveyModelImpl;
  const _SurveyModel._() : super._();

  factory _SurveyModel.fromJson(Map<String, dynamic> json) =
      _$SurveyModelImpl.fromJson;

  @override

  /// 问卷id
  int get id;
  @override

  /// 问卷编码
  String get key;
  @override

  /// 问卷名称
  String get name;
  @override

  /// 问卷描述
  String get describe;
  @override

  /// 问卷来源
  int? get sourceType;
  @override

  /// 来源id
  String get sourceId;
  @override

  /// 用户id
  String get userId;
  @override

  /// 发布人名称
  String get personName;
  @override

  /// 问卷状态
  @SurveyStatusJsonConverter()
  SurveyStatus get status;
  @override

  /// 问卷类型
  int? get type;
  @override

  /// 问卷类型名称
  String get typeName;
  @override

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get publishTime;
  @override

  /// 人为结束时间
  @DateTimeJsonConverter()
  DateTime? get manualEndTime;
  @override

  /// 系统结束时间
  @DateTimeJsonConverter()
  DateTime? get sysEndTime;
  @override

  /// 是否人为恢复
  bool get isRecover;
  @override

  /// 恢复时间
  @DateTimeJsonConverter()
  DateTime? get recoverTime;
  @override

  /// 恢复者
  String? get recoverBy;
  @override

  /// PC访问地址
  String? get pcUrl;
  @override

  /// wap访问地址
  String? get wapUrl;
  @override

  /// 小程序访问地址
  String? get miniUrl;
  @override

  /// app访问地址
  String? get appUrl;
  @override

  /// 是否可以编辑
  bool get canUpdate;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override

  /// pc浏览量
  int get pcRead;
  @override

  /// wap浏览量
  int get wapRead;
  @override

  /// 小程序浏览量
  int get miniRead;
  @override

  /// pc填写量
  int get pcSubmit;
  @override

  /// wap填写量
  int get wapSubmit;
  @override

  /// 小程序填写量
  int get miniSubmit;
  @override

  /// 提交状态
  @JsonKey(name: 'submitStatus')
  @Int2BoolJsonConverter()
  bool get hasSubmit;
  @override

  /// 总浏览量
  int get allRead;
  @override

  /// 总填写量
  int get allSubmit;
  @override

  /// 创建人名称
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$SurveyModelImplCopyWith<_$SurveyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
