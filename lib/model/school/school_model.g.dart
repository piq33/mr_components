// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SchoolModelImpl _$$SchoolModelImplFromJson(Map<String, dynamic> json) =>
    _$SchoolModelImpl(
      id: json['schoolId'] as int,
      code: json['schoolCode'] as String?,
      name: json['schoolName'] as String? ?? '',
      curSchool: json['curSchoolFlag'] as bool? ?? false,
      yearTermList: (json['schoolYearTermVOList'] as List<dynamic>?)
              ?.map((e) => YearTermModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SchoolModelImplToJson(_$SchoolModelImpl instance) =>
    <String, dynamic>{
      'schoolId': instance.id,
      'schoolCode': instance.code,
      'schoolName': instance.name,
      'curSchoolFlag': instance.curSchool,
      'schoolYearTermVOList': instance.yearTermList,
    };

_$FilterSchoolModelImpl _$$FilterSchoolModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterSchoolModelImpl(
      code: json['schoolCode'] as String?,
      name: json['schoolName'] as String? ?? '',
      yearTermList: (json['yearTermList'] as List<dynamic>?)
              ?.map((e) =>
                  FilterYearTermModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FilterSchoolModelImplToJson(
        _$FilterSchoolModelImpl instance) =>
    <String, dynamic>{
      'schoolCode': instance.code,
      'schoolName': instance.name,
      'yearTermList': instance.yearTermList,
    };

_$YearTermModelImpl _$$YearTermModelImplFromJson(Map<String, dynamic> json) =>
    _$YearTermModelImpl(
      code: json['yearTermCode'] as String,
      name: json['yearTermName'] as String? ?? '',
      engName: json['yearTermEngName'] as String? ?? '',
      firstCode: json['firstYearTermCode'] as String?,
      curYearTerm: json['curYearTermFlag'] as bool? ?? false,
    );

Map<String, dynamic> _$$YearTermModelImplToJson(_$YearTermModelImpl instance) =>
    <String, dynamic>{
      'yearTermCode': instance.code,
      'yearTermName': instance.name,
      'yearTermEngName': instance.engName,
      'firstYearTermCode': instance.firstCode,
      'curYearTermFlag': instance.curYearTerm,
    };

_$FilterYearTermModelImpl _$$FilterYearTermModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterYearTermModelImpl(
      code: json['yearTermCode'] as String?,
      name: json['yearTermName'] as String? ?? '',
    );

Map<String, dynamic> _$$FilterYearTermModelImplToJson(
        _$FilterYearTermModelImpl instance) =>
    <String, dynamic>{
      'yearTermCode': instance.code,
      'yearTermName': instance.name,
    };

_$SchoolCalendarEventReqImpl _$$SchoolCalendarEventReqImplFromJson(
        Map<String, dynamic> json) =>
    _$SchoolCalendarEventReqImpl(
      schoolCode: json['schoolCode'] as String,
      yearTermCode: json['yearTermCode'] as String?,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      typeList:
          (json['typeList'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$SchoolCalendarEventReqImplToJson(
        _$SchoolCalendarEventReqImpl instance) =>
    <String, dynamic>{
      'schoolCode': instance.schoolCode,
      'yearTermCode': instance.yearTermCode,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'typeList': instance.typeList,
    };

_$SchoolCalendarEventModelImpl _$$SchoolCalendarEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SchoolCalendarEventModelImpl(
      calendarId: const String2IntJsonConverter()
          .fromJson(json['calendarId'] as String),
      eventId: _$JsonConverterFromJson<String, int?>(
          json['eventId'], const String2IntNullableJsonConverter().fromJson),
      date: _$JsonConverterFromJson<String, DateTime?>(
          json['date'], const EventDateJsonConverter().fromJson),
      week: _$JsonConverterFromJson<String, int?>(
          json['week'], const String2IntNullableJsonConverter().fromJson),
      isWeekend: json['weekend'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['weekend'] as String),
      isWorkday: json['workday'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['workday'] as String),
      year: _$JsonConverterFromJson<String, int?>(
          json['year'], const String2IntNullableJsonConverter().fromJson),
      month: _$JsonConverterFromJson<String, int?>(
          json['month'], const EventMonthJsonConverter().fromJson),
      yearday: _$JsonConverterFromJson<String, int?>(
          json['yearday'], const String2IntNullableJsonConverter().fromJson),
      yearweek: _$JsonConverterFromJson<String, int?>(
          json['yearweek'], const EventYearWeekJsonConverter().fromJson),
      lunarDate: _$JsonConverterFromJson<String, DateTime?>(
          json['lunarDate'], const EventDateJsonConverter().fromJson),
      lunarYear: _$JsonConverterFromJson<String, int?>(
          json['lunarYear'], const String2IntNullableJsonConverter().fromJson),
      lunarMonth: _$JsonConverterFromJson<String, int?>(
          json['lunarMonth'], const EventMonthJsonConverter().fromJson),
      lunarYearday: _$JsonConverterFromJson<String, int?>(json['lunarYearday'],
          const String2IntNullableJsonConverter().fromJson),
      holidayCn: json['holidayCn'] as String? ?? '',
      title: json['title'] as String? ?? '',
      type: json['type'] == null
          ? CalendarType.none
          : const CalendarTypeJsonConverter().fromJson(json['type'] as String),
      isHolidayLegal: json['isHolidayLegal'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['isHolidayLegal'] as String),
      holiday: _$JsonConverterFromJson<String, HolidayType>(
              json['holiday'], const HolidayTypeJsonConverter().fromJson) ??
          HolidayType.none,
      holidayOr: _$JsonConverterFromJson<String, HolidayType>(
              json['holidayOr'], const HolidayTypeJsonConverter().fromJson) ??
          HolidayType.none,
      holidayOvertime: _$JsonConverterFromJson<String, HolidayType>(
              json['holidayOvertime'],
              const HolidayTypeJsonConverter().fromJson) ??
          HolidayType.none,
      holidayRecess: json['holidayRecess'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['holidayRecess'] as String),
      holidayToday: json['holidayToday'] == null
          ? false
          : const String2BoolJsonConverter()
              .fromJson(json['holidayToday'] as String),
    );

Map<String, dynamic> _$$SchoolCalendarEventModelImplToJson(
        _$SchoolCalendarEventModelImpl instance) =>
    <String, dynamic>{
      'calendarId': const String2IntJsonConverter().toJson(instance.calendarId),
      'eventId':
          const String2IntNullableJsonConverter().toJson(instance.eventId),
      'date': const EventDateJsonConverter().toJson(instance.date),
      'week': const String2IntNullableJsonConverter().toJson(instance.week),
      'weekend': const String2BoolJsonConverter().toJson(instance.isWeekend),
      'workday': const String2BoolJsonConverter().toJson(instance.isWorkday),
      'year': const String2IntNullableJsonConverter().toJson(instance.year),
      'month': const EventMonthJsonConverter().toJson(instance.month),
      'yearday':
          const String2IntNullableJsonConverter().toJson(instance.yearday),
      'yearweek': const EventYearWeekJsonConverter().toJson(instance.yearweek),
      'lunarDate': const EventDateJsonConverter().toJson(instance.lunarDate),
      'lunarYear':
          const String2IntNullableJsonConverter().toJson(instance.lunarYear),
      'lunarMonth': const EventMonthJsonConverter().toJson(instance.lunarMonth),
      'lunarYearday':
          const String2IntNullableJsonConverter().toJson(instance.lunarYearday),
      'holidayCn': instance.holidayCn,
      'title': instance.title,
      'type': const CalendarTypeJsonConverter().toJson(instance.type),
      'isHolidayLegal':
          const String2BoolJsonConverter().toJson(instance.isHolidayLegal),
      'holiday': _$JsonConverterToJson<String, HolidayType>(
          instance.holiday, const HolidayTypeJsonConverter().toJson),
      'holidayOr': _$JsonConverterToJson<String, HolidayType>(
          instance.holidayOr, const HolidayTypeJsonConverter().toJson),
      'holidayOvertime': _$JsonConverterToJson<String, HolidayType>(
          instance.holidayOvertime, const HolidayTypeJsonConverter().toJson),
      'holidayRecess':
          const String2BoolJsonConverter().toJson(instance.holidayRecess),
      'holidayToday':
          const String2BoolJsonConverter().toJson(instance.holidayToday),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
