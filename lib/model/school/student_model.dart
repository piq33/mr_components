import 'package:components/model/common_model.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/gender_converter.dart';
import 'package:components/model/converter/relationship_converter.dart';
import 'package:components/model/converter/school/student_status_converter.dart';
import 'package:components/model/converter/string2int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

enum StudentStatus {
  unknown(-1, ''),

  /// 未入读
  registered(0, '未入读'),

  /// 在读
  atSchool(1, '在读'),

  /// 毕业
  graduated(2, '毕业'),

  /// 休学
  suspension(3, '休学'),

  /// 转学
  transfered(4, '转学'),

  /// 退学
  quitSchool(5, '退学'),

  /// 调出
  transferOut(6, '调出'),

  /// 离校未办
  unSchool(7, '离校未办'),

  /// 取消报名
  cancel(8, '取消报名'),

  /// 取消入读
  cancelTheRead(9, '取消入读');

  final int value;
  final String display;
  const StudentStatus(this.value, this.display);
}

/// 字典值
@freezed
class RelationshipModel with _$RelationshipModel {
  const RelationshipModel._();
  const factory RelationshipModel({
    /// 关系id
    @JsonKey(name: 'dictId') required int id,

    /// 关系编码
    @JsonKey(name: 'dictCode') required int code,

    /// 中文名称
    @JsonKey(name: 'dictValue') @Default('') String value,

    /// 英文名称
    @JsonKey(name: 'dictEngValue') @Default('') String engValue,

    /// 排序
    @String2IntJsonConverter() required int seq,
  }) = _RelationshipModel;

  factory RelationshipModel.fromJson(Map<String, Object?> json) =>
      _$RelationshipModelFromJson(json);
}

/// 字典值
@freezed
class FamilyMemberModel with _$FamilyMemberModel {
  const FamilyMemberModel._();
  const factory FamilyMemberModel({
    /// 手机号码
    @JsonKey(name: 'parentPhone') @Default('') String phone,

    /// 名称
    @JsonKey(name: 'parentName') @Default('') String name,

    /// 亲属关系
    @JsonKey(name: 'familyRelation')
    @Default(Relationship.other)
    @RelationshipJsonConverter()
    Relationship relationship,

    /// 亲属关系描述
    @JsonKey(name: 'familyRelationDesc') @Default('') String relationDesc,
  }) = _FamilyMemberModel;

  factory FamilyMemberModel.fromJson(Map<String, Object?> json) =>
      _$FamilyMemberModelFromJson(json);
}

/// 学生离校日期请求
@freezed
class LeaveSchoolReq with _$LeaveSchoolReq {
  const LeaveSchoolReq._();
  const factory LeaveSchoolReq({
    /// 学校编码
    required String schoolCode,

    /// 学生编码
    required String studentCode,
  }) = _LeaveSchoolReq;

  factory LeaveSchoolReq.fromJson(Map<String, Object?> json) =>
      _$LeaveSchoolReqFromJson(json);
}

/// 学生离校日期
@freezed
class LeaveSchoolModel with _$LeaveSchoolModel {
  const LeaveSchoolModel._();
  const factory LeaveSchoolModel({
    @TimestampStringNullableJsonConverter() DateTime? leaveDate,
  }) = _LeaveSchoolModel;

  factory LeaveSchoolModel.fromJson(Map<String, Object?> json) =>
      _$LeaveSchoolModelFromJson(json);
}

/// 更新学生信息请求
@freezed
class StudentReq with _$StudentReq {
  const StudentReq._();
  const factory StudentReq({
    /// 学号
    required String studentCode,

    /// 头像地址
    @JsonKey(name: 'studentAvatarUrl') String? avatarUrl,
  }) = _StudentReq;

  factory StudentReq.fromJson(Map<String, Object?> json) =>
      _$StudentReqFromJson(json);
}

