import 'package:bsl/model/converter/attendance/calendar_type_converter.dart';
import 'package:bsl/model/converter/school/event_date_converter.dart';
import 'package:bsl/model/converter/school/holiday_type_converter.dart';
import 'package:bsl/model/converter/string2bool_converter.dart';
import 'package:bsl/model/converter/string2int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_model.freezed.dart';
part 'school_model.g.dart';

/// 学校信息
@freezed
class SchoolModel with _$SchoolModel {
  const SchoolModel._();
  const factory SchoolModel({
    /// 学校id
    @JsonKey(name: 'schoolId') required int id,

    /// 学校编码
    @JsonKey(name: 'schoolCode') String? code,

    /// 学校名称
    @JsonKey(name: 'schoolName') @Default('') String name,

    /// 是否当前学校
    @JsonKey(name: 'curSchoolFlag') @Default(false) bool curSchool,

    /// 关联学年学期信息
    @JsonKey(name: 'schoolYearTermVOList')
    @Default([])
    List<YearTermModel> yearTermList,
  }) = _SchoolModel;

  factory SchoolModel.empty() => const SchoolModel(id: -1);

  bool get validate => id != -1;

  factory SchoolModel.fromJson(Map<String, Object?> json) =>
      _$SchoolModelFromJson(json);
}

/// 筛选-学校信息
@freezed
class FilterSchoolModel with _$FilterSchoolModel {
  const FilterSchoolModel._();
  const factory FilterSchoolModel({
    /// 学校编码
    @JsonKey(name: 'schoolCode') String? code,

    /// 学校名称
    @JsonKey(name: 'schoolName') @Default('') String name,

    /// 关联学年学期信息
    @Default([]) List<FilterYearTermModel> yearTermList,
  }) = _FilterSchoolModel;

  bool get validate => code != null;

  factory FilterSchoolModel.fromJson(Map<String, Object?> json) =>
      _$FilterSchoolModelFromJson(json);
}

/// 学年学期信息
@freezed
class YearTermModel with _$YearTermModel {
  const YearTermModel._();
  const factory YearTermModel({
    /// 学期编码
    @JsonKey(name: 'yearTermCode') required String code,

    /// 学期名称
    @JsonKey(name: 'yearTermName') @Default('') String name,

    /// 学期英文名称
    @JsonKey(name: 'yearTermEngName') @Default('') String engName,

    /// 首个就读学年学期编码
    @JsonKey(name: 'firstYearTermCode') String? firstCode,

    /// 是否当前学年学期
    @JsonKey(name: 'curYearTermFlag') @Default(false) bool curYearTerm,
  }) = _YearTermModel;

  factory YearTermModel.empty() => const YearTermModel(code: '');

  bool get validate => code.isNotEmpty;

  factory YearTermModel.fromJson(Map<String, Object?> json) =>
      _$YearTermModelFromJson(json);
}

/// 筛选-学年学期信息
@freezed
class FilterYearTermModel with _$FilterYearTermModel {
  const FilterYearTermModel._();
  const factory FilterYearTermModel({
    /// 学期编码
    @JsonKey(name: 'yearTermCode') String? code,

    /// 学期名称
    @JsonKey(name: 'yearTermName') @Default('') String name,
  }) = _FilterYearTermModel;

  factory FilterYearTermModel.empty() => const FilterYearTermModel();
  factory FilterYearTermModel.fromYearTerm(YearTermModel yearTerm) {
    return FilterYearTermModel(code: yearTerm.code, name: yearTerm.name);
  }

  bool get validate => code != null;

  factory FilterYearTermModel.fromJson(Map<String, Object?> json) =>
      _$FilterYearTermModelFromJson(json);
}

enum CalendarType {
  none,

  /// 开学
  open,

  /// 标准事件
  standard,

  /// 规定假期
  vacation,

  /// 法定假期
  holiday,

  /// 自定义假期
  ownVacation,

  /// 补课
  makeUp,
}

/// 假日类型
enum HolidayType {
  none,
  holiday,
  standard,
}

/// 学年学期信息
@freezed
class SchoolCalendarEventReq with _$SchoolCalendarEventReq {
  const SchoolCalendarEventReq._();
  const factory SchoolCalendarEventReq({
    /// 学校编码
    required String schoolCode,

    /// 学年学期编码
    String? yearTermCode,

    /// 开始日期
    required String startDate,

    /// 结束日期
    required String endDate,

    /// 事件类型
    List<int>? typeList,
  }) = _SchoolCalendarEventReq;

  factory SchoolCalendarEventReq.fromJson(Map<String, Object?> json) =>
      _$SchoolCalendarEventReqFromJson(json);
}

/// 校历数据
@freezed
class SchoolCalendarEventModel with _$SchoolCalendarEventModel {
  const SchoolCalendarEventModel._();
  const factory SchoolCalendarEventModel({
    /// 日历id
    @String2IntJsonConverter() required int calendarId,

    /// 事件id
    @String2IntNullableJsonConverter() int? eventId,

    /// 公历日期
    @EventDateJsonConverter() DateTime? date,

    /// 星期几
    @String2IntNullableJsonConverter() int? week,

    /// 是否周末
    @JsonKey(name: 'weekend')
    @String2BoolJsonConverter()
    @Default(false)
    bool isWeekend,

    /// 是否为工作日（包含调休在内需要上班的日子）,1为工作日(上课日),2为非工作日(放假)
    @JsonKey(name: 'workday')
    @String2BoolJsonConverter()
    @Default(false)
    bool isWorkday,

    /// 公历年份
    @String2IntNullableJsonConverter() int? year,

    /// 公历月份
    @EventMonthJsonConverter() int? month,

    /// 公历一年中的第几天
    @String2IntNullableJsonConverter() int? yearday,

    /// 公历一年中的第几周
    @EventYearWeekJsonConverter() int? yearweek,

    /// 农历日期
    @EventDateJsonConverter() DateTime? lunarDate,

    /// 农历年份
    @String2IntNullableJsonConverter() int? lunarYear,

    /// 农历月份
    @EventMonthJsonConverter() int? lunarMonth,

    /// 农历一年中的第几天
    @String2IntNullableJsonConverter() int? lunarYearday,

    /// 节假日名称
    @Default('') String holidayCn,

    /// 事件标题
    @Default('') String title,

    /// 事件类型
    @CalendarTypeJsonConverter() @Default(CalendarType.none) CalendarType type,

    /// 是否未法定节假日(三倍工资)
    @String2BoolJsonConverter() @Default(false) bool isHolidayLegal,

    /// 节假日，这里使用两位数字枚举表示节假日，其中特殊数字10表示非节假日，特殊数字99表示全部节假日
    @HolidayTypeJsonConverter() @Default(HolidayType.none) HolidayType? holiday,

    /// 其他节假日，枚举与节假日相同，表示同一天中的另一个节日，如 2020-10-01
    @HolidayTypeJsonConverter()
    @Default(HolidayType.none)
    HolidayType? holidayOr,

    /// 节假日调休，枚举与节假日相同
    @HolidayTypeJsonConverter()
    @Default(HolidayType.none)
    HolidayType? holidayOvertime,

    /// 是否为假期节假日（节日是否放假）
    @String2BoolJsonConverter() @Default(false) bool holidayRecess,

    /// 是否为节日当天
    @String2BoolJsonConverter() @Default(false) bool holidayToday,
  }) = _SchoolCalendarEventModel;

  factory SchoolCalendarEventModel.fromJson(Map<String, Object?> json) =>
      _$SchoolCalendarEventModelFromJson(json);
}
