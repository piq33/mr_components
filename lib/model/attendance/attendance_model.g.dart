// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceOtherParamImpl _$$AttendanceOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceOtherParamImpl(
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$AttendanceOtherParamImplToJson(
        _$AttendanceOtherParamImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

_$AttendanceReqImpl _$$AttendanceReqImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceReqImpl(
      beginDate: json['checkWorkDateBegin'] as String,
      endDate: json['checkWorkDateEnd'] as String,
      studentCode: json['studentCode'] as String,
      schoolCode: json['schoolCode'] as String,
    );

Map<String, dynamic> _$$AttendanceReqImplToJson(_$AttendanceReqImpl instance) =>
    <String, dynamic>{
      'checkWorkDateBegin': instance.beginDate,
      'checkWorkDateEnd': instance.endDate,
      'studentCode': instance.studentCode,
      'schoolCode': instance.schoolCode,
    };

_$AttendanceModelImpl _$$AttendanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceModelImpl(
      dateTime: const TimestampStringJsonConverter()
          .fromJson(json['checkWorkDate'] as String),
      stateEngName: json['checkWorkStatus'] as String?,
      stateName: json['checkWorkStatusName'] as String?,
      state: json['state'] == null
          ? AttendanceType.none
          : const AttendanceTypeJsonConverter()
              .fromJson(json['state'] as String),
    );

Map<String, dynamic> _$$AttendanceModelImplToJson(
        _$AttendanceModelImpl instance) =>
    <String, dynamic>{
      'checkWorkDate':
          const TimestampStringJsonConverter().toJson(instance.dateTime),
      'checkWorkStatus': instance.stateEngName,
      'checkWorkStatusName': instance.stateName,
      'state': const AttendanceTypeJsonConverter().toJson(instance.state),
    };

_$AttendanceDetailFeedbackModelImpl
    _$$AttendanceDetailFeedbackModelImplFromJson(Map<String, dynamic> json) =>
        _$AttendanceDetailFeedbackModelImpl(
          dissentDate: _$JsonConverterFromJson<String, DateTime?>(
              json['dissentDate'],
              const TimestampStringNullableJsonConverter().fromJson),
          dissentRemark: json['dissentRemark'] as String? ?? '',
        );

Map<String, dynamic> _$$AttendanceDetailFeedbackModelImplToJson(
        _$AttendanceDetailFeedbackModelImpl instance) =>
    <String, dynamic>{
      'dissentDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.dissentDate),
      'dissentRemark': instance.dissentRemark,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$AttendanceOverviewReqImpl _$$AttendanceOverviewReqImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceOverviewReqImpl(
      schoolCode: json['schoolCode'] as String,
      phaseCode: json['phaseCode'] as String,
      classCode: json['classCode'] as String,
      courseCode: json['courseCode'] as String,
      gradeCode: json['gradeCode'] as String,
      studentId: json['studentId'] as int,
      beginDate: json['beginDate'] as String,
      endDate: json['endDate'] as String,
    );

Map<String, dynamic> _$$AttendanceOverviewReqImplToJson(
        _$AttendanceOverviewReqImpl instance) =>
    <String, dynamic>{
      'schoolCode': instance.schoolCode,
      'phaseCode': instance.phaseCode,
      'classCode': instance.classCode,
      'courseCode': instance.courseCode,
      'gradeCode': instance.gradeCode,
      'studentId': instance.studentId,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
    };

_$AttendanceOverviewModelImpl _$$AttendanceOverviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceOverviewModelImpl(
      date: _$JsonConverterFromJson<String, DateTime?>(
          json['date'], const AttendanceDateJsonConverter().fromJson),
      status: json['status'] == null
          ? AttendanceStatus.invalidate
          : const AttendanceStatusJsonConverter()
              .fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$AttendanceOverviewModelImplToJson(
        _$AttendanceOverviewModelImpl instance) =>
    <String, dynamic>{
      'date': const AttendanceDateJsonConverter().toJson(instance.date),
      'status': const AttendanceStatusJsonConverter().toJson(instance.status),
    };

_$AttendanceDetailReqImpl _$$AttendanceDetailReqImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceDetailReqImpl(
      schoolCode: json['schoolCode'] as String,
      phaseCode: json['phaseCode'] as String,
      classCode: json['classCode'] as String,
      courseCode: json['courseCode'] as String,
      gradeCode: json['gradeCode'] as String,
      month: json['month'] as String,
      studentId: json['studentId'] as int,
    );

Map<String, dynamic> _$$AttendanceDetailReqImplToJson(
        _$AttendanceDetailReqImpl instance) =>
    <String, dynamic>{
      'schoolCode': instance.schoolCode,
      'phaseCode': instance.phaseCode,
      'classCode': instance.classCode,
      'courseCode': instance.courseCode,
      'gradeCode': instance.gradeCode,
      'month': instance.month,
      'studentId': instance.studentId,
    };

_$AttendanceDetailModelImpl _$$AttendanceDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceDetailModelImpl(
      dissents: (json['dissents'] as List<dynamic>?)
              ?.map((e) => AttendanceDetailFeedbackModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      month: _$JsonConverterFromJson<String, DateTime?>(
          json['month'], const AttendanceDateJsonConverter().fromJson),
      remark: json['remark'] as String? ?? '',
      schoolCode: json['schoolCode'] as String?,
      studentId: json['studentId'] as String?,
      isSend: json['isSend'] == null
          ? false
          : const String2BoolJsonConverter().fromJson(json['isSend'] as String),
      status: json['signatureStatus'] == null
          ? SignatureStatus.unsigned
          : const SignatureStatusJsonConverter()
              .fromJson(json['signatureStatus'] as String),
      signatureDate: _$JsonConverterFromJson<String, DateTime?>(
          json['signatureDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      signatureUrl: json['signatureUrl'] as String?,
    );

Map<String, dynamic> _$$AttendanceDetailModelImplToJson(
        _$AttendanceDetailModelImpl instance) =>
    <String, dynamic>{
      'dissents': instance.dissents,
      'month': const AttendanceDateJsonConverter().toJson(instance.month),
      'remark': instance.remark,
      'schoolCode': instance.schoolCode,
      'studentId': instance.studentId,
      'isSend': const String2BoolJsonConverter().toJson(instance.isSend),
      'signatureStatus':
          const SignatureStatusJsonConverter().toJson(instance.status),
      'signatureDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.signatureDate),
      'signatureUrl': instance.signatureUrl,
    };

_$AttendanceFeedbackReqImpl _$$AttendanceFeedbackReqImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceFeedbackReqImpl(
      isSignature: json['isSignature'] as bool,
      month: json['mouth'] as String,
      remark: json['remark'] as String?,
      schoolCode: json['schoolCode'] as String,
      phaseCode: json['phaseCode'] as String,
      classCode: json['classCode'] as String,
      courseCode: json['courseCode'] as String,
      gradeCode: json['gradeCode'] as String,
      studentId: json['studentId'] as int,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$AttendanceFeedbackReqImplToJson(
        _$AttendanceFeedbackReqImpl instance) =>
    <String, dynamic>{
      'isSignature': instance.isSignature,
      'mouth': instance.month,
      'remark': instance.remark,
      'schoolCode': instance.schoolCode,
      'phaseCode': instance.phaseCode,
      'classCode': instance.classCode,
      'courseCode': instance.courseCode,
      'gradeCode': instance.gradeCode,
      'studentId': instance.studentId,
      'url': instance.url,
    };