@freezed
class StudentModel with _$StudentModel {
  const StudentModel._();
  const factory StudentModel({
    /// 正式学生编号
    @JsonKey(name: 'studentId') int? studentId,

    /// 潜在学生编号
    @JsonKey(name: 'potentialStuId') int? potentialId,

    /// 学生学号
    @Default('') String studentCode,

    /// 学生姓名
    @JsonKey(name: 'studentName') String? name,

    /// 学生英文名
    @JsonKey(name: 'schoolEngName') String? engName,

    /// 头像
    @JsonKey(name: 'avatarUrl') String? avatar,

    /// 学生就读状态
    @StudentStatusJsonConverter()
    @JsonKey(name: 'studentStatus')
    @Default(StudentStatus.unknown)
    StudentStatus status,

    /// 学生性别
    @JsonKey(name: 'studentSex')
    @GenderIntJsonConverter()
    @Default(Gender.unknown)
    Gender sex,

    /// 家庭成员关系
    @JsonKey(name: 'familyRelationship')
    @RelationshipNullableJsonConverter()
    Relationship? relationship,

    /// 出生日期
    @JsonKey(name: 'studentBirth')
    @SimpleDateTimeJsonConverter()
    DateTime? birth,

    /// 出生日期(备选)
    @JsonKey(name: 'brithDate') @SimpleDateTimeJsonConverter() DateTime? birth2,

    /// 当前学生所在园所是否已开通博校声
    @JsonKey(name: 'schoolOpenFlag') @Default(false) bool schoolEnable,

    /// 学校id
    int? schoolId,

    /// 学校编码
    String? schoolCode,

    /// 学校名称
    @Default('') String schoolName,

    /// 学校英文名称
    @Default('') String studentEngName,

    /// 就读学年学期编码
    String? yearTermCode,

    /// 就读学年学期名称
    String? yearTermName,

    /// 就读学期编码
    String? termCode,

    /// 就读学期名称
    String? termName,

    /// 就读学段编码
    String? phaseCode,

    /// 学段名称
    @Default('') String phaseName,

    /// 就读课程编码
    String? courseCode,

    /// 课程名称
    @Default('') String courseName,

    /// 年级编码
    String? gradeCode,

    /// 年级名称
    @Default('') String gradeName,

    /// 班级编码
    String? classCode,

    /// 班级名称
    @Default('') String className,

    /// 证件类型
    @Default(0) int credentialsType,

    /// 证件号
    String? credentialsNumber,

    /// 离校日期
    @DateTimeJsonConverter() DateTime? leaveDate,

    /// 省份
    @JsonKey(name: 'residenceAddressProvince') String? province,

    /// 市
    @JsonKey(name: 'residenceAddressCity') String? city,

    /// 区
    @JsonKey(name: 'residenceAddressDistrict') String? district,

    /// 详细地址
    @JsonKey(name: 'residenceAddressLocation') String? location,

    /// 亲属列表
    @JsonKey(name: 'familyVOS') List<FamilyMemberModel>? members,
  }) = _StudentModel;

  factory StudentModel.empty() => const StudentModel(sex: Gender.unknown);

  int get uniqueId => studentId ?? potentialId ?? -1;
  String get studentNo => studentCode;

  bool get validate => studentId != null || potentialId != null;

  /// 是否有正式编号
  bool get hasStudentId => studentId != null && studentId != -1;

  /// 是否潜在学生
  bool get hasPotentialId => potentialId != null && potentialId != -1;
  DateTime? get birthday => birth ?? birth2;
  int? get age =>
      birthday == null ? null : DateTime.now().year - birthday!.year;
  String get address =>
      '${province ?? ''}${city ?? ''}${district ?? ''}${location ?? ''}';
  bool sameAs(StudentModel other) {
    final curStudentId = studentId ?? -1;
    final curPotentialId = potentialId ?? -1;
    final otherStudentId = other.studentId ?? -1;
    final otherPotentialId = other.potentialId ?? -1;
    return curStudentId == otherStudentId && curPotentialId == otherPotentialId;
  }

  // 学生基础信息是否一致
  bool baseInfoEqual(StudentModel other) {
    return sameAs(other) &&
        name == other.name &&
        avatar == other.avatar &&
        sex == other.sex &&
        birthday == other.birthday &&
        province == other.province &&
        city == other.city;
  }

