// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dayoff_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeavePageReqImpl _$$LeavePageReqImplFromJson(Map<String, dynamic> json) =>
    _$LeavePageReqImpl(
      size: json['size'] as int,
      current: json['current'] as int,
      queryData: json['queryData'] == null
          ? null
          : LeaveReq.fromJson(json['queryData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LeavePageReqImplToJson(_$LeavePageReqImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'current': instance.current,
      'queryData': instance.queryData,
    };

_$LeaveReqImpl _$$LeaveReqImplFromJson(Map<String, dynamic> json) =>
    _$LeaveReqImpl(
      leaveType: json['leaveType'] as String?,
      schoolCode: json['schoolCode'] as String,
      studentCode: json['studentCode'] as String,
      yearTermCode: json['yearTermCode'] as String,
    );

Map<String, dynamic> _$$LeaveReqImplToJson(_$LeaveReqImpl instance) =>
    <String, dynamic>{
      'leaveType': instance.leaveType,
      'schoolCode': instance.schoolCode,
      'studentCode': instance.studentCode,
      'yearTermCode': instance.yearTermCode,
    };

_$LeaveRequestModelImpl _$$LeaveRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaveRequestModelImpl(
      id: json['id'] as String,
      leaveNo: json['leaveNo'] as String,
      status: json['status'] == null
          ? LeaveStatus.invalidate
          : const LeaveStatusJsonConverter().fromJson(json['status'] as String),
      leaveType: json['leaveType'] as String?,
      leaveTypeName: json['leaveTypeName'] as String?,
      schoolCode: json['schoolCode'] as String?,
      schoolName: json['schoolName'] as String?,
      studentCode: json['studentCode'] as String?,
      studentName: json['studentName'] as String?,
      yearTermCode: json['yearTermCode'] as String?,
      yearTermName: json['yearTermName'] as String?,
      leaveNum: json['leaveNum'] == null
          ? 0
          : const String2IntJsonConverter()
              .fromJson(json['leaveNum'] as String),
      beginDate: _$JsonConverterFromJson<String, DateTime?>(json['beginDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime?>(json['endDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      createdDate: _$JsonConverterFromJson<String, DateTime?>(
          json['createdDate'],
          const TimestampStringNullableJsonConverter().fromJson),
      remark: json['remark'] as String? ?? '',
    );

Map<String, dynamic> _$$LeaveRequestModelImplToJson(
        _$LeaveRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'leaveNo': instance.leaveNo,
      'status': const LeaveStatusJsonConverter().toJson(instance.status),
      'leaveType': instance.leaveType,
      'leaveTypeName': instance.leaveTypeName,
      'schoolCode': instance.schoolCode,
      'schoolName': instance.schoolName,
      'studentCode': instance.studentCode,
      'studentName': instance.studentName,
      'yearTermCode': instance.yearTermCode,
      'yearTermName': instance.yearTermName,
      'leaveNum': const String2IntJsonConverter().toJson(instance.leaveNum),
      'beginDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.beginDate),
      'endDate':
          const TimestampStringNullableJsonConverter().toJson(instance.endDate),
      'createdDate': const TimestampStringNullableJsonConverter()
          .toJson(instance.createdDate),
      'remark': instance.remark,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$LeaveSubmitReqImpl _$$LeaveSubmitReqImplFromJson(Map<String, dynamic> json) =>
    _$LeaveSubmitReqImpl(
      studentId: json['studentId'] as int,
      studentCode: json['studentCode'] as String,
      leaveNum: json['leaveNum'] as int,
      beginDate: json['beginDate'] as String,
      endDate: json['endDate'] as String,
      realBeginDate: json['realBeginDate'] as String,
      realEndDate: json['realEndDate'] as String,
      leaveType: json['leaveType'] as String,
      remark: json['remark'] as String,
    );

Map<String, dynamic> _$$LeaveSubmitReqImplToJson(
        _$LeaveSubmitReqImpl instance) =>
    <String, dynamic>{
      'studentId': instance.studentId,
      'studentCode': instance.studentCode,
      'leaveNum': instance.leaveNum,
      'beginDate': instance.beginDate,
      'endDate': instance.endDate,
      'realBeginDate': instance.realBeginDate,
      'realEndDate': instance.realEndDate,
      'leaveType': instance.leaveType,
      'remark': instance.remark,
    };
