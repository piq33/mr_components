// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthReq _$AuthReqFromJson(Map<String, dynamic> json) {
  return _AuthReq.fromJson(json);
}

/// @nodoc
mixin _$AuthReq {
  /// 登录密码
  String get loginPwd => throw _privateConstructorUsedError;

  /// 登录方式
  /// 1: 用户密码
  /// 2: 短信验证码
  int get loginType => throw _privateConstructorUsedError;

  /// 用户名
  String get mobile => throw _privateConstructorUsedError;

  /// 手机验证码
  String get smsCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthReqCopyWith<AuthReq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthReqCopyWith<$Res> {
  factory $AuthReqCopyWith(AuthReq value, $Res Function(AuthReq) then) =
      _$AuthReqCopyWithImpl<$Res, AuthReq>;
  @useResult
  $Res call({String loginPwd, int loginType, String mobile, String smsCode});
}

/// @nodoc
class _$AuthReqCopyWithImpl<$Res, $Val extends AuthReq>
    implements $AuthReqCopyWith<$Res> {
  _$AuthReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginPwd = null,
    Object? loginType = null,
    Object? mobile = null,
    Object? smsCode = null,
  }) {
    return _then(_value.copyWith(
      loginPwd: null == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthReqImplCopyWith<$Res> implements $AuthReqCopyWith<$Res> {
  factory _$$AuthReqImplCopyWith(
          _$AuthReqImpl value, $Res Function(_$AuthReqImpl) then) =
      __$$AuthReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loginPwd, int loginType, String mobile, String smsCode});
}

/// @nodoc
class __$$AuthReqImplCopyWithImpl<$Res>
    extends _$AuthReqCopyWithImpl<$Res, _$AuthReqImpl>
    implements _$$AuthReqImplCopyWith<$Res> {
  __$$AuthReqImplCopyWithImpl(
      _$AuthReqImpl _value, $Res Function(_$AuthReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginPwd = null,
    Object? loginType = null,
    Object? mobile = null,
    Object? smsCode = null,
  }) {
    return _then(_$AuthReqImpl(
      loginPwd: null == loginPwd
          ? _value.loginPwd
          : loginPwd // ignore: cast_nullable_to_non_nullable
              as String,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthReqImpl extends _AuthReq {
  const _$AuthReqImpl(
      {required this.loginPwd,
      required this.loginType,
      required this.mobile,
      required this.smsCode})
      : super._();

  factory _$AuthReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthReqImplFromJson(json);

  /// 登录密码
  @override
  final String loginPwd;

  /// 登录方式
  /// 1: 用户密码
  /// 2: 短信验证码
  @override
  final int loginType;

  /// 用户名
  @override
  final String mobile;

  /// 手机验证码
  @override
  final String smsCode;

  @override
  String toString() {
    return 'AuthReq(loginPwd: $loginPwd, loginType: $loginType, mobile: $mobile, smsCode: $smsCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthReqImpl &&
            (identical(other.loginPwd, loginPwd) ||
                other.loginPwd == loginPwd) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, loginPwd, loginType, mobile, smsCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthReqImplCopyWith<_$AuthReqImpl> get copyWith =>
      __$$AuthReqImplCopyWithImpl<_$AuthReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthReqImplToJson(
      this,
    );
  }
}

abstract class _AuthReq extends AuthReq {
  const factory _AuthReq(
      {required final String loginPwd,
      required final int loginType,
      required final String mobile,
      required final String smsCode}) = _$AuthReqImpl;
  const _AuthReq._() : super._();

  factory _AuthReq.fromJson(Map<String, dynamic> json) = _$AuthReqImpl.fromJson;

  @override

  /// 登录密码
  String get loginPwd;
  @override

  /// 登录方式
  /// 1: 用户密码
  /// 2: 短信验证码
  int get loginType;
  @override

  /// 用户名
  String get mobile;
  @override

  /// 手机验证码
  String get smsCode;
  @override
  @JsonKey(ignore: true)
  _$$AuthReqImplCopyWith<_$AuthReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegularReq _$RegularReqFromJson(Map<String, dynamic> json) {
  return _RegularReq.fromJson(json);
}

/// @nodoc
mixin _$RegularReq {
  /// 转正学生学号
  String? get studentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegularReqCopyWith<RegularReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularReqCopyWith<$Res> {
  factory $RegularReqCopyWith(
          RegularReq value, $Res Function(RegularReq) then) =
      _$RegularReqCopyWithImpl<$Res, RegularReq>;
  @useResult
  $Res call({String? studentCode});
}

/// @nodoc
class _$RegularReqCopyWithImpl<$Res, $Val extends RegularReq>
    implements $RegularReqCopyWith<$Res> {
  _$RegularReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = freezed,
  }) {
    return _then(_value.copyWith(
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegularReqImplCopyWith<$Res>
    implements $RegularReqCopyWith<$Res> {
  factory _$$RegularReqImplCopyWith(
          _$RegularReqImpl value, $Res Function(_$RegularReqImpl) then) =
      __$$RegularReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? studentCode});
}

/// @nodoc
class __$$RegularReqImplCopyWithImpl<$Res>
    extends _$RegularReqCopyWithImpl<$Res, _$RegularReqImpl>
    implements _$$RegularReqImplCopyWith<$Res> {
  __$$RegularReqImplCopyWithImpl(
      _$RegularReqImpl _value, $Res Function(_$RegularReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = freezed,
  }) {
    return _then(_$RegularReqImpl(
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegularReqImpl extends _RegularReq {
  const _$RegularReqImpl({this.studentCode}) : super._();

  factory _$RegularReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegularReqImplFromJson(json);

  /// 转正学生学号
  @override
  final String? studentCode;

  @override
  String toString() {
    return 'RegularReq(studentCode: $studentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegularReqImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegularReqImplCopyWith<_$RegularReqImpl> get copyWith =>
      __$$RegularReqImplCopyWithImpl<_$RegularReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegularReqImplToJson(
      this,
    );
  }
}

abstract class _RegularReq extends RegularReq {
  const factory _RegularReq({final String? studentCode}) = _$RegularReqImpl;
  const _RegularReq._() : super._();

  factory _RegularReq.fromJson(Map<String, dynamic> json) =
      _$RegularReqImpl.fromJson;

  @override

  /// 转正学生学号
  String? get studentCode;
  @override
  @JsonKey(ignore: true)
  _$$RegularReqImplCopyWith<_$RegularReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  /// 用户身份
  @JsonKey(name: 'appUserIdentity')
  @UserIdentityNullableJsonConverter()
  UserIdentity get userIdentity => throw _privateConstructorUsedError;

  /// 登录手机号
  String get phoneNumber => throw _privateConstructorUsedError;

  /// 用户名称
  String get realName => throw _privateConstructorUsedError;

  /// 过期时间
  @TimestampNullableJsonConverter()
  DateTime? get expireTime => throw _privateConstructorUsedError;

  /// token
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'appUserIdentity')
      @UserIdentityNullableJsonConverter()
      UserIdentity userIdentity,
      String phoneNumber,
      String realName,
      @TimestampNullableJsonConverter() DateTime? expireTime,
      String? token});
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdentity = null,
    Object? phoneNumber = null,
    Object? realName = null,
    Object? expireTime = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      userIdentity: null == userIdentity
          ? _value.userIdentity
          : userIdentity // ignore: cast_nullable_to_non_nullable
              as UserIdentity,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthModelImplCopyWith<$Res>
    implements $AuthModelCopyWith<$Res> {
  factory _$$AuthModelImplCopyWith(
          _$AuthModelImpl value, $Res Function(_$AuthModelImpl) then) =
      __$$AuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'appUserIdentity')
      @UserIdentityNullableJsonConverter()
      UserIdentity userIdentity,
      String phoneNumber,
      String realName,
      @TimestampNullableJsonConverter() DateTime? expireTime,
      String? token});
}

/// @nodoc
class __$$AuthModelImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelImpl>
    implements _$$AuthModelImplCopyWith<$Res> {
  __$$AuthModelImplCopyWithImpl(
      _$AuthModelImpl _value, $Res Function(_$AuthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdentity = null,
    Object? phoneNumber = null,
    Object? realName = null,
    Object? expireTime = freezed,
    Object? token = freezed,
  }) {
    return _then(_$AuthModelImpl(
      userIdentity: null == userIdentity
          ? _value.userIdentity
          : userIdentity // ignore: cast_nullable_to_non_nullable
              as UserIdentity,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      realName: null == realName
          ? _value.realName
          : realName // ignore: cast_nullable_to_non_nullable
              as String,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthModelImpl extends _AuthModel {
  const _$AuthModelImpl(
      {@JsonKey(name: 'appUserIdentity')
      @UserIdentityNullableJsonConverter()
      this.userIdentity = UserIdentity.invalidate,
      this.phoneNumber = '',
      this.realName = '',
      @TimestampNullableJsonConverter() this.expireTime,
      this.token})
      : super._();

  factory _$AuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthModelImplFromJson(json);

  /// 用户身份
  @override
  @JsonKey(name: 'appUserIdentity')
  @UserIdentityNullableJsonConverter()
  final UserIdentity userIdentity;

  /// 登录手机号
  @override
  @JsonKey()
  final String phoneNumber;

  /// 用户名称
  @override
  @JsonKey()
  final String realName;

  /// 过期时间
  @override
  @TimestampNullableJsonConverter()
  final DateTime? expireTime;

  /// token
  @override
  final String? token;

  @override
  String toString() {
    return 'AuthModel(userIdentity: $userIdentity, phoneNumber: $phoneNumber, realName: $realName, expireTime: $expireTime, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelImpl &&
            (identical(other.userIdentity, userIdentity) ||
                other.userIdentity == userIdentity) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.realName, realName) ||
                other.realName == realName) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userIdentity, phoneNumber, realName, expireTime, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      __$$AuthModelImplCopyWithImpl<_$AuthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthModelImplToJson(
      this,
    );
  }
}

abstract class _AuthModel extends AuthModel {
  const factory _AuthModel(
      {@JsonKey(name: 'appUserIdentity')
      @UserIdentityNullableJsonConverter()
      final UserIdentity userIdentity,
      final String phoneNumber,
      final String realName,
      @TimestampNullableJsonConverter() final DateTime? expireTime,
      final String? token}) = _$AuthModelImpl;
  const _AuthModel._() : super._();

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$AuthModelImpl.fromJson;

  @override

  /// 用户身份
  @JsonKey(name: 'appUserIdentity')
  @UserIdentityNullableJsonConverter()
  UserIdentity get userIdentity;
  @override

  /// 登录手机号
  String get phoneNumber;
  @override

  /// 用户名称
  String get realName;
  @override

  /// 过期时间
  @TimestampNullableJsonConverter()
  DateTime? get expireTime;
  @override

  /// token
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  /// 正式学生家长id
  int? get formalUserId => throw _privateConstructorUsedError;

  /// 潜在生家长id
  int? get potentialUserId => throw _privateConstructorUsedError;

  /// 学生账号是否启用
  @JsonKey(name: 'regularStudentFlag')
  bool get regular => throw _privateConstructorUsedError;

  /// 用户姓名
  String get userName => throw _privateConstructorUsedError;

  /// 用户昵称
  String get nickName => throw _privateConstructorUsedError;

  /// 头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar => throw _privateConstructorUsedError;

  /// 学生就读状态
  @StudentStatusJsonConverter()
  @JsonKey(name: 'studentStatus')
  StudentStatus get status => throw _privateConstructorUsedError;

  /// 性别
  @GenderIntJsonConverter()
  Gender get gender => throw _privateConstructorUsedError;

  /// 生日
  @SimpleDateTimeJsonConverter()
  DateTime? get birthDate => throw _privateConstructorUsedError;

  /// 手机号
  @JsonKey(name: 'contactPhone')
  String get phoneNumber => throw _privateConstructorUsedError;

  /// 亲属关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship => throw _privateConstructorUsedError;

  /// 家庭住址-省
  @JsonKey(name: 'residenceAddressProvince')
  String get province => throw _privateConstructorUsedError;

  /// 家庭住址-市
  @JsonKey(name: 'residenceAddressCity')
  String get city => throw _privateConstructorUsedError;

  /// 家庭住址-区
  @JsonKey(name: 'residenceAddressDistrict')
  String get district => throw _privateConstructorUsedError;

  /// 家庭住址-具体
  @JsonKey(name: 'residenceAddressLocation')
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? formalUserId,
      int? potentialUserId,
      @JsonKey(name: 'regularStudentFlag') bool regular,
      String userName,
      String nickName,
      @JsonKey(name: 'avatarUrl') String? avatar,
      @StudentStatusJsonConverter()
      @JsonKey(name: 'studentStatus')
      StudentStatus status,
      @GenderIntJsonConverter() Gender gender,
      @SimpleDateTimeJsonConverter() DateTime? birthDate,
      @JsonKey(name: 'contactPhone') String phoneNumber,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'residenceAddressProvince') String province,
      @JsonKey(name: 'residenceAddressCity') String city,
      @JsonKey(name: 'residenceAddressDistrict') String district,
      @JsonKey(name: 'residenceAddressLocation') String location});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formalUserId = freezed,
    Object? potentialUserId = freezed,
    Object? regular = null,
    Object? userName = null,
    Object? nickName = null,
    Object? avatar = freezed,
    Object? status = null,
    Object? gender = null,
    Object? birthDate = freezed,
    Object? phoneNumber = null,
    Object? relationship = null,
    Object? province = null,
    Object? city = null,
    Object? district = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      formalUserId: freezed == formalUserId
          ? _value.formalUserId
          : formalUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      potentialUserId: freezed == potentialUserId
          ? _value.potentialUserId
          : potentialUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StudentStatus,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? formalUserId,
      int? potentialUserId,
      @JsonKey(name: 'regularStudentFlag') bool regular,
      String userName,
      String nickName,
      @JsonKey(name: 'avatarUrl') String? avatar,
      @StudentStatusJsonConverter()
      @JsonKey(name: 'studentStatus')
      StudentStatus status,
      @GenderIntJsonConverter() Gender gender,
      @SimpleDateTimeJsonConverter() DateTime? birthDate,
      @JsonKey(name: 'contactPhone') String phoneNumber,
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      Relationship relationship,
      @JsonKey(name: 'residenceAddressProvince') String province,
      @JsonKey(name: 'residenceAddressCity') String city,
      @JsonKey(name: 'residenceAddressDistrict') String district,
      @JsonKey(name: 'residenceAddressLocation') String location});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formalUserId = freezed,
    Object? potentialUserId = freezed,
    Object? regular = null,
    Object? userName = null,
    Object? nickName = null,
    Object? avatar = freezed,
    Object? status = null,
    Object? gender = null,
    Object? birthDate = freezed,
    Object? phoneNumber = null,
    Object? relationship = null,
    Object? province = null,
    Object? city = null,
    Object? district = null,
    Object? location = null,
  }) {
    return _then(_$UserModelImpl(
      formalUserId: freezed == formalUserId
          ? _value.formalUserId
          : formalUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      potentialUserId: freezed == potentialUserId
          ? _value.potentialUserId
          : potentialUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StudentStatus,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      relationship: null == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as Relationship,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {this.formalUserId,
      this.potentialUserId,
      @JsonKey(name: 'regularStudentFlag') this.regular = true,
      this.userName = '',
      this.nickName = '',
      @JsonKey(name: 'avatarUrl') this.avatar,
      @StudentStatusJsonConverter()
      @JsonKey(name: 'studentStatus')
      this.status = StudentStatus.unknown,
      @GenderIntJsonConverter() this.gender = Gender.unknown,
      @SimpleDateTimeJsonConverter() this.birthDate,
      @JsonKey(name: 'contactPhone') this.phoneNumber = '',
      @JsonKey(name: 'familyRelation')
      @RelationshipJsonConverter()
      this.relationship = Relationship.other,
      @JsonKey(name: 'residenceAddressProvince') this.province = '',
      @JsonKey(name: 'residenceAddressCity') this.city = '',
      @JsonKey(name: 'residenceAddressDistrict') this.district = '',
      @JsonKey(name: 'residenceAddressLocation') this.location = ''})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  /// 正式学生家长id
  @override
  final int? formalUserId;

  /// 潜在生家长id
  @override
  final int? potentialUserId;

  /// 学生账号是否启用
  @override
  @JsonKey(name: 'regularStudentFlag')
  final bool regular;

  /// 用户姓名
  @override
  @JsonKey()
  final String userName;

  /// 用户昵称
  @override
  @JsonKey()
  final String nickName;

  /// 头像
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatar;

  /// 学生就读状态
  @override
  @StudentStatusJsonConverter()
  @JsonKey(name: 'studentStatus')
  final StudentStatus status;

  /// 性别
  @override
  @JsonKey()
  @GenderIntJsonConverter()
  final Gender gender;

  /// 生日
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? birthDate;

  /// 手机号
  @override
  @JsonKey(name: 'contactPhone')
  final String phoneNumber;

  /// 亲属关系
  @override
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  final Relationship relationship;

  /// 家庭住址-省
  @override
  @JsonKey(name: 'residenceAddressProvince')
  final String province;

  /// 家庭住址-市
  @override
  @JsonKey(name: 'residenceAddressCity')
  final String city;

  /// 家庭住址-区
  @override
  @JsonKey(name: 'residenceAddressDistrict')
  final String district;

  /// 家庭住址-具体
  @override
  @JsonKey(name: 'residenceAddressLocation')
  final String location;

  @override
  String toString() {
    return 'UserModel(formalUserId: $formalUserId, potentialUserId: $potentialUserId, regular: $regular, userName: $userName, nickName: $nickName, avatar: $avatar, status: $status, gender: $gender, birthDate: $birthDate, phoneNumber: $phoneNumber, relationship: $relationship, province: $province, city: $city, district: $district, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.formalUserId, formalUserId) ||
                other.formalUserId == formalUserId) &&
            (identical(other.potentialUserId, potentialUserId) ||
                other.potentialUserId == potentialUserId) &&
            (identical(other.regular, regular) || other.regular == regular) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      formalUserId,
      potentialUserId,
      regular,
      userName,
      nickName,
      avatar,
      status,
      gender,
      birthDate,
      phoneNumber,
      relationship,
      province,
      city,
      district,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
          {final int? formalUserId,
          final int? potentialUserId,
          @JsonKey(name: 'regularStudentFlag') final bool regular,
          final String userName,
          final String nickName,
          @JsonKey(name: 'avatarUrl') final String? avatar,
          @StudentStatusJsonConverter()
          @JsonKey(name: 'studentStatus')
          final StudentStatus status,
          @GenderIntJsonConverter() final Gender gender,
          @SimpleDateTimeJsonConverter() final DateTime? birthDate,
          @JsonKey(name: 'contactPhone') final String phoneNumber,
          @JsonKey(name: 'familyRelation')
          @RelationshipJsonConverter()
          final Relationship relationship,
          @JsonKey(name: 'residenceAddressProvince') final String province,
          @JsonKey(name: 'residenceAddressCity') final String city,
          @JsonKey(name: 'residenceAddressDistrict') final String district,
          @JsonKey(name: 'residenceAddressLocation') final String location}) =
      _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override

  /// 正式学生家长id
  int? get formalUserId;
  @override

  /// 潜在生家长id
  int? get potentialUserId;
  @override

  /// 学生账号是否启用
  @JsonKey(name: 'regularStudentFlag')
  bool get regular;
  @override

  /// 用户姓名
  String get userName;
  @override

  /// 用户昵称
  String get nickName;
  @override

  /// 头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar;
  @override

  /// 学生就读状态
  @StudentStatusJsonConverter()
  @JsonKey(name: 'studentStatus')
  StudentStatus get status;
  @override

  /// 性别
  @GenderIntJsonConverter()
  Gender get gender;
  @override

  /// 生日
  @SimpleDateTimeJsonConverter()
  DateTime? get birthDate;
  @override

  /// 手机号
  @JsonKey(name: 'contactPhone')
  String get phoneNumber;
  @override

  /// 亲属关系
  @JsonKey(name: 'familyRelation')
  @RelationshipJsonConverter()
  Relationship get relationship;
  @override

  /// 家庭住址-省
  @JsonKey(name: 'residenceAddressProvince')
  String get province;
  @override

  /// 家庭住址-市
  @JsonKey(name: 'residenceAddressCity')
  String get city;
  @override

  /// 家庭住址-区
  @JsonKey(name: 'residenceAddressDistrict')
  String get district;
  @override

  /// 家庭住址-具体
  @JsonKey(name: 'residenceAddressLocation')
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUpdateReq _$UserUpdateReqFromJson(Map<String, dynamic> json) {
  return _UserUpdateReq.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateReq {
  /// 昵称
  String? get nickName => throw _privateConstructorUsedError;

  /// 头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar => throw _privateConstructorUsedError;

  /// 生日
  String? get birthDate => throw _privateConstructorUsedError;

  /// 性别
  int? get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserUpdateReqCopyWith<UserUpdateReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateReqCopyWith<$Res> {
  factory $UserUpdateReqCopyWith(
          UserUpdateReq value, $Res Function(UserUpdateReq) then) =
      _$UserUpdateReqCopyWithImpl<$Res, UserUpdateReq>;
  @useResult
  $Res call(
      {String? nickName,
      @JsonKey(name: 'avatarUrl') String? avatar,
      String? birthDate,
      int? gender});
}

/// @nodoc
class _$UserUpdateReqCopyWithImpl<$Res, $Val extends UserUpdateReq>
    implements $UserUpdateReqCopyWith<$Res> {
  _$UserUpdateReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = freezed,
    Object? avatar = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateReqImplCopyWith<$Res>
    implements $UserUpdateReqCopyWith<$Res> {
  factory _$$UserUpdateReqImplCopyWith(
          _$UserUpdateReqImpl value, $Res Function(_$UserUpdateReqImpl) then) =
      __$$UserUpdateReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nickName,
      @JsonKey(name: 'avatarUrl') String? avatar,
      String? birthDate,
      int? gender});
}

/// @nodoc
class __$$UserUpdateReqImplCopyWithImpl<$Res>
    extends _$UserUpdateReqCopyWithImpl<$Res, _$UserUpdateReqImpl>
    implements _$$UserUpdateReqImplCopyWith<$Res> {
  __$$UserUpdateReqImplCopyWithImpl(
      _$UserUpdateReqImpl _value, $Res Function(_$UserUpdateReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = freezed,
    Object? avatar = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$UserUpdateReqImpl(
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUpdateReqImpl extends _UserUpdateReq {
  const _$UserUpdateReqImpl(
      {this.nickName,
      @JsonKey(name: 'avatarUrl') this.avatar,
      this.birthDate,
      this.gender})
      : super._();

  factory _$UserUpdateReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateReqImplFromJson(json);

  /// 昵称
  @override
  final String? nickName;

  /// 头像
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatar;

  /// 生日
  @override
  final String? birthDate;

  /// 性别
  @override
  final int? gender;

  @override
  String toString() {
    return 'UserUpdateReq(nickName: $nickName, avatar: $avatar, birthDate: $birthDate, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateReqImpl &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nickName, avatar, birthDate, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateReqImplCopyWith<_$UserUpdateReqImpl> get copyWith =>
      __$$UserUpdateReqImplCopyWithImpl<_$UserUpdateReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateReqImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateReq extends UserUpdateReq {
  const factory _UserUpdateReq(
      {final String? nickName,
      @JsonKey(name: 'avatarUrl') final String? avatar,
      final String? birthDate,
      final int? gender}) = _$UserUpdateReqImpl;
  const _UserUpdateReq._() : super._();

  factory _UserUpdateReq.fromJson(Map<String, dynamic> json) =
      _$UserUpdateReqImpl.fromJson;

  @override

  /// 昵称
  String? get nickName;
  @override

  /// 头像
  @JsonKey(name: 'avatarUrl')
  String? get avatar;
  @override

  /// 生日
  String? get birthDate;
  @override

  /// 性别
  int? get gender;
  @override
  @JsonKey(ignore: true)
  _$$UserUpdateReqImplCopyWith<_$UserUpdateReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegularOtherParam _$RegularOtherParamFromJson(Map<String, dynamic> json) {
  return _RegularOtherParam.fromJson(json);
}

/// @nodoc
mixin _$RegularOtherParam {
  /// 学生学号
  String? get studentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegularOtherParamCopyWith<RegularOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegularOtherParamCopyWith<$Res> {
  factory $RegularOtherParamCopyWith(
          RegularOtherParam value, $Res Function(RegularOtherParam) then) =
      _$RegularOtherParamCopyWithImpl<$Res, RegularOtherParam>;
  @useResult
  $Res call({String? studentCode});
}

/// @nodoc
class _$RegularOtherParamCopyWithImpl<$Res, $Val extends RegularOtherParam>
    implements $RegularOtherParamCopyWith<$Res> {
  _$RegularOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = freezed,
  }) {
    return _then(_value.copyWith(
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegularOtherParamImplCopyWith<$Res>
    implements $RegularOtherParamCopyWith<$Res> {
  factory _$$RegularOtherParamImplCopyWith(_$RegularOtherParamImpl value,
          $Res Function(_$RegularOtherParamImpl) then) =
      __$$RegularOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? studentCode});
}

/// @nodoc
class __$$RegularOtherParamImplCopyWithImpl<$Res>
    extends _$RegularOtherParamCopyWithImpl<$Res, _$RegularOtherParamImpl>
    implements _$$RegularOtherParamImplCopyWith<$Res> {
  __$$RegularOtherParamImplCopyWithImpl(_$RegularOtherParamImpl _value,
      $Res Function(_$RegularOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = freezed,
  }) {
    return _then(_$RegularOtherParamImpl(
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegularOtherParamImpl extends _RegularOtherParam {
  const _$RegularOtherParamImpl({this.studentCode}) : super._();

  factory _$RegularOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegularOtherParamImplFromJson(json);

  /// 学生学号
  @override
  final String? studentCode;

  @override
  String toString() {
    return 'RegularOtherParam(studentCode: $studentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegularOtherParamImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegularOtherParamImplCopyWith<_$RegularOtherParamImpl> get copyWith =>
      __$$RegularOtherParamImplCopyWithImpl<_$RegularOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegularOtherParamImplToJson(
      this,
    );
  }
}

abstract class _RegularOtherParam extends RegularOtherParam {
  const factory _RegularOtherParam({final String? studentCode}) =
      _$RegularOtherParamImpl;
  const _RegularOtherParam._() : super._();

  factory _RegularOtherParam.fromJson(Map<String, dynamic> json) =
      _$RegularOtherParamImpl.fromJson;

  @override

  /// 学生学号
  String? get studentCode;
  @override
  @JsonKey(ignore: true)
  _$$RegularOtherParamImplCopyWith<_$RegularOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
