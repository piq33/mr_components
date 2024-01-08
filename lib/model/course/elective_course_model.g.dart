// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elective_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ElectiveCourseReqImpl _$$ElectiveCourseReqImplFromJson(
        Map<String, dynamic> json) =>
    _$ElectiveCourseReqImpl(
      studentCode: json['studentCode'] as String,
      schoolCode: json['schoolCode'] as String,
      id: json['id'] as int?,
      hasDiscount: json['hasDiscount'] as bool?,
      classDateStart: json['classDateStart'] as String?,
      classDateEnd: json['classDateEnd'] as String?,
    );

Map<String, dynamic> _$$ElectiveCourseReqImplToJson(
        _$ElectiveCourseReqImpl instance) =>
    <String, dynamic>{
      'studentCode': instance.studentCode,
      'schoolCode': instance.schoolCode,
      'id': instance.id,
      'hasDiscount': instance.hasDiscount,
      'classDateStart': instance.classDateStart,
      'classDateEnd': instance.classDateEnd,
    };

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      classHour: (json['classHour'] as num?)?.toDouble() ?? 0.0,
      discountClassHour: (json['discountClassHour'] as num?)?.toDouble() ?? 0.0,
      discountStartDate: _$JsonConverterFromJson<String, DateTime?>(
          json['discountStartDate'],
          const SimpleDateTimeJsonConverter().fromJson),
      discountEndDate: _$JsonConverterFromJson<String, DateTime?>(
          json['discountEndDate'],
          const SimpleDateTimeJsonConverter().fromJson),
      singUpStartDate: _$JsonConverterFromJson<String, DateTime?>(
          json['singUpStartDate'],
          const SimpleDateTimeJsonConverter().fromJson),
      singUpEndDate: _$JsonConverterFromJson<String, DateTime?>(
          json['singUpEndDate'], const SimpleDateTimeJsonConverter().fromJson),
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'classHour': instance.classHour,
      'discountClassHour': instance.discountClassHour,
      'discountStartDate': const SimpleDateTimeJsonConverter()
          .toJson(instance.discountStartDate),
      'discountEndDate':
          const SimpleDateTimeJsonConverter().toJson(instance.discountEndDate),
      'singUpStartDate':
          const SimpleDateTimeJsonConverter().toJson(instance.singUpStartDate),
      'singUpEndDate':
          const SimpleDateTimeJsonConverter().toJson(instance.singUpEndDate),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$ElectiveCourseModelImpl _$$ElectiveCourseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ElectiveCourseModelImpl(
      id: json['id'] as String,
      assistantTeacherCode: json['assistantTeacherCode'] as String?,
      assistantTeacherName: json['assistantTeacherName'] as String? ?? '',
      cancelHour: json['cancelReservationHour'] as int?,
      cancelMin: json['cancelReservationMin'] as int?,
      endHour: json['endHour'] as int? ?? 0,
      endMin: json['endMin'] ?? 0,
      cancelType: json['cancelReservationType'] == null
          ? CancelType.none
          : const CancelTypeJsonConverter()
              .fromJson(json['cancelReservationType'] as String),
      classHour: (json['classHour'] as num?)?.toDouble() ?? 0.0,
      courseName: json['courseName'] as String? ?? '',
      address: json['courseAddress'] as String? ?? '',
      content: json['courseContent'] as String? ?? '',
      cover: json['courseCoverPic'] as String?,
      startDate: _$JsonConverterFromJson<String, DateTime?>(
          json['courseStartDate'],
          const SimpleDateTimeJsonConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime?>(
          json['courseEndDate'], const SimpleDateTimeJsonConverter().fromJson),
      cancelSignUpNum: json['currentStudentCancelSignUpNum'] as int? ?? 0,
      signUpNum: json['currentStudentSignUpNum'] as int? ?? 0,
      tableNum: json['totalClassTableNum'] as int? ?? 0,
      signUp: json['currentStudentSignUp'] as bool? ?? false,
      discountList: (json['discountInfoList'] as List<dynamic>?)
              ?.map((e) => DiscountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      leftNum: json['leftNum'] as int? ?? 0,
      mainTeacherHeadPic: json['mainTeacherHeadPic'] as String?,
      mainTeacherIntroduce: json['mainTeacherIntroduce'] as String? ?? '',
      mainTeacherIntroduceId: json['mainTeacherIntroduceId'] as String?,
      mainTeacherName: json['mainTeacherName'] as String? ?? '',
      maxSignUpNum: json['maxSignUpNum'] as int? ?? 0,
      signUpStartTime: _$JsonConverterFromJson<String, DateTime?>(
          json['signUpStartTime'], const DateTimeJsonConverter().fromJson),
      signUpEndTime: _$JsonConverterFromJson<String, DateTime?>(
          json['signUpEndTime'], const DateTimeJsonConverter().fromJson),
      startHour: json['startHour'] as int? ?? 0,
      startMin: json['startMin'] as int? ?? 0,
      weekDay: json['weekDay'] as int?,
    );

Map<String, dynamic> _$$ElectiveCourseModelImplToJson(
        _$ElectiveCourseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assistantTeacherCode': instance.assistantTeacherCode,
      'assistantTeacherName': instance.assistantTeacherName,
      'cancelReservationHour': instance.cancelHour,
      'cancelReservationMin': instance.cancelMin,
      'endHour': instance.endHour,
      'endMin': instance.endMin,
      'cancelReservationType':
          const CancelTypeJsonConverter().toJson(instance.cancelType),
      'classHour': instance.classHour,
      'courseName': instance.courseName,
      'courseAddress': instance.address,
      'courseContent': instance.content,
      'courseCoverPic': instance.cover,
      'courseStartDate':
          const SimpleDateTimeJsonConverter().toJson(instance.startDate),
      'courseEndDate':
          const SimpleDateTimeJsonConverter().toJson(instance.endDate),
      'currentStudentCancelSignUpNum': instance.cancelSignUpNum,
      'currentStudentSignUpNum': instance.signUpNum,
      'totalClassTableNum': instance.tableNum,
      'currentStudentSignUp': instance.signUp,
      'discountInfoList': instance.discountList,
      'leftNum': instance.leftNum,
      'mainTeacherHeadPic': instance.mainTeacherHeadPic,
      'mainTeacherIntroduce': instance.mainTeacherIntroduce,
      'mainTeacherIntroduceId': instance.mainTeacherIntroduceId,
      'mainTeacherName': instance.mainTeacherName,
      'maxSignUpNum': instance.maxSignUpNum,
      'signUpStartTime':
          const DateTimeJsonConverter().toJson(instance.signUpStartTime),
      'signUpEndTime':
          const DateTimeJsonConverter().toJson(instance.signUpEndTime),
      'startHour': instance.startHour,
      'startMin': instance.startMin,
      'weekDay': instance.weekDay,
    };
