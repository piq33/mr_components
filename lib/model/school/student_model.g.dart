// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RelationshipModelImpl _$$RelationshipModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RelationshipModelImpl(
      id: json['dictId'] as int,
      code: json['dictCode'] as int,
      value: json['dictValue'] as String? ?? '',
      engValue: json['dictEngValue'] as String? ?? '',
      seq: const String2IntJsonConverter().fromJson(json['seq'] as String),
    );

Map<String, dynamic> _$$RelationshipModelImplToJson(
        _$RelationshipModelImpl instance) =>
    <String, dynamic>{
      'dictId': instance.id,
      'dictCode': instance.code,
      'dictValue': instance.value,
      'dictEngValue': instance.engValue,
      'seq': const String2IntJsonConverter().toJson(instance.seq),
    };

_$FamilyMemberModelImpl _$$FamilyMemberModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FamilyMemberModelImpl(
      phone: json['parentPhone'] as String? ?? '',
      name: json['parentName'] as String? ?? '',
      relationship: json['familyRelation'] == null
          ? Relationship.other
          : const RelationshipJsonConverter()
              .fromJson(json['familyRelation'] as int),
      relationDesc: json['familyRelationDesc'] as String? ?? '',
    );

Map<String, dynamic> _$$FamilyMemberModelImplToJson(
        _$FamilyMemberModelImpl instance) =>
    <String, dynamic>{
      'parentPhone': instance.phone,
      'parentName': instance.name,
      'familyRelation':
          const RelationshipJsonConverter().toJson(instance.relationship),
      'familyRelationDesc': instance.relationDesc,
    };

_$LeaveSchoolReqImpl _$$LeaveSchoolReqImplFromJson(Map<String, dynamic> json) =>
    _$LeaveSchoolReqImpl(
      schoolCode: json['schoolCode'] as String,
      studentCode: json['studentCode'] as String,
    );

Map<String, dynamic> _$$LeaveSchoolReqImplToJson(
        _$LeaveSchoolReqImpl instance) =>
    <String, dynamic>{
      'schoolCode': instance.schoolCode,
      'studentCode': instance.studentCode,
    };

_$LeaveSchoolModelImpl _$$LeaveSchoolModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveSchoolModelImpl(
      leaveDate: _$JsonConverterFromJson<String, DateTime?>(json['leaveDate'],
          const TimestampStringNullableJsonConverter().fromJson),
    );

