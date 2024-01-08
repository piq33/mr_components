// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dayoff_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LeavePageReq _$LeavePageReqFromJson(Map<String, dynamic> json) {
  return _LeavePageReq.fromJson(json);
}

/// @nodoc
mixin _$LeavePageReq {
  /// 当前页大小
  int get size => throw _privateConstructorUsedError;

  /// 当前页数
  int get current => throw _privateConstructorUsedError;
  LeaveReq? get queryData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeavePageReqCopyWith<LeavePageReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeavePageReqCopyWith<$Res> {
  factory $LeavePageReqCopyWith(
          LeavePageReq value, $Res Function(LeavePageReq) then) =
      _$LeavePageReqCopyWithImpl<$Res, LeavePageReq>;
  @useResult
  $Res call({int size, int current, LeaveReq? queryData});

  $LeaveReqCopyWith<$Res>? get queryData;
}

/// @nodoc
class _$LeavePageReqCopyWithImpl<$Res, $Val extends LeavePageReq>
    implements $LeavePageReqCopyWith<$Res> {
  _$LeavePageReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? current = null,
    Object? queryData = freezed,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      queryData: freezed == queryData
          ? _value.queryData
          : queryData // ignore: cast_nullable_to_non_nullable
              as LeaveReq?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeaveReqCopyWith<$Res>? get queryData {
    if (_value.queryData == null) {
      return null;
    }

    return $LeaveReqCopyWith<$Res>(_value.queryData!, (value) {
      return _then(_value.copyWith(queryData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeavePageReqImplCopyWith<$Res>
    implements $LeavePageReqCopyWith<$Res> {
  factory _$$LeavePageReqImplCopyWith(
          _$LeavePageReqImpl value, $Res Function(_$LeavePageReqImpl) then) =
      __$$LeavePageReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int size, int current, LeaveReq? queryData});

  @override
  $LeaveReqCopyWith<$Res>? get queryData;
}

/// @nodoc
class __$$LeavePageReqImplCopyWithImpl<$Res>
    extends _$LeavePageReqCopyWithImpl<$Res, _$LeavePageReqImpl>
    implements _$$LeavePageReqImplCopyWith<$Res> {
  __$$LeavePageReqImplCopyWithImpl(
      _$LeavePageReqImpl _value, $Res Function(_$LeavePageReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? current = null,
    Object? queryData = freezed,
  }) {
    return _then(_$LeavePageReqImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      queryData: freezed == queryData
          ? _value.queryData
          : queryData // ignore: cast_nullable_to_non_nullable
              as LeaveReq?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeavePageReqImpl extends _LeavePageReq {
  const _$LeavePageReqImpl(
      {required this.size, required this.current, this.queryData})
      : super._();

  factory _$LeavePageReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeavePageReqImplFromJson(json);

  /// 当前页大小
  @override
  final int size;

  /// 当前页数
  @override
  final int current;
  @override
  final LeaveReq? queryData;

  @override
  String toString() {
    return 'LeavePageReq(size: $size, current: $current, queryData: $queryData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeavePageReqImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.queryData, queryData) ||
                other.queryData == queryData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, current, queryData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeavePageReqImplCopyWith<_$LeavePageReqImpl> get copyWith =>
      __$$LeavePageReqImplCopyWithImpl<_$LeavePageReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeavePageReqImplToJson(
      this,
    );
  }
}

abstract class _LeavePageReq extends LeavePageReq {
  const factory _LeavePageReq(
      {required final int size,
      required final int current,
      final LeaveReq? queryData}) = _$LeavePageReqImpl;
  const _LeavePageReq._() : super._();

  factory _LeavePageReq.fromJson(Map<String, dynamic> json) =
      _$LeavePageReqImpl.fromJson;

  @override

  /// 当前页大小
  int get size;
  @override

  /// 当前页数
  int get current;
  @override
  LeaveReq? get queryData;
  @override
  @JsonKey(ignore: true)
  _$$LeavePageReqImplCopyWith<_$LeavePageReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveReq _$LeaveReqFromJson(Map<String, dynamic> json) {
  return _LeaveReq.fromJson(json);
}

/// @nodoc
mixin _$LeaveReq {
  /// 请假类型
  String? get leaveType => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学生学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 学年学期编码
  String get yearTermCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveReqCopyWith<LeaveReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveReqCopyWith<$Res> {
  factory $LeaveReqCopyWith(LeaveReq value, $Res Function(LeaveReq) then) =
      _$LeaveReqCopyWithImpl<$Res, LeaveReq>;
  @useResult
  $Res call(
      {String? leaveType,
      String schoolCode,
      String studentCode,
      String yearTermCode});
}

/// @nodoc
class _$LeaveReqCopyWithImpl<$Res, $Val extends LeaveReq>
    implements $LeaveReqCopyWith<$Res> {
  _$LeaveReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveType = freezed,
    Object? schoolCode = null,
    Object? studentCode = null,
    Object? yearTermCode = null,
  }) {
    return _then(_value.copyWith(
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveReqImplCopyWith<$Res>
    implements $LeaveReqCopyWith<$Res> {
  factory _$$LeaveReqImplCopyWith(
          _$LeaveReqImpl value, $Res Function(_$LeaveReqImpl) then) =
      __$$LeaveReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? leaveType,
      String schoolCode,
      String studentCode,
      String yearTermCode});
}

/// @nodoc
class __$$LeaveReqImplCopyWithImpl<$Res>
    extends _$LeaveReqCopyWithImpl<$Res, _$LeaveReqImpl>
    implements _$$LeaveReqImplCopyWith<$Res> {
  __$$LeaveReqImplCopyWithImpl(
      _$LeaveReqImpl _value, $Res Function(_$LeaveReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaveType = freezed,
    Object? schoolCode = null,
    Object? studentCode = null,
    Object? yearTermCode = null,
  }) {
    return _then(_$LeaveReqImpl(
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveReqImpl extends _LeaveReq {
  const _$LeaveReqImpl(
      {this.leaveType,
      required this.schoolCode,
      required this.studentCode,
      required this.yearTermCode})
      : super._();

  factory _$LeaveReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveReqImplFromJson(json);

  /// 请假类型
  @override
  final String? leaveType;

  /// 学校编码
  @override
  final String schoolCode;

  /// 学生学号
  @override
  final String studentCode;

  /// 学年学期编码
  @override
  final String yearTermCode;

  @override
  String toString() {
    return 'LeaveReq(leaveType: $leaveType, schoolCode: $schoolCode, studentCode: $studentCode, yearTermCode: $yearTermCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveReqImpl &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, leaveType, schoolCode, studentCode, yearTermCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveReqImplCopyWith<_$LeaveReqImpl> get copyWith =>
      __$$LeaveReqImplCopyWithImpl<_$LeaveReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveReqImplToJson(
      this,
    );
  }
}

abstract class _LeaveReq extends LeaveReq {
  const factory _LeaveReq(
      {final String? leaveType,
      required final String schoolCode,
      required final String studentCode,
      required final String yearTermCode}) = _$LeaveReqImpl;
  const _LeaveReq._() : super._();

  factory _LeaveReq.fromJson(Map<String, dynamic> json) =
      _$LeaveReqImpl.fromJson;

  @override

  /// 请假类型
  String? get leaveType;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学生学号
  String get studentCode;
  @override

  /// 学年学期编码
  String get yearTermCode;
  @override
  @JsonKey(ignore: true)
  _$$LeaveReqImplCopyWith<_$LeaveReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveRequestModel _$LeaveRequestModelFromJson(Map<String, dynamic> json) {
  return _LeaveRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LeaveRequestModel {
  /// 请假单主键
  String get id => throw _privateConstructorUsedError;

  /// 请假单号
  String get leaveNo => throw _privateConstructorUsedError;

  /// 请假单状态
  @LeaveStatusJsonConverter()
  LeaveStatus get status => throw _privateConstructorUsedError;

  /// 请假类型
  String? get leaveType => throw _privateConstructorUsedError;

  /// 请假类型描述
  String? get leaveTypeName => throw _privateConstructorUsedError;

  /// 学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 学校名称
  String? get schoolName => throw _privateConstructorUsedError;

  /// 学生学号
  String? get studentCode => throw _privateConstructorUsedError;

  /// 学生名称
  String? get studentName => throw _privateConstructorUsedError;

  /// 学年学期编码
  String? get yearTermCode => throw _privateConstructorUsedError;

  /// 学年学期名称
  String? get yearTermName => throw _privateConstructorUsedError;

  /// 请假天数
  @String2IntJsonConverter()
  int get leaveNum => throw _privateConstructorUsedError;

  /// 请假开始日期
  @TimestampStringNullableJsonConverter()
  DateTime? get beginDate => throw _privateConstructorUsedError;

  /// 请假结束日期
  @TimestampStringNullableJsonConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// 请假单提交日期
  @TimestampStringNullableJsonConverter()
  DateTime? get createdDate => throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveRequestModelCopyWith<LeaveRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestModelCopyWith<$Res> {
  factory $LeaveRequestModelCopyWith(
          LeaveRequestModel value, $Res Function(LeaveRequestModel) then) =
      _$LeaveRequestModelCopyWithImpl<$Res, LeaveRequestModel>;
  @useResult
  $Res call(
      {String id,
      String leaveNo,
      @LeaveStatusJsonConverter() LeaveStatus status,
      String? leaveType,
      String? leaveTypeName,
      String? schoolCode,
      String? schoolName,
      String? studentCode,
      String? studentName,
      String? yearTermCode,
      String? yearTermName,
      @String2IntJsonConverter() int leaveNum,
      @TimestampStringNullableJsonConverter() DateTime? beginDate,
      @TimestampStringNullableJsonConverter() DateTime? endDate,
      @TimestampStringNullableJsonConverter() DateTime? createdDate,
      String remark});
}

/// @nodoc
class _$LeaveRequestModelCopyWithImpl<$Res, $Val extends LeaveRequestModel>
    implements $LeaveRequestModelCopyWith<$Res> {
  _$LeaveRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leaveNo = null,
    Object? status = null,
    Object? leaveType = freezed,
    Object? leaveTypeName = freezed,
    Object? schoolCode = freezed,
    Object? schoolName = freezed,
    Object? studentCode = freezed,
    Object? studentName = freezed,
    Object? yearTermCode = freezed,
    Object? yearTermName = freezed,
    Object? leaveNum = null,
    Object? beginDate = freezed,
    Object? endDate = freezed,
    Object? createdDate = freezed,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      leaveNo: null == leaveNo
          ? _value.leaveNo
          : leaveNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LeaveStatus,
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveTypeName: freezed == leaveTypeName
          ? _value.leaveTypeName
          : leaveTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermName: freezed == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveNum: null == leaveNum
          ? _value.leaveNum
          : leaveNum // ignore: cast_nullable_to_non_nullable
              as int,
      beginDate: freezed == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveRequestModelImplCopyWith<$Res>
    implements $LeaveRequestModelCopyWith<$Res> {
  factory _$$LeaveRequestModelImplCopyWith(_$LeaveRequestModelImpl value,
          $Res Function(_$LeaveRequestModelImpl) then) =
      __$$LeaveRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String leaveNo,
      @LeaveStatusJsonConverter() LeaveStatus status,
      String? leaveType,
      String? leaveTypeName,
      String? schoolCode,
      String? schoolName,
      String? studentCode,
      String? studentName,
      String? yearTermCode,
      String? yearTermName,
      @String2IntJsonConverter() int leaveNum,
      @TimestampStringNullableJsonConverter() DateTime? beginDate,
      @TimestampStringNullableJsonConverter() DateTime? endDate,
      @TimestampStringNullableJsonConverter() DateTime? createdDate,
      String remark});
}

/// @nodoc
class __$$LeaveRequestModelImplCopyWithImpl<$Res>
    extends _$LeaveRequestModelCopyWithImpl<$Res, _$LeaveRequestModelImpl>
    implements _$$LeaveRequestModelImplCopyWith<$Res> {
  __$$LeaveRequestModelImplCopyWithImpl(_$LeaveRequestModelImpl _value,
      $Res Function(_$LeaveRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? leaveNo = null,
    Object? status = null,
    Object? leaveType = freezed,
    Object? leaveTypeName = freezed,
    Object? schoolCode = freezed,
    Object? schoolName = freezed,
    Object? studentCode = freezed,
    Object? studentName = freezed,
    Object? yearTermCode = freezed,
    Object? yearTermName = freezed,
    Object? leaveNum = null,
    Object? beginDate = freezed,
    Object? endDate = freezed,
    Object? createdDate = freezed,
    Object? remark = null,
  }) {
    return _then(_$LeaveRequestModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      leaveNo: null == leaveNo
          ? _value.leaveNo
          : leaveNo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LeaveStatus,
      leaveType: freezed == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveTypeName: freezed == leaveTypeName
          ? _value.leaveTypeName
          : leaveTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermName: freezed == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String?,
      leaveNum: null == leaveNum
          ? _value.leaveNum
          : leaveNum // ignore: cast_nullable_to_non_nullable
              as int,
      beginDate: freezed == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRequestModelImpl extends _LeaveRequestModel {
  const _$LeaveRequestModelImpl(
      {required this.id,
      required this.leaveNo,
      @LeaveStatusJsonConverter() this.status = LeaveStatus.invalidate,
      this.leaveType,
      this.leaveTypeName,
      this.schoolCode,
      this.schoolName,
      this.studentCode,
      this.studentName,
      this.yearTermCode,
      this.yearTermName,
      @String2IntJsonConverter() this.leaveNum = 0,
      @TimestampStringNullableJsonConverter() this.beginDate,
      @TimestampStringNullableJsonConverter() this.endDate,
      @TimestampStringNullableJsonConverter() this.createdDate,
      this.remark = ''})
      : super._();

  factory _$LeaveRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRequestModelImplFromJson(json);

  /// 请假单主键
  @override
  final String id;

  /// 请假单号
  @override
  final String leaveNo;

  /// 请假单状态
  @override
  @JsonKey()
  @LeaveStatusJsonConverter()
  final LeaveStatus status;

  /// 请假类型
  @override
  final String? leaveType;

  /// 请假类型描述
  @override
  final String? leaveTypeName;

  /// 学校编码
  @override
  final String? schoolCode;

  /// 学校名称
  @override
  final String? schoolName;

  /// 学生学号
  @override
  final String? studentCode;

  /// 学生名称
  @override
  final String? studentName;

  /// 学年学期编码
  @override
  final String? yearTermCode;

  /// 学年学期名称
  @override
  final String? yearTermName;

  /// 请假天数
  @override
  @JsonKey()
  @String2IntJsonConverter()
  final int leaveNum;

  /// 请假开始日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? beginDate;

  /// 请假结束日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? endDate;

  /// 请假单提交日期
  @override
  @TimestampStringNullableJsonConverter()
  final DateTime? createdDate;

  /// 备注
  @override
  @JsonKey()
  final String remark;

  @override
  String toString() {
    return 'LeaveRequestModel(id: $id, leaveNo: $leaveNo, status: $status, leaveType: $leaveType, leaveTypeName: $leaveTypeName, schoolCode: $schoolCode, schoolName: $schoolName, studentCode: $studentCode, studentName: $studentName, yearTermCode: $yearTermCode, yearTermName: $yearTermName, leaveNum: $leaveNum, beginDate: $beginDate, endDate: $endDate, createdDate: $createdDate, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.leaveNo, leaveNo) || other.leaveNo == leaveNo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.leaveTypeName, leaveTypeName) ||
                other.leaveTypeName == leaveTypeName) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.yearTermName, yearTermName) ||
                other.yearTermName == yearTermName) &&
            (identical(other.leaveNum, leaveNum) ||
                other.leaveNum == leaveNum) &&
            (identical(other.beginDate, beginDate) ||
                other.beginDate == beginDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      leaveNo,
      status,
      leaveType,
      leaveTypeName,
      schoolCode,
      schoolName,
      studentCode,
      studentName,
      yearTermCode,
      yearTermName,
      leaveNum,
      beginDate,
      endDate,
      createdDate,
      remark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestModelImplCopyWith<_$LeaveRequestModelImpl> get copyWith =>
      __$$LeaveRequestModelImplCopyWithImpl<_$LeaveRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LeaveRequestModel extends LeaveRequestModel {
  const factory _LeaveRequestModel(
      {required final String id,
      required final String leaveNo,
      @LeaveStatusJsonConverter() final LeaveStatus status,
      final String? leaveType,
      final String? leaveTypeName,
      final String? schoolCode,
      final String? schoolName,
      final String? studentCode,
      final String? studentName,
      final String? yearTermCode,
      final String? yearTermName,
      @String2IntJsonConverter() final int leaveNum,
      @TimestampStringNullableJsonConverter() final DateTime? beginDate,
      @TimestampStringNullableJsonConverter() final DateTime? endDate,
      @TimestampStringNullableJsonConverter() final DateTime? createdDate,
      final String remark}) = _$LeaveRequestModelImpl;
  const _LeaveRequestModel._() : super._();

  factory _LeaveRequestModel.fromJson(Map<String, dynamic> json) =
      _$LeaveRequestModelImpl.fromJson;

  @override

  /// 请假单主键
  String get id;
  @override

  /// 请假单号
  String get leaveNo;
  @override

  /// 请假单状态
  @LeaveStatusJsonConverter()
  LeaveStatus get status;
  @override

  /// 请假类型
  String? get leaveType;
  @override

  /// 请假类型描述
  String? get leaveTypeName;
  @override

  /// 学校编码
  String? get schoolCode;
  @override

  /// 学校名称
  String? get schoolName;
  @override

  /// 学生学号
  String? get studentCode;
  @override

  /// 学生名称
  String? get studentName;
  @override

  /// 学年学期编码
  String? get yearTermCode;
  @override

  /// 学年学期名称
  String? get yearTermName;
  @override

  /// 请假天数
  @String2IntJsonConverter()
  int get leaveNum;
  @override

  /// 请假开始日期
  @TimestampStringNullableJsonConverter()
  DateTime? get beginDate;
  @override

  /// 请假结束日期
  @TimestampStringNullableJsonConverter()
  DateTime? get endDate;
  @override

  /// 请假单提交日期
  @TimestampStringNullableJsonConverter()
  DateTime? get createdDate;
  @override

  /// 备注
  String get remark;
  @override
  @JsonKey(ignore: true)
  _$$LeaveRequestModelImplCopyWith<_$LeaveRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveSubmitReq _$LeaveSubmitReqFromJson(Map<String, dynamic> json) {
  return _LeaveSubmitReq.fromJson(json);
}

/// @nodoc
mixin _$LeaveSubmitReq {
  /// 学生id
  int get studentId => throw _privateConstructorUsedError;

  /// 学生学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 请假天数
  int get leaveNum => throw _privateConstructorUsedError;

  /// 请假开始时间
  String get beginDate => throw _privateConstructorUsedError;

  /// 请假结束时间
  String get endDate => throw _privateConstructorUsedError;

  /// 真实开始时间
  String get realBeginDate => throw _privateConstructorUsedError;

  /// 真实结束时间
  String get realEndDate => throw _privateConstructorUsedError;

  /// 请假类型
  String get leaveType => throw _privateConstructorUsedError;

  /// 请假原因
  String get remark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveSubmitReqCopyWith<LeaveSubmitReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveSubmitReqCopyWith<$Res> {
  factory $LeaveSubmitReqCopyWith(
          LeaveSubmitReq value, $Res Function(LeaveSubmitReq) then) =
      _$LeaveSubmitReqCopyWithImpl<$Res, LeaveSubmitReq>;
  @useResult
  $Res call(
      {int studentId,
      String studentCode,
      int leaveNum,
      String beginDate,
      String endDate,
      String realBeginDate,
      String realEndDate,
      String leaveType,
      String remark});
}

/// @nodoc
class _$LeaveSubmitReqCopyWithImpl<$Res, $Val extends LeaveSubmitReq>
    implements $LeaveSubmitReqCopyWith<$Res> {
  _$LeaveSubmitReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentCode = null,
    Object? leaveNum = null,
    Object? beginDate = null,
    Object? endDate = null,
    Object? realBeginDate = null,
    Object? realEndDate = null,
    Object? leaveType = null,
    Object? remark = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      leaveNum: null == leaveNum
          ? _value.leaveNum
          : leaveNum // ignore: cast_nullable_to_non_nullable
              as int,
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      realBeginDate: null == realBeginDate
          ? _value.realBeginDate
          : realBeginDate // ignore: cast_nullable_to_non_nullable
              as String,
      realEndDate: null == realEndDate
          ? _value.realEndDate
          : realEndDate // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaveSubmitReqImplCopyWith<$Res>
    implements $LeaveSubmitReqCopyWith<$Res> {
  factory _$$LeaveSubmitReqImplCopyWith(_$LeaveSubmitReqImpl value,
          $Res Function(_$LeaveSubmitReqImpl) then) =
      __$$LeaveSubmitReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int studentId,
      String studentCode,
      int leaveNum,
      String beginDate,
      String endDate,
      String realBeginDate,
      String realEndDate,
      String leaveType,
      String remark});
}

/// @nodoc
class __$$LeaveSubmitReqImplCopyWithImpl<$Res>
    extends _$LeaveSubmitReqCopyWithImpl<$Res, _$LeaveSubmitReqImpl>
    implements _$$LeaveSubmitReqImplCopyWith<$Res> {
  __$$LeaveSubmitReqImplCopyWithImpl(
      _$LeaveSubmitReqImpl _value, $Res Function(_$LeaveSubmitReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? studentCode = null,
    Object? leaveNum = null,
    Object? beginDate = null,
    Object? endDate = null,
    Object? realBeginDate = null,
    Object? realEndDate = null,
    Object? leaveType = null,
    Object? remark = null,
  }) {
    return _then(_$LeaveSubmitReqImpl(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      leaveNum: null == leaveNum
          ? _value.leaveNum
          : leaveNum // ignore: cast_nullable_to_non_nullable
              as int,
      beginDate: null == beginDate
          ? _value.beginDate
          : beginDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      realBeginDate: null == realBeginDate
          ? _value.realBeginDate
          : realBeginDate // ignore: cast_nullable_to_non_nullable
              as String,
      realEndDate: null == realEndDate
          ? _value.realEndDate
          : realEndDate // ignore: cast_nullable_to_non_nullable
              as String,
      leaveType: null == leaveType
          ? _value.leaveType
          : leaveType // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveSubmitReqImpl extends _LeaveSubmitReq {
  const _$LeaveSubmitReqImpl(
      {required this.studentId,
      required this.studentCode,
      required this.leaveNum,
      required this.beginDate,
      required this.endDate,
      required this.realBeginDate,
      required this.realEndDate,
      required this.leaveType,
      required this.remark})
      : super._();

  factory _$LeaveSubmitReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveSubmitReqImplFromJson(json);

  /// 学生id
  @override
  final int studentId;

  /// 学生学号
  @override
  final String studentCode;

  /// 请假天数
  @override
  final int leaveNum;

  /// 请假开始时间
  @override
  final String beginDate;

  /// 请假结束时间
  @override
  final String endDate;

  /// 真实开始时间
  @override
  final String realBeginDate;

  /// 真实结束时间
  @override
  final String realEndDate;

  /// 请假类型
  @override
  final String leaveType;

  /// 请假原因
  @override
  final String remark;

  @override
  String toString() {
    return 'LeaveSubmitReq(studentId: $studentId, studentCode: $studentCode, leaveNum: $leaveNum, beginDate: $beginDate, endDate: $endDate, realBeginDate: $realBeginDate, realEndDate: $realEndDate, leaveType: $leaveType, remark: $remark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveSubmitReqImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.leaveNum, leaveNum) ||
                other.leaveNum == leaveNum) &&
            (identical(other.beginDate, beginDate) ||
                other.beginDate == beginDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.realBeginDate, realBeginDate) ||
                other.realBeginDate == realBeginDate) &&
            (identical(other.realEndDate, realEndDate) ||
                other.realEndDate == realEndDate) &&
            (identical(other.leaveType, leaveType) ||
                other.leaveType == leaveType) &&
            (identical(other.remark, remark) || other.remark == remark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, studentCode, leaveNum,
      beginDate, endDate, realBeginDate, realEndDate, leaveType, remark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveSubmitReqImplCopyWith<_$LeaveSubmitReqImpl> get copyWith =>
      __$$LeaveSubmitReqImplCopyWithImpl<_$LeaveSubmitReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveSubmitReqImplToJson(
      this,
    );
  }
}

abstract class _LeaveSubmitReq extends LeaveSubmitReq {
  const factory _LeaveSubmitReq(
      {required final int studentId,
      required final String studentCode,
      required final int leaveNum,
      required final String beginDate,
      required final String endDate,
      required final String realBeginDate,
      required final String realEndDate,
      required final String leaveType,
      required final String remark}) = _$LeaveSubmitReqImpl;
  const _LeaveSubmitReq._() : super._();

  factory _LeaveSubmitReq.fromJson(Map<String, dynamic> json) =
      _$LeaveSubmitReqImpl.fromJson;

  @override

  /// 学生id
  int get studentId;
  @override

  /// 学生学号
  String get studentCode;
  @override

  /// 请假天数
  int get leaveNum;
  @override

  /// 请假开始时间
  String get beginDate;
  @override

  /// 请假结束时间
  String get endDate;
  @override

  /// 真实开始时间
  String get realBeginDate;
  @override

  /// 真实结束时间
  String get realEndDate;
  @override

  /// 请假类型
  String get leaveType;
  @override

  /// 请假原因
  String get remark;
  @override
  @JsonKey(ignore: true)
  _$$LeaveSubmitReqImplCopyWith<_$LeaveSubmitReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