  StudentModel sync(StudentModel student) {
    return copyWith(
      name: student.name ?? name,
      engName: student.engName ?? engName,
      avatar: student.avatar ?? avatar,
      sex: student.sex != Gender.unknown ? student.sex : sex,
      birth: student.birth ?? birth,
      birth2: student.birth2 ?? birth2,
      credentialsType: student.credentialsType,
      credentialsNumber: student.credentialsNumber ?? credentialsNumber,
      province: student.province ?? province,
      city: student.city ?? city,
      district: student.district ?? district,
      location: student.location ?? location,
    );
  }

  factory StudentModel.fromPotential(PotentialStudentModel potential) {
    return StudentModel(
      studentId: -1,
      potentialId: potential.id,
      name: potential.name,
      avatar: potential.avatar,
      sex: potential.gender,
      birth: potential.birth,
      province: potential.province,
      city: potential.city,
    );
  }

  factory StudentModel.fromJson(Map<String, Object?> json) =>
      _$StudentModelFromJson(json);
}

/// 新增/更新潜在学生请求
@freezed
class PotentialStudentReq with _$PotentialStudentReq {
  const PotentialStudentReq._();
  const factory PotentialStudentReq({
    /// 学生主键
    @JsonKey(includeIfNull: false) int? id,

    /// 学生头像
    @JsonKey(name: 'studentAvatar') String? avatar,

    /// 学生出生年月日(yyyy-MM-dd)
    @JsonKey(name: 'studentBirth') String? birth,

    /// 学生姓名
    @JsonKey(name: 'studentName') String? name,

    /// 学生身份证号
    @JsonKey(name: 'studentIdentity') String? identity,

    /// 学生性别
    @JsonKey(name: 'studentSex') @GenderIntJsonConverter() Gender? gender,

    /// 家庭关系
    @JsonKey(name: 'familyRelationship') int? relationship,

    /// 户籍地址-省
    @JsonKey(name: 'registeredAddressProvince') String? province,

    /// 户籍地址-市
    @JsonKey(name: 'registeredAddressCity') String? city,
  }) = _PotentialStudentReq;

  factory PotentialStudentReq.fromJson(Map<String, Object?> json) =>
      _$PotentialStudentReqFromJson(json);
}

/// 潜在学生详细信息
@freezed
class PotentialStudentModel with _$PotentialStudentModel {
  const PotentialStudentModel._();
  const factory PotentialStudentModel({
    /// 学生主键
    int? id,

    /// 家长电话
    @Default('') String parentPhone,

    /// 学生姓名
    @JsonKey(name: 'studentName') required String name,

    /// 学生头像
    @JsonKey(name: 'studentAvatar') required String avatar,

    /// 学生性别
    @JsonKey(name: 'studentSex')
    @GenderIntJsonConverter()
    @Default(Gender.unknown)
    Gender gender,

    /// 学生出生年月日(yyyy-MM-dd)
    @JsonKey(name: 'studentBirth')
    @SimpleDateTimeJsonConverter()
    DateTime? birth,

    /// 家庭关系
    @JsonKey(name: 'familyRelationship') int? relationship,

    /// 家庭关系中文描述
    @JsonKey(name: 'familyRelationshipDesc')
    @Default('')
    String relationshipDesc,

    /// 家庭关系英文描述
    @JsonKey(name: 'familyRelationshipEngDesc')
    @Default('')
    String relationshipEngDesc,

    /// 身份证
    @JsonKey(name: 'studentIdentity') @Default('') String identity,

    /// 所在省份
    @JsonKey(name: 'registeredAddressProvince') String? province,

    /// 所在城市
    @JsonKey(name: 'registeredAddressCity') String? city,
  }) = _PotentialStudentModel;

  factory PotentialStudentModel.fromJson(Map<String, Object?> json) =>
      _$PotentialStudentModelFromJson(json);
}

@freezed
class DeletePotentialReq with _$DeletePotentialReq {
  const DeletePotentialReq._();
  const factory DeletePotentialReq({
    @JsonKey(name: 'potentialId') required int deletePotentialId,
    @JsonKey(name: 'mergeToPotentialId') required int mergePotentialId,
    @JsonKey(name: 'studentId') required int mergeStudentId,
  }) = _DeletePotentialReq;

  factory DeletePotentialReq.fromJson(Map<String, Object?> json) =>
      _$DeletePotentialReqFromJson(json);
}
