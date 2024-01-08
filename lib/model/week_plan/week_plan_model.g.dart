// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeekPlanOtherParamImpl _$$WeekPlanOtherParamImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekPlanOtherParamImpl(
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$WeekPlanOtherParamImplToJson(
        _$WeekPlanOtherParamImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

_$WeekPlanInfoModelImpl _$$WeekPlanInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekPlanInfoModelImpl(
      id: json['id'] as int?,
      planCode: json['planCode'] as String? ?? '',
      title: json['title'] as String? ?? '',
      resources: json['resourceUrl'] as String?,
      timeType:
          $enumDecodeNullable(_$WeekPlanTimeTypeEnumMap, json['timeType']) ??
              WeekPlanTimeType.unknown,
      activity: json['activity'] as String? ?? '',
      currDate: _$JsonConverterFromJson<String, DateTime?>(
          json['currDate'], const SimpleDateTimeJsonConverter().fromJson),
      weekday: json['dateType'] as int?,
      orderNum: json['orderNum'] as int? ?? 0,
      activityCode: json['activityCode'] as String? ?? '',
    );

Map<String, dynamic> _$$WeekPlanInfoModelImplToJson(
        _$WeekPlanInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'planCode': instance.planCode,
      'title': instance.title,
      'resourceUrl': instance.resources,
      'timeType': _$WeekPlanTimeTypeEnumMap[instance.timeType]!,
      'activity': instance.activity,
      'currDate': const SimpleDateTimeJsonConverter().toJson(instance.currDate),
      'dateType': instance.weekday,
      'orderNum': instance.orderNum,
      'activityCode': instance.activityCode,
    };

const _$WeekPlanTimeTypeEnumMap = {
  WeekPlanTimeType.unknown: '',
  WeekPlanTimeType.morning: 'morning',
  WeekPlanTimeType.afternoon: 'afternoon',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$WeekPlanInfoWrapperImpl _$$WeekPlanInfoWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekPlanInfoWrapperImpl(
      timeType: $enumDecode(_$WeekPlanTimeTypeEnumMap, json['timeType']),
      infoList: (json['infoList'] as List<dynamic>)
          .map((e) => WeekPlanInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WeekPlanInfoWrapperImplToJson(
        _$WeekPlanInfoWrapperImpl instance) =>
    <String, dynamic>{
      'timeType': _$WeekPlanTimeTypeEnumMap[instance.timeType]!,
      'infoList': instance.infoList,
    };

_$WeekPlanTargetModelImpl _$$WeekPlanTargetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeekPlanTargetModelImpl(
      id: json['id'] as int?,
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      planCode: json['planCode'] as String? ?? '',
      orderNum: json['orderNum'] as int? ?? 0,
    );

Map<String, dynamic> _$$WeekPlanTargetModelImplToJson(
        _$WeekPlanTargetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'planCode': instance.planCode,
      'orderNum': instance.orderNum,
    };

_$WeekPlanModelImpl _$$WeekPlanModelImplFromJson(Map<String, dynamic> json) =>
    _$WeekPlanModelImpl(
      currDate: _$JsonConverterFromJson<String, DateTime?>(
          json['currDate'], const SimpleDateTimeJsonConverter().fromJson),
      planCode: json['planCode'] as String?,
      status: $enumDecodeNullable(_$WeekPlanStatusEnumMap, json['status']) ??
          WeekPlanStatus.waiting,
      schoolCode: json['schoolCode'] as String? ?? '',
      phaseCode: json['phaseCode'] as String? ?? '',
      phaseName: json['phaseName'] as String? ?? '',
      courseCode: json['courseCode'] as String? ?? '',
      gradeCode: json['gradeCode'] as String? ?? '',
      classCode: json['classCode'] as String? ?? '',
      yearTermCode: json['yearTermCode'] as String? ?? '',
      contentType: json['contentType'] as int? ?? 0,
      startDate: _$JsonConverterFromJson<String, DateTime?>(
          json['startDate'], const SimpleDateTimeJsonConverter().fromJson),
      endDate: _$JsonConverterFromJson<String, DateTime?>(
          json['endDate'], const SimpleDateTimeJsonConverter().fromJson),
      targetList: (json['detailList'] as List<dynamic>?)
              ?.map((e) =>
                  WeekPlanTargetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      infoList: (json['itemList'] as List<dynamic>?)
              ?.map(
                  (e) => WeekPlanInfoModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeekPlanModelImplToJson(_$WeekPlanModelImpl instance) =>
    <String, dynamic>{
      'currDate': const SimpleDateTimeJsonConverter().toJson(instance.currDate),
      'planCode': instance.planCode,
      'status': _$WeekPlanStatusEnumMap[instance.status]!,
      'schoolCode': instance.schoolCode,
      'phaseCode': instance.phaseCode,
      'phaseName': instance.phaseName,
      'courseCode': instance.courseCode,
      'gradeCode': instance.gradeCode,
      'classCode': instance.classCode,
      'yearTermCode': instance.yearTermCode,
      'contentType': instance.contentType,
      'startDate':
          const SimpleDateTimeJsonConverter().toJson(instance.startDate),
      'endDate': const SimpleDateTimeJsonConverter().toJson(instance.endDate),
      'detailList': instance.targetList,
      'itemList': instance.infoList,
    };

const _$WeekPlanStatusEnumMap = {
  WeekPlanStatus.waiting: 1,
  WeekPlanStatus.send: 2,
  WeekPlanStatus.cancel: 3,
};