Map<String, dynamic> _$$LeaveSchoolModelImplToJson(
        _$LeaveSchoolModelImpl instance) =>
    <String, dynamic>{
      'leaveDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.leaveDate),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$StudentReqImpl _$$StudentReqImplFromJson(Map<String, dynamic> json) =>
    _$StudentReqImpl(
      studentCode: json['studentCode'] as String,
      avatarUrl: json['studentAvatarUrl'] as String?,
    );

Map<String, dynamic> _$$StudentReqImplToJson(_$StudentReqImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
      'studentAvatarUrl': instance.avatarUrl,
    };

_$StudentModelImpl _$$StudentModelImplFromJson(Map<String, dynamic> json) =>
    _$StudentModelImpl(
      studentId: json['studentId'] as int?,
      potentialId: json['potentialStuId'] as int?,
      studentCode: json['studentCode'] as String? ?? '',
      name: json['studentName'] as String?,
      engName: json['schoolEngName'] as String?,
      avatar: json['avatarUrl'] as String?,
      status: json['studentStatus'] == null
          ? StudentStatus.unknown
          : const StudentStatusJsonConverter()
              .fromJson(json['studentStatus'] as int),
      sex: json['studentSex'] == null
          ? Gender.unknown
          : const GenderIntJsonConverter().fromJson(json['studentSex'] as int),
      relationship: const RelationshipNullableJsonConverter()
          .fromJson(json['familyRelationship'] as int?),
      birth: _$JsonConverterFromJson<String, DateTime?>(
          json['studentBirth'], const SimpleDateTimeJsonConverter().fromJson),
      birth2: _$JsonConverterFromJson<String, DateTime?>(
          json['brithDate'], const SimpleDateTimeJsonConverter().fromJson),
      schoolEnable: json['schoolOpenFlag'] as bool? ?? false,
      schoolId: json['schoolId'] as int?,
      schoolCode: json['schoolCode'] as String?,
      schoolName: json['schoolName'] as String? ?? '',
      studentEngName: json['studentEngName'] as String? ?? '',
      yearTermCode: json['yearTermCode'] as String?,
      yearTermName: json['yearTermName'] as String?,
      termCode: json['termCode'] as String?,
      termName: json['termName'] as String?,
      phaseCode: json['phaseCode'] as String?,
      phaseName: json['phaseName'] as String? ?? '',
      courseCode: json['courseCode'] as String?,
      courseName: json['courseName'] as String? ?? '',
      gradeCode: json['gradeCode'] as String?,
      gradeName: json['gradeName'] as String? ?? '',
      classCode: json['classCode'] as String?,
      className: json['className'] as String? ?? '',
      credentialsType: json['credentialsType'] as int? ?? 0,
      credentialsNumber: json['credentialsNumber'] as String?,
      leaveDate: _$JsonConverterFromJson<String, DateTime?>(
          json['leaveDate'], const DateTimeJsonConverter().fromJson),
      province: json['residenceAddressProvince'] as String?,
      city: json['residenceAddressCity'] as String?,
      district: json['residenceAddressDistrict'] as String?,
      location: json['residenceAddressLocation'] as String?,
      members: (json['familyVOS'] as List<dynamic>?)
          ?.map((e) => FamilyMemberModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StudentModelImplToJson(_$StudentModelImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'potentialStuId': instance.potentialId,
      'studentCode': instance.studentCode,
      'studentName': instance.name,
      'schoolEngName': instance.engName,
      'avatarUrl': instance.avatar,
      'studentStatus':
          const StudentStatusJsonConverter().toJson(instance.status),
      'studentSex': const GenderIntJsonConverter().toJson(instance.sex),
      'familyRelationship': const RelationshipNullableJsonConverter()
          .toJson(instance.relationship),
      'studentBirth':
          const SimpleDateTimeJsonConverter().toJson(instance.birth),
      'brithDate': const SimpleDateTimeJsonConverter().toJson(instance.birth2),
      'schoolOpenFlag': instance.schoolEnable,
      'schoolId': instance.schoolId,
      'schoolCode': instance.schoolCode,
      'schoolName': instance.schoolName,
      'studentEngName': instance.studentEngName,
      'yearTermCode': instance.yearTermCode,
      'yearTermName': instance.yearTermName,
      'termCode': instance.termCode,
      'termName': instance.termName,
      'phaseCode': instance.phaseCode,
      'phaseName': instance.phaseName,
      'courseCode': instance.courseCode,
      'courseName': instance.courseName,
      'gradeCode': instance.gradeCode,
      'gradeName': instance.gradeName,
      'classCode': instance.classCode,
      'className': instance.className,
      'credentialsType': instance.credentialsType,
      'credentialsNumber': instance.credentialsNumber,
      'leaveDate': const DateTimeJsonConverter().toJson(instance.leaveDate),
      'residenceAddressProvince': instance.province,
      'residenceAddressCity': instance.city,
      'residenceAddressDistrict': instance.district,
      'residenceAddressLocation': instance.location,
      'familyVOS': instance.members,
    };

_$PotentialStudentReqImpl _$$PotentialStudentReqImplFromJson(
        Map<String, dynamic> json) =>
    _$PotentialStudentReqImpl(
      id: json['id'] as int?,
      avatar: json['studentAvatar'] as String?,
      birth: json['studentBirth'] as String?,
      name: json['studentName'] as String?,
      identity: json['studentIdentity'] as String?,
      gender: _$JsonConverterFromJson<int, Gender>(
          json['studentSex'], const GenderIntJsonConverter().fromJson),
      relationship: json['familyRelationship'] as int?,
      province: json['registeredAddressProvince'] as String?,
      city: json['registeredAddressCity'] as String?,
    );

Map<String, dynamic> _$$PotentialStudentReqImplToJson(
    _$PotentialStudentReqImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['studentAvatar'] = instance.avatar;
  val['studentBirth'] = instance.birth;
  val['studentName'] = instance.name;
  val['studentIdentity'] = instance.identity;
  val['studentSex'] = _$JsonConverterToJson<int, Gender>(
      instance.gender, const GenderIntJsonConverter().toJson);
  val['familyRelationship'] = instance.relationship;
  val['registeredAddressProvince'] = instance.province;
  val['registeredAddressCity'] = instance.city;
  return val;
}

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$PotentialStudentModelImpl _$$PotentialStudentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PotentialStudentModelImpl(
      id: json['id'] as int?,
      parentPhone: json['parentPhone'] as String? ?? '',
      name: json['studentName'] as String,
      avatar: json['studentAvatar'] as String,
      gender: json['studentSex'] == null
          ? Gender.unknown
          : const GenderIntJsonConverter().fromJson(json['studentSex'] as int),
      birth: _$JsonConverterFromJson<String, DateTime?>(
          json['studentBirth'], const SimpleDateTimeJsonConverter().fromJson),
      relationship: json['familyRelationship'] as int?,
      relationshipDesc: json['familyRelationshipDesc'] as String? ?? '',
      relationshipEngDesc: json['familyRelationshipEngDesc'] as String? ?? '',
      identity: json['studentIdentity'] as String? ?? '',
      province: json['registeredAddressProvince'] as String?,
      city: json['registeredAddressCity'] as String?,
    );

Map<String, dynamic> _$$PotentialStudentModelImplToJson(
        _$PotentialStudentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentPhone': instance.parentPhone,
      'studentName': instance.name,
      'studentAvatar': instance.avatar,
      'studentSex': const GenderIntJsonConverter().toJson(instance.gender),
      'studentBirth':
          const SimpleDateTimeJsonConverter().toJson(instance.birth),
      'familyRelationship': instance.relationship,
      'familyRelationshipDesc': instance.relationshipDesc,
      'familyRelationshipEngDesc': instance.relationshipEngDesc,
      'studentIdentity': instance.identity,
      'registeredAddressProvince': instance.province,
      'registeredAddressCity': instance.city,
    };

_$DeletePotentialReqImpl _$$DeletePotentialReqImplFromJson(
        Map<String, dynamic> json) =>
    _$DeletePotentialReqImpl(
      deletePotentialId: json['potentialId'] as int,
      mergePotentialId: json['mergeToPotentialId'] as int,
      mergeStudentId: json['studentId'] as int,
    );

Map<String, dynamic> _$$DeletePotentialReqImplToJson(
        _$DeletePotentialReqImpl instance) =>
    <String, dynamic>{
      'potentialId': instance.deletePotentialId,
      'mergeToPotentialId': instance.mergePotentialId,
      'studentId': instance.mergeStudentId,
    };
