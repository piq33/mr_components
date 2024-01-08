import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/gender_converter.dart';
import 'package:bsl/model/converter/relationship_converter.dart';
import 'package:bsl/model/converter/school/student_status_converter.dart';
import 'package:bsl/model/converter/timestamp_converter.dart';
import 'package:bsl/model/converter/user_identity_converter.dart';
import 'package:bsl/model/school_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

/// 用户身份
enum UserIdentity {
  /// 教师
  teacher,

  /// 正式生(在App内称formal)
  parent,

  /// 潜在生(在App内称potential)
  visitor,

  /// 非法身份
  invalidate,
}

@freezed
class AuthReq with _$AuthReq {
  const AuthReq._();
  const factory AuthReq({
    /// 登录密码
    required String loginPwd,

    /// 登录方式
    /// 1: 用户密码
    /// 2: 短信验证码
    required int loginType,

    /// 用户名
    required String mobile,

    /// 手机验证码
    required String smsCode,
  }) = _AuthReq;

  factory AuthReq.fromJson(Map<String, Object?> json) =>
      _$AuthReqFromJson(json);
}

// 潜生转正请求
@freezed
class RegularReq with _$RegularReq {
  const RegularReq._();
  const factory RegularReq({
    /// 转正学生学号
    String? studentCode,
  }) = _RegularReq;

  factory RegularReq.fromJson(Map<String, Object?> json) =>
      _$RegularReqFromJson(json);
}

@freezed
class AuthModel with _$AuthModel {
  const AuthModel._();
  const factory AuthModel({
    /// 用户身份
    @JsonKey(name: 'appUserIdentity')
    @UserIdentityNullableJsonConverter()
    @Default(UserIdentity.invalidate)
    UserIdentity userIdentity,

    /// 登录手机号
    @Default('') String phoneNumber,

    /// 用户名称
    @Default('') String realName,

    /// 过期时间
    @TimestampNullableJsonConverter() DateTime? expireTime,

    /// token
    String? token,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, Object?> json) =>
      _$AuthModelFromJson(json);
}

/// 登录用户信息
@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    /// 正式学生家长id
    int? formalUserId,

    /// 潜在生家长id
    int? potentialUserId,

    /// 学生账号是否启用
    @JsonKey(name: 'regularStudentFlag') @Default(true) bool regular,

    /// 用户姓名
    @Default('') String userName,

    /// 用户昵称
    @Default('') String nickName,

    /// 头像
    @JsonKey(name: 'avatarUrl') String? avatar,

    /// 学生就读状态
    @StudentStatusJsonConverter()
    @JsonKey(name: 'studentStatus')
    @Default(StudentStatus.unknown)
    StudentStatus status,

    /// 性别
    @GenderIntJsonConverter() @Default(Gender.unknown) Gender gender,

    /// 生日
    @SimpleDateTimeJsonConverter() DateTime? birthDate,

    /// 手机号
    @JsonKey(name: 'contactPhone') @Default('') String phoneNumber,

    /// 亲属关系
    @JsonKey(name: 'familyRelation')
    @Default(Relationship.other)
    @RelationshipJsonConverter()
    Relationship relationship,

    /// 家庭住址-省
    @JsonKey(name: 'residenceAddressProvince') @Default('') String province,

    /// 家庭住址-市
    @JsonKey(name: 'residenceAddressCity') @Default('') String city,

    /// 家庭住址-区
    @JsonKey(name: 'residenceAddressDistrict') @Default('') String district,

    /// 家庭住址-具体
    @JsonKey(name: 'residenceAddressLocation') @Default('') String location,
  }) = _UserModel;

  factory UserModel.empty() =>
      const UserModel(relationship: Relationship.other);

  bool get formal =>
      formalUserId != null &&
      formalUserId != -1 &&
      (potentialUserId == null || potentialUserId == -1);
  bool get potential =>
      potentialUserId != null &&
      potentialUserId != -1 &&
      (formalUserId == null || formalUserId == -1);
  int? get userId => formalUserId ?? potentialUserId;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserUpdateReq with _$UserUpdateReq {
  const UserUpdateReq._();
  const factory UserUpdateReq({
    /// 昵称
    String? nickName,

    /// 头像
    @JsonKey(name: 'avatarUrl') String? avatar,

    /// 生日
    String? birthDate,

    /// 性别
    int? gender,
  }) = _UserUpdateReq;

  factory UserUpdateReq.fromJson(Map<String, Object?> json) =>
      _$UserUpdateReqFromJson(json);
}

@collection
class Authentication {
  final Id id = Isar.autoIncrement;

  /// 用户身份
  @Enumerated(EnumType.name)
  final UserIdentity userIdentity;

  /// 用户名称
  final String realName;

  /// 用户手机号
  final String phoneNumber;

  /// 过期时间
  final DateTime expireTime;

  /// token
  final String token;

  const Authentication({
    required this.userIdentity,
    required this.realName,
    required this.phoneNumber,
    required this.expireTime,
    required this.token,
  });

  Authentication.logout()
      : this(
          userIdentity: UserIdentity.invalidate,
          realName: '',
          phoneNumber: '',
          expireTime: DateTime.now(),
          token: '',
        );

  Authentication.convertFromAuthModel(AuthModel authModel)
      : this(
          userIdentity: authModel.userIdentity,
          realName: authModel.realName,
          phoneNumber: authModel.phoneNumber,
          expireTime: authModel.expireTime ?? DateTime.now(),
          token: authModel.token ?? '',
        );

  bool get logged => token.isNotEmpty;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Authentication &&
          runtimeType == other.runtimeType &&
          userIdentity == other.userIdentity &&
          realName == other.realName &&
          expireTime == other.expireTime &&
          token == other.token;

  @override
  int get hashCode =>
      userIdentity.hashCode ^
      realName.hashCode ^
      expireTime.hashCode ^
      token.hashCode;

  @override
  String toString() {
    return 'Authentication{userIdentity: $userIdentity, realName: $realName, expireTime: $expireTime, token: $token}';
  }
}

@freezed
class RegularOtherParam with _$RegularOtherParam {
  const RegularOtherParam._();
  const factory RegularOtherParam({
    /// 学生学号
    String? studentCode,
  }) = _RegularOtherParam;

  factory RegularOtherParam.fromJson(Map<String, Object?> json) =>
      _$RegularOtherParamFromJson(json);
}
