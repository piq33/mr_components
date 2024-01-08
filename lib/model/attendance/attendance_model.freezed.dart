// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceOtherParam _$AttendanceOtherParamFromJson(Map<String, dynamic> json) {
  return _AttendanceOtherParam.fromJson(json);
}

/// @nodoc
mixin _$AttendanceOtherParam {
  /// 指定的考勤日期
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceOtherParamCopyWith<AttendanceOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceOtherParamCopyWith<$Res> {
  factory $AttendanceOtherParamCopyWith(AttendanceOtherParam value,
          $Res Function(AttendanceOtherParam) then) =
      _$AttendanceOtherParamCopyWithImpl<$Res, AttendanceOtherParam>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class _$AttendanceOtherParamCopyWithImpl<$Res,
        $Val extends AttendanceOtherParam>
    implements $AttendanceOtherParamCopyWith<$Res> {
  _$AttendanceOtherParamCopyWithImpl(this._value, this._then);

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
abstract class _$$AttendanceOtherParamImplCopyWith<$Res>
    implements $AttendanceOtherParamCopyWith<$Res> {
  factory _$$AttendanceOtherParamImplCopyWith(_$AttendanceOtherParamImpl value,
          $Res Function(_$AttendanceOtherParamImpl) then) =
      __$$AttendanceOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$AttendanceOtherParamImplCopyWithImpl<$Res>
    extends _$AttendanceOtherParamCopyWithImpl<$Res, _$AttendanceOtherParamImpl>
    implements _$$AttendanceOtherParamImplCopyWith<$Res> {
  __$$AttendanceOtherParamImplCopyWithImpl(_$AttendanceOtherParamImpl _value,
      $Res Function(_$AttendanceOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$AttendanceOtherParamImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceOtherParamImpl extends _AttendanceOtherParam {
  const _$AttendanceOtherParamImpl({this.date = ''}) : super._();

  factory _$AttendanceOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceOtherParamImplFromJson(json);

  /// 指定的考勤日期
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'AttendanceOtherParam(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceOtherParamImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceOtherParamImplCopyWith<_$AttendanceOtherParamImpl>
      get copyWith =>
          __$$AttendanceOtherParamImplCopyWithImpl<_$AttendanceOtherParamImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceOtherParamImplToJson(
      this,
    );
  }
}

abstract class _AttendanceOtherParam extends AttendanceOtherParam {
  const factory _AttendanceOtherParam({final String date}) =
      _$AttendanceOtherParamImpl;
  const _AttendanceOtherParam._() : super._();

  factory _AttendanceOtherParam.fromJson(Map<String, dynamic> json) =
      _$AttendanceOtherParamImpl.fromJson;

  @override

  /// 指定的考勤日期
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceOtherParamImplCopyWith<_$AttendanceOtherParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceReq _$AttendanceReqFromJson(Map<String, dynamic> json) {
  return _AttendanceReq.fromJson(json);
}

/// @nodoc
mixin _$AttendanceReq {
  /// 起始日期
  @JsonKey(name: 'checkWorkDateBegin')
  String get beginDate => throw _privateConstructorUsedError;

  /// 结束日期
  @JsonKey(name: 'checkWorkDateEnd')
  String get endDate => throw _privateConstructorUsedError;

  /// 学生学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceReqCopyWith<AttendanceReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceReqCopyWith<$Res> {
  factory $AttendanceReqCopyWith(
          AttendanceReq value, $Res Function(AttendanceReq) then) =
      _$AttendanceReqCopyWithImpl<$Res, AttendanceReq>;
  @useResult
  $Res call(
      {@JsonKey(name: 'checkWorkDateBegin') String beginDate,
      @JsonKey(name: 'checkWorkDateEnd') String endDate,
      String studentCode,
      String schoolCode});
}

/// @nodoc
class _$AttendanceReqCopyWithImpl<$Res, $Val extends AttendanceReq>
    implements $AttendanceReqCopyWith<$Res> {
  _$AttendanceReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginDate = null,
    Object? endDate = null,
    Object? studentCode = null,
    Object? schoolCode = null,
  }) {
    return _then(_value.copyWith(
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceReqImplCopyWith<$Res>
    implements $AttendanceReqCopyWith<$Res> {
  factory _$$AttendanceReqImplCopyWith(
          _$AttendanceReqImpl value, $Res Function(_$AttendanceReqImpl) then) =
      __$$AttendanceReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'checkWorkDateBegin') String beginDate,
      @JsonKey(name: 'checkWorkDateEnd') String endDate,
      String studentCode,
      String schoolCode});
}

/// @nodoc
class __$$AttendanceReqImplCopyWithImpl<$Res>
    extends _$AttendanceReqCopyWithImpl<$Res, _$AttendanceReqImpl>
    implements _$$AttendanceReqImplCopyWith<$Res> {
  __$$AttendanceReqImplCopyWithImpl(
      _$AttendanceReqImpl _value, $Res Function(_$AttendanceReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beginDate = null,
    Object? endDate = null,
    Object? studentCode = null,
    Object? schoolCode = null,
  }) {
    return _then(_$AttendanceReqImpl(
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceReqImpl extends _AttendanceReq {
  const _$AttendanceReqImpl(
      {@JsonKey(name: 'checkWorkDateBegin') required this.beginDate,
      @JsonKey(name: 'checkWorkDateEnd') required this.endDate,
      required this.studentCode,
      required this.schoolCode})
      : super._();

  factory _$AttendanceReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceReqImplFromJson(json);

  /// 起始日期
  @override
  @JsonKey(name: 'checkWorkDateBegin')
  final String beginDate;

  /// 结束日期
  @override
  @JsonKey(name: 'checkWorkDateEnd')
  final String endDate;

  /// 学生学号
  @override
  final String studentCode;

  /// 学校编码
  @override
  final String schoolCode;

  @override
  String toString() {
    return 'AttendanceReq(beginDate: $beginDate, endDate: $endDate, studentCode: $studentCode, schoolCode: $schoolCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceReqImpl &&
            (identical(other.beginDate, beginDate) ||
                other.beginDate == beginDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, beginDate, endDate, studentCode, schoolCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceReqImplCopyWith<_$AttendanceReqImpl> get copyWith =>
      __$$AttendanceReqImplCopyWithImpl<_$AttendanceReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceReqImplToJson(
      this,
    );
  }
}

abstract class _AttendanceReq extends AttendanceReq {
  const factory _AttendanceReq(
      {@JsonKey(name: 'checkWorkDateBegin') required final String beginDate,
      @JsonKey(name: 'checkWorkDateEnd') required final String endDate,
      required final String studentCode,
      required final String schoolCode}) = _$AttendanceReqImpl;
  const _AttendanceReq._() : super._();

  factory _AttendanceReq.fromJson(Map<String, dynamic> json) =
      _$AttendanceReqImpl.fromJson;

  @override

  /// 起始日期
  @JsonKey(name: 'checkWorkDateBegin')
  String get beginDate;
  @override

  /// 结束日期
  @JsonKey(name: 'checkWorkDateEnd')
  String get endDate;
  @override

  /// 学生学号
  String get studentCode;
  @override

  /// 学校编码
  String get schoolCode;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceReqImplCopyWith<_$AttendanceReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceModel _$AttendanceModelFromJson(Map<String, dynamic> json) {
  return _AttendanceModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceModel {
// 考勤日期
  @JsonKey(name: 'checkWorkDate')
  @TimestampStringJsonConverter()
  DateTime get dateTime => throw _privateConstructorUsedError; // 考勤状态英文名称
  @JsonKey(name: 'checkWorkStatus')
  String? get stateEngName => throw _privateConstructorUsedError; // 考勤状态名称
  @JsonKey(name: 'checkWorkStatusName')
  String? get stateName => throw _privateConstructorUsedError; // 考勤状态
  @AttendanceTypeJsonConverter()
  AttendanceType get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceModelCopyWith<AttendanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceModelCopyWith<$Res> {
  factory $AttendanceModelCopyWith(
          AttendanceModel value, $Res Function(AttendanceModel) then) =
      _$AttendanceModelCopyWithImpl<$Res, AttendanceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'checkWorkDate')
      @TimestampStringJsonConverter()
      DateTime dateTime,
      @JsonKey(name: 'checkWorkStatus') String? stateEngName,
      @JsonKey(name: 'checkWorkStatusName') String? stateName,
      @AttendanceTypeJsonConverter() AttendanceType state});
}

/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res, $Val extends AttendanceModel>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? stateEngName = freezed,
    Object? stateName = freezed,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stateEngName: freezed == stateEngName
          ? _value.stateEngName
          : stateEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AttendanceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceModelImplCopyWith<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  factory _$$AttendanceModelImplCopyWith(_$AttendanceModelImpl value,
          $Res Function(_$AttendanceModelImpl) then) =
      __$$AttendanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'checkWorkDate')
      @TimestampStringJsonConverter()
      DateTime dateTime,
      @JsonKey(name: 'checkWorkStatus') String? stateEngName,
      @JsonKey(name: 'checkWorkStatusName') String? stateName,
      @AttendanceTypeJsonConverter() AttendanceType state});
}

/// @nodoc
class __$$AttendanceModelImplCopyWithImpl<$Res>
    extends _$AttendanceModelCopyWithImpl<$Res, _$AttendanceModelImpl>
    implements _$$AttendanceModelImplCopyWith<$Res> {
  __$$AttendanceModelImplCopyWithImpl(
      _$AttendanceModelImpl _value, $Res Function(_$AttendanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? stateEngName = freezed,
    Object? stateName = freezed,
    Object? state = null,
  }) {
    return _then(_$AttendanceModelImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stateEngName: freezed == stateEngName
          ? _value.stateEngName
          : stateEngName // ignore: cast_nullable_to_non_nullable
              as String?,
      stateName: freezed == stateName
          ? _value.stateName
          : stateName // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AttendanceType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceModelImpl extends _AttendanceModel {
  const _$AttendanceModelImpl(
      {@JsonKey(name: 'checkWorkDate')
      @TimestampStringJsonConverter()
      required this.dateTime,
      @JsonKey(name: 'checkWorkStatus') this.stateEngName,
      @JsonKey(name: 'checkWorkStatusName') this.stateName,
      @AttendanceTypeJsonConverter() this.state = AttendanceType.none})
      : super._();

  factory _$AttendanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceModelImplFromJson(json);

// 考勤日期
  @override
  @JsonKey(name: 'checkWorkDate')
  @TimestampStringJsonConverter()
  final DateTime dateTime;
// 考勤状态英文名称
  @override
  @JsonKey(name: 'checkWorkStatus')
  final String? stateEngName;
// 考勤状态名称
  @override
  @JsonKey(name: 'checkWorkStatusName')
  final String? stateName;
// 考勤状态
  @override
  @JsonKey()
  @AttendanceTypeJsonConverter()
  final AttendanceType state;

  @override
  String toString() {
    return 'AttendanceModel(dateTime: $dateTime, stateEngName: $stateEngName, stateName: $stateName, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceModelImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.stateEngName, stateEngName) ||
                other.stateEngName == stateEngName) &&
            (identical(other.stateName, stateName) ||
                other.stateName == stateName) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, stateEngName, stateName, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      __$$AttendanceModelImplCopyWithImpl<_$AttendanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceModel extends AttendanceModel {
  const factory _AttendanceModel(
          {@JsonKey(name: 'checkWorkDate')
          @TimestampStringJsonConverter()
          required final DateTime dateTime,
          @JsonKey(name: 'checkWorkStatus') final String? stateEngName,
          @JsonKey(name: 'checkWorkStatusName') final String? stateName,
          @AttendanceTypeJsonConverter() final AttendanceType state}) =
      _$AttendanceModelImpl;
  const _AttendanceModel._() : super._();

  factory _AttendanceModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceModelImpl.fromJson;

  @override // 考勤日期
  @JsonKey(name: 'checkWorkDate')
  @TimestampStringJsonConverter()
  DateTime get dateTime;
  @override // 考勤状态英文名称
  @JsonKey(name: 'checkWorkStatus')
  String? get stateEngName;
  @override // 考勤状态名称
  @JsonKey(name: 'checkWorkStatusName')
  String? get stateName;
  @override // 考勤状态
  @AttendanceTypeJsonConverter()
  AttendanceType get state;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceModelImplCopyWith<_$AttendanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceDetailFeedbackModel _$AttendanceDetailFeedbackModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceDetailFeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDetailFeedbackModel {
  /// 反馈时间
  @TimestampStringNullableJsonConverter()
  DateTime? get dissentDate => throw _privateConstructorUsedError;

  /// 反馈信息
  String get dissentRemark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceDetailFeedbackModelCopyWith<AttendanceDetailFeedbackModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDetailFeedbackModelCopyWith<$Res> {
  factory $AttendanceDetailFeedbackModelCopyWith(
          AttendanceDetailFeedbackModel value,
          $Res Function(AttendanceDetailFeedbackModel) then) =
      _$AttendanceDetailFeedbackModelCopyWithImpl<$Res,
          AttendanceDetailFeedbackModel>;
  @useResult
  $Res call(
      {@TimestampStringNullableJsonConverter() DateTime? dissentDate,
      String dissentRemark});
}

/// @nodoc
class _$AttendanceDetailFeedbackModelCopyWithImpl<$Res,
        $Val extends AttendanceDetailFeedbackModel>
    implements $AttendanceDetailFeedbackModelCopyWith<$Res> {
  _$AttendanceDetailFeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dissentDate = freezed,
    Object? dissentRemark = null,
  }) {
    return _then(_value.copyWith(
      dissentDate: freezed == dissentDate
          ? _value.dissentDate
          : dissentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dissentRemark: null == dissentRemark
          ? _value.dissentRemark
          : dissentRemark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceDetailFeedbackModelImplCopyWith<$Res>
    implements $AttendanceDetailFeedbackModelCopyWith<$Res> {
  factory _$$AttendanceDetailFeedbackModelImplCopyWith(
          _$AttendanceDetailFeedbackModelImpl value,
          $Res Function(_$AttendanceDetailFeedbackModelImpl) then) =
      __$$AttendanceDetailFeedbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@TimestampStringNullableJsonConverter() DateTime? dissentDate,
      String dissentRemark});
}

/// @nodoc
class __$$AttendanceDetailFeedbackModelImplCopyWithImpl<$Res>
    extends _$AttendanceDetailFeedbackModelCopyWithImpl<$Res,
        _$AttendanceDetailFeedbackModelImpl>
    implements _$$AttendanceDetailFeedbackModelImplCopyWith<$Res> {
  __$$AttendanceDetailFeedbackModelImplCopyWithImpl(
      _$AttendanceDetailFeedbackModelImpl _value,
      $Res Function(_$AttendanceDetailFeedbackModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dissentDate = freezed,
    Object? dissentRemark = null,
  }) {
    return _then(_$AttendanceDetailFeedbackModelImpl(
      dissentDate: freezed == dissentDate
          ? _value.dissentDate
          : dissentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dissentRemark: null == dissentRemark
          ? _value.dissentRemark
          : dissentRemark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceDetailFeedbackModelImpl
    extends _AttendanceDetailFeedbackModel {
  const _$AttendanceDetailFeedbackModelImpl(
      {@TimestampStringNullableJsonConverter() this.dissentDate,
      this.dissentRemark = ''})
      : super._();

  factory _$AttendanceDetailFeedbackModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AttendanceDetailFeedbackModelImplFromJson(json);

  /// 反馈时间
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? dissentDate;

  /// 反馈信息
  @override
  @JsonKey()
  final String dissentRemark;

  @override
  String toString() {
    return 'AttendanceDetailFeedbackModel(dissentDate: $dissentDate, dissentRemark: $dissentRemark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDetailFeedbackModelImpl &&
            (identical(other.dissentDate, dissentDate) ||
                other.dissentDate == dissentDate) &&
            (identical(other.dissentRemark, dissentRemark) ||
                other.dissentRemark == dissentRemark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dissentDate, dissentRemark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDetailFeedbackModelImplCopyWith<
          _$AttendanceDetailFeedbackModelImpl>
      get copyWith => __$$AttendanceDetailFeedbackModelImplCopyWithImpl<
          _$AttendanceDetailFeedbackModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDetailFeedbackModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceDetailFeedbackModel
    extends AttendanceDetailFeedbackModel {
  const factory _AttendanceDetailFeedbackModel(
      {@TimestampStringNullableJsonConverter() final DateTime? dissentDate,
      final String dissentRemark}) = _$AttendanceDetailFeedbackModelImpl;
  const _AttendanceDetailFeedbackModel._() : super._();

  factory _AttendanceDetailFeedbackModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceDetailFeedbackModelImpl.fromJson;

  @override

  /// 反馈时间
  @TimestampStringNullableJsonConverter()
  DateTime? get dissentDate;
  @override

  /// 反馈信息
  String get dissentRemark;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceDetailFeedbackModelImplCopyWith<
          _$AttendanceDetailFeedbackModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceOverviewReq _$AttendanceOverviewReqFromJson(
    Map<String, dynamic> json) {
  return _AttendanceOverviewReq.fromJson(json);
}

/// @nodoc
mixin _$AttendanceOverviewReq {
  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 学生id
  int get studentId => throw _privateConstructorUsedError;

  /// 开始时间
  String get beginDate => throw _privateConstructorUsedError;

  /// 结束时间
  String get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceOverviewReqCopyWith<AttendanceOverviewReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceOverviewReqCopyWith<$Res> {
  factory $AttendanceOverviewReqCopyWith(AttendanceOverviewReq value,
          $Res Function(AttendanceOverviewReq) then) =
      _$AttendanceOverviewReqCopyWithImpl<$Res, AttendanceOverviewReq>;
  @useResult
  $Res call(
      {String schoolCode,
      String phaseCode,
      String classCode,
      String courseCode,
      String gradeCode,
      int studentId,
      String beginDate,
      String endDate});
}

/// @nodoc
class _$AttendanceOverviewReqCopyWithImpl<$Res,
        $Val extends AttendanceOverviewReq>
    implements $AttendanceOverviewReqCopyWith<$Res> {
  _$AttendanceOverviewReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? classCode = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? studentId = null,
    Object? beginDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceOverviewReqImplCopyWith<$Res>
    implements $AttendanceOverviewReqCopyWith<$Res> {
  factory _$$AttendanceOverviewReqImplCopyWith(
          _$AttendanceOverviewReqImpl value,
          $Res Function(_$AttendanceOverviewReqImpl) then) =
      __$$AttendanceOverviewReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String schoolCode,
      String phaseCode,
      String classCode,
      String courseCode,
      String gradeCode,
      int studentId,
      String beginDate,
      String endDate});
}

/// @nodoc
class __$$AttendanceOverviewReqImplCopyWithImpl<$Res>
    extends _$AttendanceOverviewReqCopyWithImpl<$Res,
        _$AttendanceOverviewReqImpl>
    implements _$$AttendanceOverviewReqImplCopyWith<$Res> {
  __$$AttendanceOverviewReqImplCopyWithImpl(_$AttendanceOverviewReqImpl _value,
      $Res Function(_$AttendanceOverviewReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? classCode = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? studentId = null,
    Object? beginDate = null,
    Object? endDate = null,
  }) {
    return _then(_$AttendanceOverviewReqImpl(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceOverviewReqImpl extends _AttendanceOverviewReq {
  const _$AttendanceOverviewReqImpl(
      {required this.schoolCode,
      required this.phaseCode,
      required this.classCode,
      required this.courseCode,
      required this.gradeCode,
      required this.studentId,
      required this.beginDate,
      required this.endDate})
      : super._();

  factory _$AttendanceOverviewReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceOverviewReqImplFromJson(json);

  /// 学校编码
  @override
  final String schoolCode;

  /// 学段编码
  @override
  final String phaseCode;

  /// 班级编码
  @override
  final String classCode;

  /// 课程编码
  @override
  final String courseCode;

  /// 年级编码
  @override
  final String gradeCode;

  /// 学生id
  @override
  final int studentId;

  /// 开始时间
  @override
  final String beginDate;

  /// 结束时间
  @override
  final String endDate;

  @override
  String toString() {
    return 'AttendanceOverviewReq(schoolCode: $schoolCode, phaseCode: $phaseCode, classCode: $classCode, courseCode: $courseCode, gradeCode: $gradeCode, studentId: $studentId, beginDate: $beginDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceOverviewReqImpl &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.beginDate, beginDate) ||
                other.beginDate == beginDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolCode, phaseCode, classCode,
      courseCode, gradeCode, studentId, beginDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceOverviewReqImplCopyWith<_$AttendanceOverviewReqImpl>
      get copyWith => __$$AttendanceOverviewReqImplCopyWithImpl<
          _$AttendanceOverviewReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceOverviewReqImplToJson(
      this,
    );
  }
}

abstract class _AttendanceOverviewReq extends AttendanceOverviewReq {
  const factory _AttendanceOverviewReq(
      {required final String schoolCode,
      required final String phaseCode,
      required final String classCode,
      required final String courseCode,
      required final String gradeCode,
      required final int studentId,
      required final String beginDate,
      required final String endDate}) = _$AttendanceOverviewReqImpl;
  const _AttendanceOverviewReq._() : super._();

  factory _AttendanceOverviewReq.fromJson(Map<String, dynamic> json) =
      _$AttendanceOverviewReqImpl.fromJson;

  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 学生id
  int get studentId;
  @override

  /// 开始时间
  String get beginDate;
  @override

  /// 结束时间
  String get endDate;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceOverviewReqImplCopyWith<_$AttendanceOverviewReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceOverviewModel _$AttendanceOverviewModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceOverviewModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceOverviewModel {
  /// 日期
  @AttendanceDateJsonConverter()
  DateTime? get date => throw _privateConstructorUsedError;

  /// 考勤状态
  @AttendanceStatusJsonConverter()
  AttendanceStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceOverviewModelCopyWith<AttendanceOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceOverviewModelCopyWith<$Res> {
  factory $AttendanceOverviewModelCopyWith(AttendanceOverviewModel value,
          $Res Function(AttendanceOverviewModel) then) =
      _$AttendanceOverviewModelCopyWithImpl<$Res, AttendanceOverviewModel>;
  @useResult
  $Res call(
      {@AttendanceDateJsonConverter() DateTime? date,
      @AttendanceStatusJsonConverter() AttendanceStatus status});
}

/// @nodoc
class _$AttendanceOverviewModelCopyWithImpl<$Res,
        $Val extends AttendanceOverviewModel>
    implements $AttendanceOverviewModelCopyWith<$Res> {
  _$AttendanceOverviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceOverviewModelImplCopyWith<$Res>
    implements $AttendanceOverviewModelCopyWith<$Res> {
  factory _$$AttendanceOverviewModelImplCopyWith(
          _$AttendanceOverviewModelImpl value,
          $Res Function(_$AttendanceOverviewModelImpl) then) =
      __$$AttendanceOverviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@AttendanceDateJsonConverter() DateTime? date,
      @AttendanceStatusJsonConverter() AttendanceStatus status});
}

/// @nodoc
class __$$AttendanceOverviewModelImplCopyWithImpl<$Res>
    extends _$AttendanceOverviewModelCopyWithImpl<$Res,
        _$AttendanceOverviewModelImpl>
    implements _$$AttendanceOverviewModelImplCopyWith<$Res> {
  __$$AttendanceOverviewModelImplCopyWithImpl(
      _$AttendanceOverviewModelImpl _value,
      $Res Function(_$AttendanceOverviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = null,
  }) {
    return _then(_$AttendanceOverviewModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AttendanceStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceOverviewModelImpl extends _AttendanceOverviewModel {
  const _$AttendanceOverviewModelImpl(
      {@AttendanceDateJsonConverter() this.date,
      @AttendanceStatusJsonConverter()
      this.status = AttendanceStatus.invalidate})
      : super._();

  factory _$AttendanceOverviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceOverviewModelImplFromJson(json);

  /// 日期
  @override
  @AttendanceDateJsonConverter()
  final DateTime? date;

  /// 考勤状态
  @override
  @JsonKey()
  @AttendanceStatusJsonConverter()
  final AttendanceStatus status;

  @override
  String toString() {
    return 'AttendanceOverviewModel(date: $date, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceOverviewModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceOverviewModelImplCopyWith<_$AttendanceOverviewModelImpl>
      get copyWith => __$$AttendanceOverviewModelImplCopyWithImpl<
          _$AttendanceOverviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceOverviewModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceOverviewModel extends AttendanceOverviewModel {
  const factory _AttendanceOverviewModel(
          {@AttendanceDateJsonConverter() final DateTime? date,
          @AttendanceStatusJsonConverter() final AttendanceStatus status}) =
      _$AttendanceOverviewModelImpl;
  const _AttendanceOverviewModel._() : super._();

  factory _AttendanceOverviewModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceOverviewModelImpl.fromJson;

  @override

  /// 日期
  @AttendanceDateJsonConverter()
  DateTime? get date;
  @override

  /// 考勤状态
  @AttendanceStatusJsonConverter()
  AttendanceStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceOverviewModelImplCopyWith<_$AttendanceOverviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceDetailReq _$AttendanceDetailReqFromJson(Map<String, dynamic> json) {
  return _AttendanceDetailReq.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDetailReq {
  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 查看月份
  String get month => throw _privateConstructorUsedError;

  /// 学生id
  int get studentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceDetailReqCopyWith<AttendanceDetailReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDetailReqCopyWith<$Res> {
  factory $AttendanceDetailReqCopyWith(
          AttendanceDetailReq value, $Res Function(AttendanceDetailReq) then) =
      _$AttendanceDetailReqCopyWithImpl<$Res, AttendanceDetailReq>;
  @useResult
  $Res call(
      {String schoolCode,
      String phaseCode,
      String classCode,
      String courseCode,
      String gradeCode,
      String month,
      int studentId});
}

/// @nodoc
class _$AttendanceDetailReqCopyWithImpl<$Res, $Val extends AttendanceDetailReq>
    implements $AttendanceDetailReqCopyWith<$Res> {
  _$AttendanceDetailReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? classCode = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? month = null,
    Object? studentId = null,
  }) {
    return _then(_value.copyWith(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceDetailReqImplCopyWith<$Res>
    implements $AttendanceDetailReqCopyWith<$Res> {
  factory _$$AttendanceDetailReqImplCopyWith(_$AttendanceDetailReqImpl value,
          $Res Function(_$AttendanceDetailReqImpl) then) =
      __$$AttendanceDetailReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String schoolCode,
      String phaseCode,
      String classCode,
      String courseCode,
      String gradeCode,
      String month,
      int studentId});
}

/// @nodoc
class __$$AttendanceDetailReqImplCopyWithImpl<$Res>
    extends _$AttendanceDetailReqCopyWithImpl<$Res, _$AttendanceDetailReqImpl>
    implements _$$AttendanceDetailReqImplCopyWith<$Res> {
  __$$AttendanceDetailReqImplCopyWithImpl(_$AttendanceDetailReqImpl _value,
      $Res Function(_$AttendanceDetailReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? classCode = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? month = null,
    Object? studentId = null,
  }) {
    return _then(_$AttendanceDetailReqImpl(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceDetailReqImpl extends _AttendanceDetailReq {
  const _$AttendanceDetailReqImpl(
      {required this.schoolCode,
      required this.phaseCode,
      required this.classCode,
      required this.courseCode,
      required this.gradeCode,
      required this.month,
      required this.studentId})
      : super._();

  factory _$AttendanceDetailReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceDetailReqImplFromJson(json);

  /// 学校编码
  @override
  final String schoolCode;

  /// 学段编码
  @override
  final String phaseCode;

  /// 班级编码
  @override
  final String classCode;

  /// 课程编码
  @override
  final String courseCode;

  /// 年级编码
  @override
  final String gradeCode;

  /// 查看月份
  @override
  final String month;

  /// 学生id
  @override
  final int studentId;

  @override
  String toString() {
    return 'AttendanceDetailReq(schoolCode: $schoolCode, phaseCode: $phaseCode, classCode: $classCode, courseCode: $courseCode, gradeCode: $gradeCode, month: $month, studentId: $studentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDetailReqImpl &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, schoolCode, phaseCode, classCode,
      courseCode, gradeCode, month, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDetailReqImplCopyWith<_$AttendanceDetailReqImpl> get copyWith =>
      __$$AttendanceDetailReqImplCopyWithImpl<_$AttendanceDetailReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDetailReqImplToJson(
      this,
    );
  }
}

abstract class _AttendanceDetailReq extends AttendanceDetailReq {
  const factory _AttendanceDetailReq(
      {required final String schoolCode,
      required final String phaseCode,
      required final String classCode,
      required final String courseCode,
      required final String gradeCode,
      required final String month,
      required final int studentId}) = _$AttendanceDetailReqImpl;
  const _AttendanceDetailReq._() : super._();

  factory _AttendanceDetailReq.fromJson(Map<String, dynamic> json) =
      _$AttendanceDetailReqImpl.fromJson;

  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 查看月份
  String get month;
  @override

  /// 学生id
  int get studentId;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceDetailReqImplCopyWith<_$AttendanceDetailReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceDetailModel _$AttendanceDetailModelFromJson(
    Map<String, dynamic> json) {
  return _AttendanceDetailModel.fromJson(json);
}

/// @nodoc
mixin _$AttendanceDetailModel {
  /// 反馈信息列表
  List<AttendanceDetailFeedbackModel> get dissents =>
      throw _privateConstructorUsedError;

  /// 考勤月份
  @AttendanceDateJsonConverter()
  DateTime? get month => throw _privateConstructorUsedError;

  /// 反馈信息
  String get remark => throw _privateConstructorUsedError;

  /// 学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 学生id
  String? get studentId => throw _privateConstructorUsedError;

  /// 签名是否已下发给家长
  @String2BoolJsonConverter()
  bool get isSend => throw _privateConstructorUsedError;

  /// 签名状态
  @JsonKey(name: 'signatureStatus')
  @SignatureStatusJsonConverter()
  SignatureStatus get status => throw _privateConstructorUsedError;

  /// 签名日期
  @TimestampStringNullableJsonConverter()
  DateTime? get signatureDate => throw _privateConstructorUsedError;

  /// 签名图片地址
  String? get signatureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceDetailModelCopyWith<AttendanceDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDetailModelCopyWith<$Res> {
  factory $AttendanceDetailModelCopyWith(AttendanceDetailModel value,
          $Res Function(AttendanceDetailModel) then) =
      _$AttendanceDetailModelCopyWithImpl<$Res, AttendanceDetailModel>;
  @useResult
  $Res call(
      {List<AttendanceDetailFeedbackModel> dissents,
      @AttendanceDateJsonConverter() DateTime? month,
      String remark,
      String? schoolCode,
      String? studentId,
      @String2BoolJsonConverter() bool isSend,
      @JsonKey(name: 'signatureStatus')
      @SignatureStatusJsonConverter()
      SignatureStatus status,
      @TimestampStringNullableJsonConverter() DateTime? signatureDate,
      String? signatureUrl});
}

/// @nodoc
class _$AttendanceDetailModelCopyWithImpl<$Res,
        $Val extends AttendanceDetailModel>
    implements $AttendanceDetailModelCopyWith<$Res> {
  _$AttendanceDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dissents = null,
    Object? month = freezed,
    Object? remark = null,
    Object? schoolCode = freezed,
    Object? studentId = freezed,
    Object? isSend = null,
    Object? status = null,
    Object? signatureDate = freezed,
    Object? signatureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      dissents: null == dissents
          ? _value.dissents
          : dissents // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDetailFeedbackModel>,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSend: null == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignatureStatus,
      signatureDate: freezed == signatureDate
          ? _value.signatureDate
          : signatureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signatureUrl: freezed == signatureUrl
          ? _value.signatureUrl
          : signatureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceDetailModelImplCopyWith<$Res>
    implements $AttendanceDetailModelCopyWith<$Res> {
  factory _$$AttendanceDetailModelImplCopyWith(
          _$AttendanceDetailModelImpl value,
          $Res Function(_$AttendanceDetailModelImpl) then) =
      __$$AttendanceDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AttendanceDetailFeedbackModel> dissents,
      @AttendanceDateJsonConverter() DateTime? month,
      String remark,
      String? schoolCode,
      String? studentId,
      @String2BoolJsonConverter() bool isSend,
      @JsonKey(name: 'signatureStatus')
      @SignatureStatusJsonConverter()
      SignatureStatus status,
      @TimestampStringNullableJsonConverter() DateTime? signatureDate,
      String? signatureUrl});
}

/// @nodoc
class __$$AttendanceDetailModelImplCopyWithImpl<$Res>
    extends _$AttendanceDetailModelCopyWithImpl<$Res,
        _$AttendanceDetailModelImpl>
    implements _$$AttendanceDetailModelImplCopyWith<$Res> {
  __$$AttendanceDetailModelImplCopyWithImpl(_$AttendanceDetailModelImpl _value,
      $Res Function(_$AttendanceDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dissents = null,
    Object? month = freezed,
    Object? remark = null,
    Object? schoolCode = freezed,
    Object? studentId = freezed,
    Object? isSend = null,
    Object? status = null,
    Object? signatureDate = freezed,
    Object? signatureUrl = freezed,
  }) {
    return _then(_$AttendanceDetailModelImpl(
      dissents: null == dissents
          ? _value._dissents
          : dissents // ignore: cast_nullable_to_non_nullable
              as List<AttendanceDetailFeedbackModel>,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSend: null == isSend
          ? _value.isSend
          : isSend // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignatureStatus,
      signatureDate: freezed == signatureDate
          ? _value.signatureDate
          : signatureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signatureUrl: freezed == signatureUrl
          ? _value.signatureUrl
          : signatureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceDetailModelImpl extends _AttendanceDetailModel {
  const _$AttendanceDetailModelImpl(
      {final List<AttendanceDetailFeedbackModel> dissents = const [],
      @AttendanceDateJsonConverter() this.month,
      this.remark = '',
      this.schoolCode,
      this.studentId,
      @String2BoolJsonConverter() this.isSend = false,
      @JsonKey(name: 'signatureStatus')
      @SignatureStatusJsonConverter()
      this.status = SignatureStatus.unsigned,
      @TimestampStringNullableJsonConverter() this.signatureDate,
      this.signatureUrl})
      : _dissents = dissents,
        super._();

  factory _$AttendanceDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceDetailModelImplFromJson(json);

  /// 反馈信息列表
  final List<AttendanceDetailFeedbackModel> _dissents;

  /// 反馈信息列表
  @override
  @JsonKey()
  List<AttendanceDetailFeedbackModel> get dissents {
    if (_dissents is EqualUnmodifiableListView) return _dissents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dissents);
  }

  /// 考勤月份
  @override
  @AttendanceDateJsonConverter()
  final DateTime? month;

  /// 反馈信息
  @override
  @JsonKey()
  final String remark;

  /// 学校编码
  @override
  final String? schoolCode;

  /// 学生id
  @override
  final String? studentId;

  /// 签名是否已下发给家长
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isSend;

  /// 签名状态
  @override
  @JsonKey(name: 'signatureStatus')
  @SignatureStatusJsonConverter()
  final SignatureStatus status;

  /// 签名日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? signatureDate;

  /// 签名图片地址
  @override
  final String? signatureUrl;

  @override
  String toString() {
    return 'AttendanceDetailModel(dissents: $dissents, month: $month, remark: $remark, schoolCode: $schoolCode, studentId: $studentId, isSend: $isSend, status: $status, signatureDate: $signatureDate, signatureUrl: $signatureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDetailModelImpl &&
            const DeepCollectionEquality().equals(other._dissents, _dissents) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.isSend, isSend) || other.isSend == isSend) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.signatureDate, signatureDate) ||
                other.signatureDate == signatureDate) &&
            (identical(other.signatureUrl, signatureUrl) ||
                other.signatureUrl == signatureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dissents),
      month,
      remark,
      schoolCode,
      studentId,
      isSend,
      status,
      signatureDate,
      signatureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDetailModelImplCopyWith<_$AttendanceDetailModelImpl>
      get copyWith => __$$AttendanceDetailModelImplCopyWithImpl<
          _$AttendanceDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDetailModelImplToJson(
      this,
    );
  }
}

abstract class _AttendanceDetailModel extends AttendanceDetailModel {
  const factory _AttendanceDetailModel(
      {final List<AttendanceDetailFeedbackModel> dissents,
      @AttendanceDateJsonConverter() final DateTime? month,
      final String remark,
      final String? schoolCode,
      final String? studentId,
      @String2BoolJsonConverter() final bool isSend,
      @JsonKey(name: 'signatureStatus')
      @SignatureStatusJsonConverter()
      final SignatureStatus status,
      @TimestampStringNullableJsonConverter() final DateTime? signatureDate,
      final String? signatureUrl}) = _$AttendanceDetailModelImpl;
  const _AttendanceDetailModel._() : super._();

  factory _AttendanceDetailModel.fromJson(Map<String, dynamic> json) =
      _$AttendanceDetailModelImpl.fromJson;

  @override

  /// 反馈信息列表
  List<AttendanceDetailFeedbackModel> get dissents;
  @override

  /// 考勤月份
  @AttendanceDateJsonConverter()
  DateTime? get month;
  @override

  /// 反馈信息
  String get remark;
  @override

  /// 学校编码
  String? get schoolCode;
  @override

  /// 学生id
  String? get studentId;
  @override

  /// 签名是否已下发给家长
  @String2BoolJsonConverter()
  bool get isSend;
  @override

  /// 签名状态
  @JsonKey(name: 'signatureStatus')
  @SignatureStatusJsonConverter()
  SignatureStatus get status;
  @override

  /// 签名日期
  @TimestampStringNullableJsonConverter()
  DateTime? get signatureDate;
  @override

  /// 签名图片地址
  String? get signatureUrl;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceDetailModelImplCopyWith<_$AttendanceDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AttendanceFeedbackReq _$AttendanceFeedbackReqFromJson(
    Map<String, dynamic> json) {
  return _AttendanceFeedbackReq.fromJson(json);
}

/// @nodoc
mixin _$AttendanceFeedbackReq {
  /// 是否签名 true => 是 false => 否
  bool get isSignature => throw _privateConstructorUsedError;

  /// 考勤月份 yyyy-MM
  @JsonKey(name: 'mouth')
  String get month => throw _privateConstructorUsedError;

  /// 反馈信息
  String? get remark => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 学生id
  int get studentId => throw _privateConstructorUsedError;

  /// 签名url
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceFeedbackReqCopyWith<AttendanceFeedbackReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceFeedbackReqCopyWith<$Res> {
  factory $AttendanceFeedbackReqCopyWith(AttendanceFeedbackReq value,
          $Res Function(AttendanceFeedbackReq) then) =
      _$AttendanceFeedbackReqCopyWithImpl<$Res, AttendanceFeedbackReq>;
  @useResult
  $Res call(
      {bool isSignature,
      @JsonKey(name: 'mouth') String month,
      String? remark,
      String schoolCode,
      String phaseCode,
      String classCode,
      String courseCode,
      String gradeCode,
      int studentId,
      String? url});
}

/// @nodoc
class _$AttendanceFeedbackReqCopyWithImpl<$Res,
        $Val extends AttendanceFeedbackReq>
    implements $AttendanceFeedbackReqCopyWith<$Res> {
  _$AttendanceFeedbackReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignature = null,
    Object? month = null,
    Object? remark = freezed,
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? classCode = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? studentId = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      isSignature: null == isSignature
          ? _value.isSignature
          : isSignature // ignore: cast_nullable_to_non_nullable
              as bool,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceFeedbackReqImplCopyWith<$Res>
    implements $AttendanceFeedbackReqCopyWith<$Res> {
  factory _$$AttendanceFeedbackReqImplCopyWith(
          _$AttendanceFeedbackReqImpl value,
          $Res Function(_$AttendanceFeedbackReqImpl) then) =
      __$$AttendanceFeedbackReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSignature,
      @JsonKey(name: 'mouth') String month,
      String? remark,
      String schoolCode,
      String phaseCode,
      String classCode,
      String courseCode,
      String gradeCode,
      int studentId,
      String? url});
}

/// @nodoc
class __$$AttendanceFeedbackReqImplCopyWithImpl<$Res>
    extends _$AttendanceFeedbackReqCopyWithImpl<$Res,
        _$AttendanceFeedbackReqImpl>
    implements _$$AttendanceFeedbackReqImplCopyWith<$Res> {
  __$$AttendanceFeedbackReqImplCopyWithImpl(_$AttendanceFeedbackReqImpl _value,
      $Res Function(_$AttendanceFeedbackReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignature = null,
    Object? month = null,
    Object? remark = freezed,
    Object? schoolCode = null,
    Object? phaseCode = null,
    Object? classCode = null,
    Object? courseCode = null,
    Object? gradeCode = null,
    Object? studentId = null,
    Object? url = freezed,
  }) {
    return _then(_$AttendanceFeedbackReqImpl(
      isSignature: null == isSignature
          ? _value.isSignature
          : isSignature // ignore: cast_nullable_to_non_nullable
              as bool,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceFeedbackReqImpl extends _AttendanceFeedbackReq {
  const _$AttendanceFeedbackReqImpl(
      {required this.isSignature,
      @JsonKey(name: 'mouth') required this.month,
      this.remark,
      required this.schoolCode,
      required this.phaseCode,
      required this.classCode,
      required this.courseCode,
      required this.gradeCode,
      required this.studentId,
      this.url})
      : super._();

  factory _$AttendanceFeedbackReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceFeedbackReqImplFromJson(json);

  /// 是否签名 true => 是 false => 否
  @override
  final bool isSignature;

  /// 考勤月份 yyyy-MM
  @override
  @JsonKey(name: 'mouth')
  final String month;

  /// 反馈信息
  @override
  final String? remark;

  /// 学校编码
  @override
  final String schoolCode;

  /// 学段编码
  @override
  final String phaseCode;

  /// 班级编码
  @override
  final String classCode;

  /// 课程编码
  @override
  final String courseCode;

  /// 年级编码
  @override
  final String gradeCode;

  /// 学生id
  @override
  final int studentId;

  /// 签名url
  @override
  final String? url;

  @override
  String toString() {
    return 'AttendanceFeedbackReq(isSignature: $isSignature, month: $month, remark: $remark, schoolCode: $schoolCode, phaseCode: $phaseCode, classCode: $classCode, courseCode: $courseCode, gradeCode: $gradeCode, studentId: $studentId, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceFeedbackReqImpl &&
            (identical(other.isSignature, isSignature) ||
                other.isSignature == isSignature) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isSignature, month, remark,
      schoolCode, phaseCode, classCode, courseCode, gradeCode, studentId, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceFeedbackReqImplCopyWith<_$AttendanceFeedbackReqImpl>
      get copyWith => __$$AttendanceFeedbackReqImplCopyWithImpl<
          _$AttendanceFeedbackReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceFeedbackReqImplToJson(
      this,
    );
  }
}

abstract class _AttendanceFeedbackReq extends AttendanceFeedbackReq {
  const factory _AttendanceFeedbackReq(
      {required final bool isSignature,
      @JsonKey(name: 'mouth') required final String month,
      final String? remark,
      required final String schoolCode,
      required final String phaseCode,
      required final String classCode,
      required final String courseCode,
      required final String gradeCode,
      required final int studentId,
      final String? url}) = _$AttendanceFeedbackReqImpl;
  const _AttendanceFeedbackReq._() : super._();

  factory _AttendanceFeedbackReq.fromJson(Map<String, dynamic> json) =
      _$AttendanceFeedbackReqImpl.fromJson;

  @override

  /// 是否签名 true => 是 false => 否
  bool get isSignature;
  @override

  /// 考勤月份 yyyy-MM
  @JsonKey(name: 'mouth')
  String get month;
  @override

  /// 反馈信息
  String? get remark;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 学生id
  int get studentId;
  @override

  /// 签名url
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$AttendanceFeedbackReqImplCopyWith<_$AttendanceFeedbackReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}
