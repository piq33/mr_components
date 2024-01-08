// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'week_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekPlanOtherParam _$WeekPlanOtherParamFromJson(Map<String, dynamic> json) {
  return _WeekPlanOtherParam.fromJson(json);
}

/// @nodoc
mixin _$WeekPlanOtherParam {
  /// 指定的周计划日期
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekPlanOtherParamCopyWith<WeekPlanOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekPlanOtherParamCopyWith<$Res> {
  factory $WeekPlanOtherParamCopyWith(
          WeekPlanOtherParam value, $Res Function(WeekPlanOtherParam) then) =
      _$WeekPlanOtherParamCopyWithImpl<$Res, WeekPlanOtherParam>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class _$WeekPlanOtherParamCopyWithImpl<$Res, $Val extends WeekPlanOtherParam>
    implements $WeekPlanOtherParamCopyWith<$Res> {
  _$WeekPlanOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekPlanOtherParamImplCopyWith<$Res>
    implements $WeekPlanOtherParamCopyWith<$Res> {
  factory _$$WeekPlanOtherParamImplCopyWith(_$WeekPlanOtherParamImpl value,
          $Res Function(_$WeekPlanOtherParamImpl) then) =
      __$$WeekPlanOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$WeekPlanOtherParamImplCopyWithImpl<$Res>
    extends _$WeekPlanOtherParamCopyWithImpl<$Res, _$WeekPlanOtherParamImpl>
    implements _$$WeekPlanOtherParamImplCopyWith<$Res> {
  __$$WeekPlanOtherParamImplCopyWithImpl(_$WeekPlanOtherParamImpl _value,
      $Res Function(_$WeekPlanOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$WeekPlanOtherParamImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekPlanOtherParamImpl extends _WeekPlanOtherParam {
  const _$WeekPlanOtherParamImpl({this.date = ''}) : super._();

  factory _$WeekPlanOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekPlanOtherParamImplFromJson(json);

  /// 指定的周计划日期
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'WeekPlanOtherParam(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekPlanOtherParamImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekPlanOtherParamImplCopyWith<_$WeekPlanOtherParamImpl> get copyWith =>
      __$$WeekPlanOtherParamImplCopyWithImpl<_$WeekPlanOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekPlanOtherParamImplToJson(
      this,
    );
  }
}

abstract class _WeekPlanOtherParam extends WeekPlanOtherParam {
  const factory _WeekPlanOtherParam({final String date}) =
      _$WeekPlanOtherParamImpl;
  const _WeekPlanOtherParam._() : super._();

  factory _WeekPlanOtherParam.fromJson(Map<String, dynamic> json) =
      _$WeekPlanOtherParamImpl.fromJson;

  @override

  /// 指定的周计划日期
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$WeekPlanOtherParamImplCopyWith<_$WeekPlanOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekPlanInfoModel _$WeekPlanInfoModelFromJson(Map<String, dynamic> json) {
  return _WeekPlanInfoModel.fromJson(json);
}

/// @nodoc
mixin _$WeekPlanInfoModel {
  int? get id => throw _privateConstructorUsedError;

  /// 计划表编码
  String get planCode => throw _privateConstructorUsedError;

  /// 内容
  String get title => throw _privateConstructorUsedError;

  /// 图片
  @JsonKey(name: 'resourceUrl')
  String? get resources => throw _privateConstructorUsedError;

  /// 时间类型
  WeekPlanTimeType get timeType => throw _privateConstructorUsedError;

  /// 活动类型
  String get activity => throw _privateConstructorUsedError;

  /// 日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate => throw _privateConstructorUsedError;

  /// 日期
  @JsonKey(name: 'dateType')
  int? get weekday => throw _privateConstructorUsedError;

  /// 排序
  int get orderNum => throw _privateConstructorUsedError;

  /// 活动类型编码
  String get activityCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekPlanInfoModelCopyWith<WeekPlanInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekPlanInfoModelCopyWith<$Res> {
  factory $WeekPlanInfoModelCopyWith(
          WeekPlanInfoModel value, $Res Function(WeekPlanInfoModel) then) =
      _$WeekPlanInfoModelCopyWithImpl<$Res, WeekPlanInfoModel>;
  @useResult
  $Res call(
      {int? id,
      String planCode,
      String title,
      @JsonKey(name: 'resourceUrl') String? resources,
      WeekPlanTimeType timeType,
      String activity,
      @SimpleDateTimeJsonConverter() DateTime? currDate,
      @JsonKey(name: 'dateType') int? weekday,
      int orderNum,
      String activityCode});
}

/// @nodoc
class _$WeekPlanInfoModelCopyWithImpl<$Res, $Val extends WeekPlanInfoModel>
    implements $WeekPlanInfoModelCopyWith<$Res> {
  _$WeekPlanInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planCode = null,
    Object? title = null,
    Object? resources = freezed,
    Object? timeType = null,
    Object? activity = null,
    Object? currDate = freezed,
    Object? weekday = freezed,
    Object? orderNum = null,
    Object? activityCode = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      resources: freezed == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as String?,
      timeType: null == timeType
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as WeekPlanTimeType,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
      activityCode: null == activityCode
          ? _value.activityCode
          : activityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekPlanInfoModelImplCopyWith<$Res>
    implements $WeekPlanInfoModelCopyWith<$Res> {
  factory _$$WeekPlanInfoModelImplCopyWith(_$WeekPlanInfoModelImpl value,
          $Res Function(_$WeekPlanInfoModelImpl) then) =
      __$$WeekPlanInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String planCode,
      String title,
      @JsonKey(name: 'resourceUrl') String? resources,
      WeekPlanTimeType timeType,
      String activity,
      @SimpleDateTimeJsonConverter() DateTime? currDate,
      @JsonKey(name: 'dateType') int? weekday,
      int orderNum,
      String activityCode});
}

/// @nodoc
class __$$WeekPlanInfoModelImplCopyWithImpl<$Res>
    extends _$WeekPlanInfoModelCopyWithImpl<$Res, _$WeekPlanInfoModelImpl>
    implements _$$WeekPlanInfoModelImplCopyWith<$Res> {
  __$$WeekPlanInfoModelImplCopyWithImpl(_$WeekPlanInfoModelImpl _value,
      $Res Function(_$WeekPlanInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planCode = null,
    Object? title = null,
    Object? resources = freezed,
    Object? timeType = null,
    Object? activity = null,
    Object? currDate = freezed,
    Object? weekday = freezed,
    Object? orderNum = null,
    Object? activityCode = null,
  }) {
    return _then(_$WeekPlanInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      resources: freezed == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as String?,
      timeType: null == timeType
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as WeekPlanTimeType,
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as int?,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
      activityCode: null == activityCode
          ? _value.activityCode
          : activityCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekPlanInfoModelImpl extends _WeekPlanInfoModel {
  const _$WeekPlanInfoModelImpl(
      {this.id,
      this.planCode = '',
      this.title = '',
      @JsonKey(name: 'resourceUrl') this.resources,
      this.timeType = WeekPlanTimeType.unknown,
      this.activity = '',
      @SimpleDateTimeJsonConverter() this.currDate,
      @JsonKey(name: 'dateType') this.weekday,
      this.orderNum = 0,
      this.activityCode = ''})
      : super._();

  factory _$WeekPlanInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekPlanInfoModelImplFromJson(json);

  @override
  final int? id;

  /// 计划表编码
  @override
  @JsonKey()
  final String planCode;

  /// 内容
  @override
  @JsonKey()
  final String title;

  /// 图片
  @override
  @JsonKey(name: 'resourceUrl')
  final String? resources;

  /// 时间类型
  @override
  @JsonKey()
  final WeekPlanTimeType timeType;

  /// 活动类型
  @override
  @JsonKey()
  final String activity;

  /// 日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? currDate;

  /// 日期
  @override
  @JsonKey(name: 'dateType')
  final int? weekday;

  /// 排序
  @override
  @JsonKey()
  final int orderNum;

  /// 活动类型编码
  @override
  @JsonKey()
  final String activityCode;

  @override
  String toString() {
    return 'WeekPlanInfoModel(id: $id, planCode: $planCode, title: $title, resources: $resources, timeType: $timeType, activity: $activity, currDate: $currDate, weekday: $weekday, orderNum: $orderNum, activityCode: $activityCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekPlanInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planCode, planCode) ||
                other.planCode == planCode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.resources, resources) ||
                other.resources == resources) &&
            (identical(other.timeType, timeType) ||
                other.timeType == timeType) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.currDate, currDate) ||
                other.currDate == currDate) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum) &&
            (identical(other.activityCode, activityCode) ||
                other.activityCode == activityCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, planCode, title, resources,
      timeType, activity, currDate, weekday, orderNum, activityCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekPlanInfoModelImplCopyWith<_$WeekPlanInfoModelImpl> get copyWith =>
      __$$WeekPlanInfoModelImplCopyWithImpl<_$WeekPlanInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekPlanInfoModelImplToJson(
      this,
    );
  }
}

abstract class _WeekPlanInfoModel extends WeekPlanInfoModel {
  const factory _WeekPlanInfoModel(
      {final int? id,
      final String planCode,
      final String title,
      @JsonKey(name: 'resourceUrl') final String? resources,
      final WeekPlanTimeType timeType,
      final String activity,
      @SimpleDateTimeJsonConverter() final DateTime? currDate,
      @JsonKey(name: 'dateType') final int? weekday,
      final int orderNum,
      final String activityCode}) = _$WeekPlanInfoModelImpl;
  const _WeekPlanInfoModel._() : super._();

  factory _WeekPlanInfoModel.fromJson(Map<String, dynamic> json) =
      _$WeekPlanInfoModelImpl.fromJson;

  @override
  int? get id;
  @override

  /// 计划表编码
  String get planCode;
  @override

  /// 内容
  String get title;
  @override

  /// 图片
  @JsonKey(name: 'resourceUrl')
  String? get resources;
  @override

  /// 时间类型
  WeekPlanTimeType get timeType;
  @override

  /// 活动类型
  String get activity;
  @override

  /// 日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate;
  @override

  /// 日期
  @JsonKey(name: 'dateType')
  int? get weekday;
  @override

  /// 排序
  int get orderNum;
  @override

  /// 活动类型编码
  String get activityCode;
  @override
  @JsonKey(ignore: true)
  _$$WeekPlanInfoModelImplCopyWith<_$WeekPlanInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekPlanInfoWrapper _$WeekPlanInfoWrapperFromJson(Map<String, dynamic> json) {
  return _WeekPlanInfoWrapper.fromJson(json);
}

/// @nodoc
mixin _$WeekPlanInfoWrapper {
  /// 时间类型
  WeekPlanTimeType get timeType => throw _privateConstructorUsedError;

  /// 计划详情
  List<WeekPlanInfoModel> get infoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekPlanInfoWrapperCopyWith<WeekPlanInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekPlanInfoWrapperCopyWith<$Res> {
  factory $WeekPlanInfoWrapperCopyWith(
          WeekPlanInfoWrapper value, $Res Function(WeekPlanInfoWrapper) then) =
      _$WeekPlanInfoWrapperCopyWithImpl<$Res, WeekPlanInfoWrapper>;
  @useResult
  $Res call({WeekPlanTimeType timeType, List<WeekPlanInfoModel> infoList});
}

/// @nodoc
class _$WeekPlanInfoWrapperCopyWithImpl<$Res, $Val extends WeekPlanInfoWrapper>
    implements $WeekPlanInfoWrapperCopyWith<$Res> {
  _$WeekPlanInfoWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeType = null,
    Object? infoList = null,
  }) {
    return _then(_value.copyWith(
      timeType: null == timeType
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as WeekPlanTimeType,
      infoList: null == infoList
          ? _value.infoList
          : infoList // ignore: cast_nullable_to_non_nullable
              as List<WeekPlanInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekPlanInfoWrapperImplCopyWith<$Res>
    implements $WeekPlanInfoWrapperCopyWith<$Res> {
  factory _$$WeekPlanInfoWrapperImplCopyWith(_$WeekPlanInfoWrapperImpl value,
          $Res Function(_$WeekPlanInfoWrapperImpl) then) =
      __$$WeekPlanInfoWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeekPlanTimeType timeType, List<WeekPlanInfoModel> infoList});
}

/// @nodoc
class __$$WeekPlanInfoWrapperImplCopyWithImpl<$Res>
    extends _$WeekPlanInfoWrapperCopyWithImpl<$Res, _$WeekPlanInfoWrapperImpl>
    implements _$$WeekPlanInfoWrapperImplCopyWith<$Res> {
  __$$WeekPlanInfoWrapperImplCopyWithImpl(_$WeekPlanInfoWrapperImpl _value,
      $Res Function(_$WeekPlanInfoWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeType = null,
    Object? infoList = null,
  }) {
    return _then(_$WeekPlanInfoWrapperImpl(
      timeType: null == timeType
          ? _value.timeType
          : timeType // ignore: cast_nullable_to_non_nullable
              as WeekPlanTimeType,
      infoList: null == infoList
          ? _value._infoList
          : infoList // ignore: cast_nullable_to_non_nullable
              as List<WeekPlanInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekPlanInfoWrapperImpl extends _WeekPlanInfoWrapper {
  const _$WeekPlanInfoWrapperImpl(
      {required this.timeType, required final List<WeekPlanInfoModel> infoList})
      : _infoList = infoList,
        super._();

  factory _$WeekPlanInfoWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekPlanInfoWrapperImplFromJson(json);

  /// 时间类型
  @override
  final WeekPlanTimeType timeType;

  /// 计划详情
  final List<WeekPlanInfoModel> _infoList;

  /// 计划详情
  @override
  List<WeekPlanInfoModel> get infoList {
    if (_infoList is EqualUnmodifiableListView) return _infoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infoList);
  }

  @override
  String toString() {
    return 'WeekPlanInfoWrapper(timeType: $timeType, infoList: $infoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekPlanInfoWrapperImpl &&
            (identical(other.timeType, timeType) ||
                other.timeType == timeType) &&
            const DeepCollectionEquality().equals(other._infoList, _infoList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timeType, const DeepCollectionEquality().hash(_infoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekPlanInfoWrapperImplCopyWith<_$WeekPlanInfoWrapperImpl> get copyWith =>
      __$$WeekPlanInfoWrapperImplCopyWithImpl<_$WeekPlanInfoWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekPlanInfoWrapperImplToJson(
      this,
    );
  }
}

abstract class _WeekPlanInfoWrapper extends WeekPlanInfoWrapper {
  const factory _WeekPlanInfoWrapper(
          {required final WeekPlanTimeType timeType,
          required final List<WeekPlanInfoModel> infoList}) =
      _$WeekPlanInfoWrapperImpl;
  const _WeekPlanInfoWrapper._() : super._();

  factory _WeekPlanInfoWrapper.fromJson(Map<String, dynamic> json) =
      _$WeekPlanInfoWrapperImpl.fromJson;

  @override

  /// 时间类型
  WeekPlanTimeType get timeType;
  @override

  /// 计划详情
  List<WeekPlanInfoModel> get infoList;
  @override
  @JsonKey(ignore: true)
  _$$WeekPlanInfoWrapperImplCopyWith<_$WeekPlanInfoWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekPlanTargetModel _$WeekPlanTargetModelFromJson(Map<String, dynamic> json) {
  return _WeekPlanTargetModel.fromJson(json);
}

/// @nodoc
mixin _$WeekPlanTargetModel {
  int? get id => throw _privateConstructorUsedError;

  /// 标题
  String get title => throw _privateConstructorUsedError;

  /// 内容
  String get content => throw _privateConstructorUsedError;

  /// 计划表编码
  String get planCode => throw _privateConstructorUsedError;

  /// 排序
  int get orderNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekPlanTargetModelCopyWith<WeekPlanTargetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekPlanTargetModelCopyWith<$Res> {
  factory $WeekPlanTargetModelCopyWith(
          WeekPlanTargetModel value, $Res Function(WeekPlanTargetModel) then) =
      _$WeekPlanTargetModelCopyWithImpl<$Res, WeekPlanTargetModel>;
  @useResult
  $Res call(
      {int? id, String title, String content, String planCode, int orderNum});
}

/// @nodoc
class _$WeekPlanTargetModelCopyWithImpl<$Res, $Val extends WeekPlanTargetModel>
    implements $WeekPlanTargetModelCopyWith<$Res> {
  _$WeekPlanTargetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? planCode = null,
    Object? orderNum = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekPlanTargetModelImplCopyWith<$Res>
    implements $WeekPlanTargetModelCopyWith<$Res> {
  factory _$$WeekPlanTargetModelImplCopyWith(_$WeekPlanTargetModelImpl value,
          $Res Function(_$WeekPlanTargetModelImpl) then) =
      __$$WeekPlanTargetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String title, String content, String planCode, int orderNum});
}

/// @nodoc
class __$$WeekPlanTargetModelImplCopyWithImpl<$Res>
    extends _$WeekPlanTargetModelCopyWithImpl<$Res, _$WeekPlanTargetModelImpl>
    implements _$$WeekPlanTargetModelImplCopyWith<$Res> {
  __$$WeekPlanTargetModelImplCopyWithImpl(_$WeekPlanTargetModelImpl _value,
      $Res Function(_$WeekPlanTargetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? planCode = null,
    Object? orderNum = null,
  }) {
    return _then(_$WeekPlanTargetModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      planCode: null == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderNum: null == orderNum
          ? _value.orderNum
          : orderNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekPlanTargetModelImpl extends _WeekPlanTargetModel {
  const _$WeekPlanTargetModelImpl(
      {this.id,
      this.title = '',
      this.content = '',
      this.planCode = '',
      this.orderNum = 0})
      : super._();

  factory _$WeekPlanTargetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekPlanTargetModelImplFromJson(json);

  @override
  final int? id;

  /// 标题
  @override
  @JsonKey()
  final String title;

  /// 内容
  @override
  @JsonKey()
  final String content;

  /// 计划表编码
  @override
  @JsonKey()
  final String planCode;

  /// 排序
  @override
  @JsonKey()
  final int orderNum;

  @override
  String toString() {
    return 'WeekPlanTargetModel(id: $id, title: $title, content: $content, planCode: $planCode, orderNum: $orderNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekPlanTargetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.planCode, planCode) ||
                other.planCode == planCode) &&
            (identical(other.orderNum, orderNum) ||
                other.orderNum == orderNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, content, planCode, orderNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekPlanTargetModelImplCopyWith<_$WeekPlanTargetModelImpl> get copyWith =>
      __$$WeekPlanTargetModelImplCopyWithImpl<_$WeekPlanTargetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekPlanTargetModelImplToJson(
      this,
    );
  }
}

abstract class _WeekPlanTargetModel extends WeekPlanTargetModel {
  const factory _WeekPlanTargetModel(
      {final int? id,
      final String title,
      final String content,
      final String planCode,
      final int orderNum}) = _$WeekPlanTargetModelImpl;
  const _WeekPlanTargetModel._() : super._();

  factory _WeekPlanTargetModel.fromJson(Map<String, dynamic> json) =
      _$WeekPlanTargetModelImpl.fromJson;

  @override
  int? get id;
  @override

  /// 标题
  String get title;
  @override

  /// 内容
  String get content;
  @override

  /// 计划表编码
  String get planCode;
  @override

  /// 排序
  int get orderNum;
  @override
  @JsonKey(ignore: true)
  _$$WeekPlanTargetModelImplCopyWith<_$WeekPlanTargetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekPlanModel _$WeekPlanModelFromJson(Map<String, dynamic> json) {
  return _WeekPlanModel.fromJson(json);
}

/// @nodoc
mixin _$WeekPlanModel {
  /// 日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate => throw _privateConstructorUsedError;

  /// 计划表编码
  String? get planCode => throw _privateConstructorUsedError;

  /// 状态
  WeekPlanStatus get status => throw _privateConstructorUsedError;

  /// 就读学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 就读学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 就读学段名称
  String get phaseName => throw _privateConstructorUsedError;

  /// 就读课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 就读年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 就读班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 学年学期编码
  String get yearTermCode => throw _privateConstructorUsedError;

  /// 内容类型 1 => 文字 2 => 图片
  int get contentType => throw _privateConstructorUsedError;

  /// 开始日期
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;

  /// 结束日期
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// 周目标
  @JsonKey(name: 'detailList')
  List<WeekPlanTargetModel> get targetList =>
      throw _privateConstructorUsedError;

  /// 周计划
  @JsonKey(name: 'itemList')
  List<WeekPlanInfoModel> get infoList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekPlanModelCopyWith<WeekPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekPlanModelCopyWith<$Res> {
  factory $WeekPlanModelCopyWith(
          WeekPlanModel value, $Res Function(WeekPlanModel) then) =
      _$WeekPlanModelCopyWithImpl<$Res, WeekPlanModel>;
  @useResult
  $Res call(
      {@SimpleDateTimeJsonConverter() DateTime? currDate,
      String? planCode,
      WeekPlanStatus status,
      String schoolCode,
      String phaseCode,
      String phaseName,
      String courseCode,
      String gradeCode,
      String classCode,
      String yearTermCode,
      int contentType,
      @SimpleDateTimeJsonConverter() DateTime? startDate,
      @SimpleDateTimeJsonConverter() DateTime? endDate,
      @JsonKey(name: 'detailList') List<WeekPlanTargetModel> targetList,
      @JsonKey(name: 'itemList') List<WeekPlanInfoModel> infoList});
}

/// @nodoc
class _$WeekPlanModelCopyWithImpl<$Res, $Val extends WeekPlanModel>
    implements $WeekPlanModelCopyWith<$Res> {
  _$WeekPlanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currDate = freezed,
    Object? planCode = freezed,
    Object? status = null,
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? phaseName = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? classCode = null,
    Object? yearTermCode = null,
    Object? contentType = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? targetList = null,
    Object? infoList = null,
  }) {
    return _then(_value.copyWith(
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      planCode: freezed == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeekPlanStatus,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetList: null == targetList
          ? _value.targetList
          : targetList // ignore: cast_nullable_to_non_nullable
              as List<WeekPlanTargetModel>,
      infoList: null == infoList
          ? _value.infoList
          : infoList // ignore: cast_nullable_to_non_nullable
              as List<WeekPlanInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekPlanModelImplCopyWith<$Res>
    implements $WeekPlanModelCopyWith<$Res> {
  factory _$$WeekPlanModelImplCopyWith(
          _$WeekPlanModelImpl value, $Res Function(_$WeekPlanModelImpl) then) =
      __$$WeekPlanModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@SimpleDateTimeJsonConverter() DateTime? currDate,
      String? planCode,
      WeekPlanStatus status,
      String schoolCode,
      String phaseCode,
      String phaseName,
      String courseCode,
      String gradeCode,
      String classCode,
      String yearTermCode,
      int contentType,
      @SimpleDateTimeJsonConverter() DateTime? startDate,
      @SimpleDateTimeJsonConverter() DateTime? endDate,
      @JsonKey(name: 'detailList') List<WeekPlanTargetModel> targetList,
      @JsonKey(name: 'itemList') List<WeekPlanInfoModel> infoList});
}

/// @nodoc
class __$$WeekPlanModelImplCopyWithImpl<$Res>
    extends _$WeekPlanModelCopyWithImpl<$Res, _$WeekPlanModelImpl>
    implements _$$WeekPlanModelImplCopyWith<$Res> {
  __$$WeekPlanModelImplCopyWithImpl(
      _$WeekPlanModelImpl _value, $Res Function(_$WeekPlanModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currDate = freezed,
    Object? planCode = freezed,
    Object? status = null,
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? phaseName = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? classCode = null,
    Object? yearTermCode = null,
    Object? contentType = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? targetList = null,
    Object? infoList = null,
  }) {
    return _then(_$WeekPlanModelImpl(
      currDate: freezed == currDate
          ? _value.currDate
          : currDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      planCode: freezed == planCode
          ? _value.planCode
          : planCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WeekPlanStatus,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      targetList: null == targetList
          ? _value._targetList
          : targetList // ignore: cast_nullable_to_non_nullable
              as List<WeekPlanTargetModel>,
      infoList: null == infoList
          ? _value._infoList
          : infoList // ignore: cast_nullable_to_non_nullable
              as List<WeekPlanInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekPlanModelImpl extends _WeekPlanModel {
  const _$WeekPlanModelImpl(
      {@SimpleDateTimeJsonConverter() this.currDate,
      this.planCode,
      this.status = WeekPlanStatus.waiting,
      this.schoolCode = '',
      this.phaseCode = '',
      this.phaseName = '',
      this.courseCode = '',
      this.gradeCode = '',
      this.classCode = '',
      this.yearTermCode = '',
      this.contentType = 0,
      @SimpleDateTimeJsonConverter() this.startDate,
      @SimpleDateTimeJsonConverter() this.endDate,
      @JsonKey(name: 'detailList')
      final List<WeekPlanTargetModel> targetList = const [],
      @JsonKey(name: 'itemList')
      final List<WeekPlanInfoModel> infoList = const []})
      : _targetList = targetList,
        _infoList = infoList,
        super._();

  factory _$WeekPlanModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekPlanModelImplFromJson(json);

  /// 日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? currDate;

  /// 计划表编码
  @override
  final String? planCode;

  /// 状态
  @override
  @JsonKey()
  final WeekPlanStatus status;

  /// 就读学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 就读学段编码
  @override
  @JsonKey()
  final String phaseCode;

  /// 就读学段名称
  @override
  @JsonKey()
  final String phaseName;

  /// 就读课程编码
  @override
  @JsonKey()
  final String courseCode;

  /// 就读年级编码
  @override
  @JsonKey()
  final String gradeCode;

  /// 就读班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 学年学期编码
  @override
  @JsonKey()
  final String yearTermCode;

  /// 内容类型 1 => 文字 2 => 图片
  @override
  @JsonKey()
  final int contentType;

  /// 开始日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? startDate;

  /// 结束日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? endDate;

  /// 周目标
  final List<WeekPlanTargetModel> _targetList;

  /// 周目标
  @override
  @JsonKey(name: 'detailList')
  List<WeekPlanTargetModel> get targetList {
    if (_targetList is EqualUnmodifiableListView) return _targetList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_targetList);
  }

  /// 周计划
  final List<WeekPlanInfoModel> _infoList;

  /// 周计划
  @override
  @JsonKey(name: 'itemList')
  List<WeekPlanInfoModel> get infoList {
    if (_infoList is EqualUnmodifiableListView) return _infoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infoList);
  }

  @override
  String toString() {
    return 'WeekPlanModel(currDate: $currDate, planCode: $planCode, status: $status, schoolCode: $schoolCode, phaseCode: $phaseCode, phaseName: $phaseName, courseCode: $courseCode, gradeCode: $gradeCode, classCode: $classCode, yearTermCode: $yearTermCode, contentType: $contentType, startDate: $startDate, endDate: $endDate, targetList: $targetList, infoList: $infoList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekPlanModelImpl &&
            (identical(other.currDate, currDate) ||
                other.currDate == currDate) &&
            (identical(other.planCode, planCode) ||
                other.planCode == planCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.phaseName, phaseName) ||
                other.phaseName == phaseName) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            const DeepCollectionEquality()
                .equals(other._targetList, _targetList) &&
            const DeepCollectionEquality().equals(other._infoList, _infoList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currDate,
      planCode,
      status,
      schoolCode,
      phaseCode,
      phaseName,
      courseCode,
      gradeCode,
      classCode,
      yearTermCode,
      contentType,
      startDate,
      endDate,
      const DeepCollectionEquality().hash(_targetList),
      const DeepCollectionEquality().hash(_infoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekPlanModelImplCopyWith<_$WeekPlanModelImpl> get copyWith =>
      __$$WeekPlanModelImplCopyWithImpl<_$WeekPlanModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekPlanModelImplToJson(
      this,
    );
  }
}

abstract class _WeekPlanModel extends WeekPlanModel {
  const factory _WeekPlanModel(
      {@SimpleDateTimeJsonConverter() final DateTime? currDate,
      final String? planCode,
      final WeekPlanStatus status,
      final String schoolCode,
      final String phaseCode,
      final String phaseName,
      final String courseCode,
      final String gradeCode,
      final String classCode,
      final String yearTermCode,
      final int contentType,
      @SimpleDateTimeJsonConverter() final DateTime? startDate,
      @SimpleDateTimeJsonConverter() final DateTime? endDate,
      @JsonKey(name: 'detailList') final List<WeekPlanTargetModel> targetList,
      @JsonKey(name: 'itemList')
      final List<WeekPlanInfoModel> infoList}) = _$WeekPlanModelImpl;
  const _WeekPlanModel._() : super._();

  factory _WeekPlanModel.fromJson(Map<String, dynamic> json) =
      _$WeekPlanModelImpl.fromJson;

  @override

  /// 日期
  @SimpleDateTimeJsonConverter()
  DateTime? get currDate;
  @override

  /// 计划表编码
  String? get planCode;
  @override

  /// 状态
  WeekPlanStatus get status;
  @override

  /// 就读学校编码
  String get schoolCode;
  @override

  /// 就读学段编码
  String get phaseCode;
  @override

  /// 就读学段名称
  String get phaseName;
  @override

  /// 就读课程编码
  String get courseCode;
  @override

  /// 就读年级编码
  String get gradeCode;
  @override

  /// 就读班级编码
  String get classCode;
  @override

  /// 学年学期编码
  String get yearTermCode;
  @override

  /// 内容类型 1 => 文字 2 => 图片
  int get contentType;
  @override

  /// 开始日期
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate;
  @override

  /// 结束日期
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate;
  @override

  /// 周目标
  @JsonKey(name: 'detailList')
  List<WeekPlanTargetModel> get targetList;
  @override

  /// 周计划
  @JsonKey(name: 'itemList')
  List<WeekPlanInfoModel> get infoList;
  @override
  @JsonKey(ignore: true)
  _$$WeekPlanModelImplCopyWith<_$WeekPlanModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
