// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillFilterReq _$BillFilterReqFromJson(Map<String, dynamic> json) {
  return _BillFilterReq.fromJson(json);
}

/// @nodoc
mixin _$BillFilterReq {
  /// 学生编码
  String get studentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillFilterReqCopyWith<BillFilterReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillFilterReqCopyWith<$Res> {
  factory $BillFilterReqCopyWith(
          BillFilterReq value, $Res Function(BillFilterReq) then) =
      _$BillFilterReqCopyWithImpl<$Res, BillFilterReq>;
  @useResult
  $Res call({String studentCode});
}

/// @nodoc
class _$BillFilterReqCopyWithImpl<$Res, $Val extends BillFilterReq>
    implements $BillFilterReqCopyWith<$Res> {
  _$BillFilterReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
  }) {
    return _then(_value.copyWith(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillFilterReqImplCopyWith<$Res>
    implements $BillFilterReqCopyWith<$Res> {
  factory _$$BillFilterReqImplCopyWith(
          _$BillFilterReqImpl value, $Res Function(_$BillFilterReqImpl) then) =
      __$$BillFilterReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studentCode});
}

/// @nodoc
class __$$BillFilterReqImplCopyWithImpl<$Res>
    extends _$BillFilterReqCopyWithImpl<$Res, _$BillFilterReqImpl>
    implements _$$BillFilterReqImplCopyWith<$Res> {
  __$$BillFilterReqImplCopyWithImpl(
      _$BillFilterReqImpl _value, $Res Function(_$BillFilterReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
  }) {
    return _then(_$BillFilterReqImpl(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillFilterReqImpl extends _BillFilterReq {
  const _$BillFilterReqImpl({required this.studentCode}) : super._();

  factory _$BillFilterReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillFilterReqImplFromJson(json);

  /// 学生编码
  @override
  final String studentCode;

  @override
  String toString() {
    return 'BillFilterReq(studentCode: $studentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillFilterReqImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillFilterReqImplCopyWith<_$BillFilterReqImpl> get copyWith =>
      __$$BillFilterReqImplCopyWithImpl<_$BillFilterReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillFilterReqImplToJson(
      this,
    );
  }
}

abstract class _BillFilterReq extends BillFilterReq {
  const factory _BillFilterReq({required final String studentCode}) =
      _$BillFilterReqImpl;
  const _BillFilterReq._() : super._();

  factory _BillFilterReq.fromJson(Map<String, dynamic> json) =
      _$BillFilterReqImpl.fromJson;

  @override

  /// 学生编码
  String get studentCode;
  @override
  @JsonKey(ignore: true)
  _$$BillFilterReqImplCopyWith<_$BillFilterReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillFilterModel _$BillFilterModelFromJson(Map<String, dynamic> json) {
  return _BillFilterModel.fromJson(json);
}

/// @nodoc
mixin _$BillFilterModel {
  /// 所选择园所
  FilterSchoolModel? get selectedSchool => throw _privateConstructorUsedError;

  /// 所选择学年学期
  FilterYearTermModel? get selectedYearTerm =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillFilterModelCopyWith<BillFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillFilterModelCopyWith<$Res> {
  factory $BillFilterModelCopyWith(
          BillFilterModel value, $Res Function(BillFilterModel) then) =
      _$BillFilterModelCopyWithImpl<$Res, BillFilterModel>;
  @useResult
  $Res call(
      {FilterSchoolModel? selectedSchool,
      FilterYearTermModel? selectedYearTerm});

  $FilterSchoolModelCopyWith<$Res>? get selectedSchool;
  $FilterYearTermModelCopyWith<$Res>? get selectedYearTerm;
}

/// @nodoc
class _$BillFilterModelCopyWithImpl<$Res, $Val extends BillFilterModel>
    implements $BillFilterModelCopyWith<$Res> {
  _$BillFilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSchool = freezed,
    Object? selectedYearTerm = freezed,
  }) {
    return _then(_value.copyWith(
      selectedSchool: freezed == selectedSchool
          ? _value.selectedSchool
          : selectedSchool // ignore: cast_nullable_to_non_nullable
              as FilterSchoolModel?,
      selectedYearTerm: freezed == selectedYearTerm
          ? _value.selectedYearTerm
          : selectedYearTerm // ignore: cast_nullable_to_non_nullable
              as FilterYearTermModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterSchoolModelCopyWith<$Res>? get selectedSchool {
    if (_value.selectedSchool == null) {
      return null;
    }

    return $FilterSchoolModelCopyWith<$Res>(_value.selectedSchool!, (value) {
      return _then(_value.copyWith(selectedSchool: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterYearTermModelCopyWith<$Res>? get selectedYearTerm {
    if (_value.selectedYearTerm == null) {
      return null;
    }

    return $FilterYearTermModelCopyWith<$Res>(_value.selectedYearTerm!,
        (value) {
      return _then(_value.copyWith(selectedYearTerm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillFilterModelImplCopyWith<$Res>
    implements $BillFilterModelCopyWith<$Res> {
  factory _$$BillFilterModelImplCopyWith(_$BillFilterModelImpl value,
          $Res Function(_$BillFilterModelImpl) then) =
      __$$BillFilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FilterSchoolModel? selectedSchool,
      FilterYearTermModel? selectedYearTerm});

  @override
  $FilterSchoolModelCopyWith<$Res>? get selectedSchool;
  @override
  $FilterYearTermModelCopyWith<$Res>? get selectedYearTerm;
}

/// @nodoc
class __$$BillFilterModelImplCopyWithImpl<$Res>
    extends _$BillFilterModelCopyWithImpl<$Res, _$BillFilterModelImpl>
    implements _$$BillFilterModelImplCopyWith<$Res> {
  __$$BillFilterModelImplCopyWithImpl(
      _$BillFilterModelImpl _value, $Res Function(_$BillFilterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSchool = freezed,
    Object? selectedYearTerm = freezed,
  }) {
    return _then(_$BillFilterModelImpl(
      selectedSchool: freezed == selectedSchool
          ? _value.selectedSchool
          : selectedSchool // ignore: cast_nullable_to_non_nullable
              as FilterSchoolModel?,
      selectedYearTerm: freezed == selectedYearTerm
          ? _value.selectedYearTerm
          : selectedYearTerm // ignore: cast_nullable_to_non_nullable
              as FilterYearTermModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillFilterModelImpl extends _BillFilterModel {
  const _$BillFilterModelImpl({this.selectedSchool, this.selectedYearTerm})
      : super._();

  factory _$BillFilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillFilterModelImplFromJson(json);

  /// 所选择园所
  @override
  final FilterSchoolModel? selectedSchool;

  /// 所选择学年学期
  @override
  final FilterYearTermModel? selectedYearTerm;

  @override
  String toString() {
    return 'BillFilterModel(selectedSchool: $selectedSchool, selectedYearTerm: $selectedYearTerm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillFilterModelImpl &&
            (identical(other.selectedSchool, selectedSchool) ||
                other.selectedSchool == selectedSchool) &&
            (identical(other.selectedYearTerm, selectedYearTerm) ||
                other.selectedYearTerm == selectedYearTerm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedSchool, selectedYearTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillFilterModelImplCopyWith<_$BillFilterModelImpl> get copyWith =>
      __$$BillFilterModelImplCopyWithImpl<_$BillFilterModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillFilterModelImplToJson(
      this,
    );
  }
}

abstract class _BillFilterModel extends BillFilterModel {
  const factory _BillFilterModel(
      {final FilterSchoolModel? selectedSchool,
      final FilterYearTermModel? selectedYearTerm}) = _$BillFilterModelImpl;
  const _BillFilterModel._() : super._();

  factory _BillFilterModel.fromJson(Map<String, dynamic> json) =
      _$BillFilterModelImpl.fromJson;

  @override

  /// 所选择园所
  FilterSchoolModel? get selectedSchool;
  @override

  /// 所选择学年学期
  FilterYearTermModel? get selectedYearTerm;
  @override
  @JsonKey(ignore: true)
  _$$BillFilterModelImplCopyWith<_$BillFilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillOtherParam _$BillOtherParamFromJson(Map<String, dynamic> json) {
  return _BillOtherParam.fromJson(json);
}

/// @nodoc
mixin _$BillOtherParam {
  /// 账单编号
  String get billStudentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillOtherParamCopyWith<BillOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillOtherParamCopyWith<$Res> {
  factory $BillOtherParamCopyWith(
          BillOtherParam value, $Res Function(BillOtherParam) then) =
      _$BillOtherParamCopyWithImpl<$Res, BillOtherParam>;
  @useResult
  $Res call({String billStudentCode});
}

/// @nodoc
class _$BillOtherParamCopyWithImpl<$Res, $Val extends BillOtherParam>
    implements $BillOtherParamCopyWith<$Res> {
  _$BillOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billStudentCode = null,
  }) {
    return _then(_value.copyWith(
      billStudentCode: null == billStudentCode
          ? _value.billStudentCode
          : billStudentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillOtherParamImplCopyWith<$Res>
    implements $BillOtherParamCopyWith<$Res> {
  factory _$$BillOtherParamImplCopyWith(_$BillOtherParamImpl value,
          $Res Function(_$BillOtherParamImpl) then) =
      __$$BillOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String billStudentCode});
}

/// @nodoc
class __$$BillOtherParamImplCopyWithImpl<$Res>
    extends _$BillOtherParamCopyWithImpl<$Res, _$BillOtherParamImpl>
    implements _$$BillOtherParamImplCopyWith<$Res> {
  __$$BillOtherParamImplCopyWithImpl(
      _$BillOtherParamImpl _value, $Res Function(_$BillOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billStudentCode = null,
  }) {
    return _then(_$BillOtherParamImpl(
      billStudentCode: null == billStudentCode
          ? _value.billStudentCode
          : billStudentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillOtherParamImpl extends _BillOtherParam {
  const _$BillOtherParamImpl({this.billStudentCode = ''}) : super._();

  factory _$BillOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillOtherParamImplFromJson(json);

  /// 账单编号
  @override
  @JsonKey()
  final String billStudentCode;

  @override
  String toString() {
    return 'BillOtherParam(billStudentCode: $billStudentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillOtherParamImpl &&
            (identical(other.billStudentCode, billStudentCode) ||
                other.billStudentCode == billStudentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, billStudentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillOtherParamImplCopyWith<_$BillOtherParamImpl> get copyWith =>
      __$$BillOtherParamImplCopyWithImpl<_$BillOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillOtherParamImplToJson(
      this,
    );
  }
}

abstract class _BillOtherParam extends BillOtherParam {
  const factory _BillOtherParam({final String billStudentCode}) =
      _$BillOtherParamImpl;
  const _BillOtherParam._() : super._();

  factory _BillOtherParam.fromJson(Map<String, dynamic> json) =
      _$BillOtherParamImpl.fromJson;

  @override

  /// 账单编号
  String get billStudentCode;
  @override
  @JsonKey(ignore: true)
  _$$BillOtherParamImplCopyWith<_$BillOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrepareOrderReq _$PrepareOrderReqFromJson(Map<String, dynamic> json) {
  return _PrepareOrderReq.fromJson(json);
}

/// @nodoc
mixin _$PrepareOrderReq {
  /// 支付方式
  String? get accountPaymentId => throw _privateConstructorUsedError;

  /// 账单编号
  String? get billStudentCode => throw _privateConstructorUsedError;

  /// 缴费金额
  double? get orderAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrepareOrderReqCopyWith<PrepareOrderReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrepareOrderReqCopyWith<$Res> {
  factory $PrepareOrderReqCopyWith(
          PrepareOrderReq value, $Res Function(PrepareOrderReq) then) =
      _$PrepareOrderReqCopyWithImpl<$Res, PrepareOrderReq>;
  @useResult
  $Res call(
      {String? accountPaymentId, String? billStudentCode, double? orderAmount});
}

/// @nodoc
class _$PrepareOrderReqCopyWithImpl<$Res, $Val extends PrepareOrderReq>
    implements $PrepareOrderReqCopyWith<$Res> {
  _$PrepareOrderReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountPaymentId = freezed,
    Object? billStudentCode = freezed,
    Object? orderAmount = freezed,
  }) {
    return _then(_value.copyWith(
      accountPaymentId: freezed == accountPaymentId
          ? _value.accountPaymentId
          : accountPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      billStudentCode: freezed == billStudentCode
          ? _value.billStudentCode
          : billStudentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderAmount: freezed == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrepareOrderReqImplCopyWith<$Res>
    implements $PrepareOrderReqCopyWith<$Res> {
  factory _$$PrepareOrderReqImplCopyWith(_$PrepareOrderReqImpl value,
          $Res Function(_$PrepareOrderReqImpl) then) =
      __$$PrepareOrderReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accountPaymentId, String? billStudentCode, double? orderAmount});
}

/// @nodoc
class __$$PrepareOrderReqImplCopyWithImpl<$Res>
    extends _$PrepareOrderReqCopyWithImpl<$Res, _$PrepareOrderReqImpl>
    implements _$$PrepareOrderReqImplCopyWith<$Res> {
  __$$PrepareOrderReqImplCopyWithImpl(
      _$PrepareOrderReqImpl _value, $Res Function(_$PrepareOrderReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountPaymentId = freezed,
    Object? billStudentCode = freezed,
    Object? orderAmount = freezed,
  }) {
    return _then(_$PrepareOrderReqImpl(
      accountPaymentId: freezed == accountPaymentId
          ? _value.accountPaymentId
          : accountPaymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      billStudentCode: freezed == billStudentCode
          ? _value.billStudentCode
          : billStudentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderAmount: freezed == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrepareOrderReqImpl extends _PrepareOrderReq {
  const _$PrepareOrderReqImpl(
      {this.accountPaymentId, this.billStudentCode, this.orderAmount})
      : super._();

  factory _$PrepareOrderReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrepareOrderReqImplFromJson(json);

  /// 支付方式
  @override
  final String? accountPaymentId;

  /// 账单编号
  @override
  final String? billStudentCode;

  /// 缴费金额
  @override
  final double? orderAmount;

  @override
  String toString() {
    return 'PrepareOrderReq(accountPaymentId: $accountPaymentId, billStudentCode: $billStudentCode, orderAmount: $orderAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrepareOrderReqImpl &&
            (identical(other.accountPaymentId, accountPaymentId) ||
                other.accountPaymentId == accountPaymentId) &&
            (identical(other.billStudentCode, billStudentCode) ||
                other.billStudentCode == billStudentCode) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountPaymentId, billStudentCode, orderAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrepareOrderReqImplCopyWith<_$PrepareOrderReqImpl> get copyWith =>
      __$$PrepareOrderReqImplCopyWithImpl<_$PrepareOrderReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrepareOrderReqImplToJson(
      this,
    );
  }
}

abstract class _PrepareOrderReq extends PrepareOrderReq {
  const factory _PrepareOrderReq(
      {final String? accountPaymentId,
      final String? billStudentCode,
      final double? orderAmount}) = _$PrepareOrderReqImpl;
  const _PrepareOrderReq._() : super._();

  factory _PrepareOrderReq.fromJson(Map<String, dynamic> json) =
      _$PrepareOrderReqImpl.fromJson;

  @override

  /// 支付方式
  String? get accountPaymentId;
  @override

  /// 账单编号
  String? get billStudentCode;
  @override

  /// 缴费金额
  double? get orderAmount;
  @override
  @JsonKey(ignore: true)
  _$$PrepareOrderReqImplCopyWith<_$PrepareOrderReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillReq _$BillReqFromJson(Map<String, dynamic> json) {
  return _BillReq.fromJson(json);
}

/// @nodoc
mixin _$BillReq {
  /// 学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 学年学期编码
  String? get yearTermCode => throw _privateConstructorUsedError;

  /// 账单状态
  BillStatus? get status => throw _privateConstructorUsedError;

  /// 学生编码
  String get studentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillReqCopyWith<BillReq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillReqCopyWith<$Res> {
  factory $BillReqCopyWith(BillReq value, $Res Function(BillReq) then) =
      _$BillReqCopyWithImpl<$Res, BillReq>;
  @useResult
  $Res call(
      {String? schoolCode,
      String? yearTermCode,
      BillStatus? status,
      String studentCode});
}

/// @nodoc
class _$BillReqCopyWithImpl<$Res, $Val extends BillReq>
    implements $BillReqCopyWith<$Res> {
  _$BillReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = freezed,
    Object? yearTermCode = freezed,
    Object? status = freezed,
    Object? studentCode = null,
  }) {
    return _then(_value.copyWith(
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillStatus?,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillReqImplCopyWith<$Res> implements $BillReqCopyWith<$Res> {
  factory _$$BillReqImplCopyWith(
          _$BillReqImpl value, $Res Function(_$BillReqImpl) then) =
      __$$BillReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? schoolCode,
      String? yearTermCode,
      BillStatus? status,
      String studentCode});
}

/// @nodoc
class __$$BillReqImplCopyWithImpl<$Res>
    extends _$BillReqCopyWithImpl<$Res, _$BillReqImpl>
    implements _$$BillReqImplCopyWith<$Res> {
  __$$BillReqImplCopyWithImpl(
      _$BillReqImpl _value, $Res Function(_$BillReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = freezed,
    Object? yearTermCode = freezed,
    Object? status = freezed,
    Object? studentCode = null,
  }) {
    return _then(_$BillReqImpl(
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      yearTermCode: freezed == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillStatus?,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillReqImpl extends _BillReq {
  const _$BillReqImpl(
      {this.schoolCode,
      this.yearTermCode,
      this.status,
      required this.studentCode})
      : super._();

  factory _$BillReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillReqImplFromJson(json);

  /// 学校编码
  @override
  final String? schoolCode;

  /// 学年学期编码
  @override
  final String? yearTermCode;

  /// 账单状态
  @override
  final BillStatus? status;

  /// 学生编码
  @override
  final String studentCode;

  @override
  String toString() {
    return 'BillReq(schoolCode: $schoolCode, yearTermCode: $yearTermCode, status: $status, studentCode: $studentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillReqImpl &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, schoolCode, yearTermCode, status, studentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillReqImplCopyWith<_$BillReqImpl> get copyWith =>
      __$$BillReqImplCopyWithImpl<_$BillReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillReqImplToJson(
      this,
    );
  }
}

abstract class _BillReq extends BillReq {
  const factory _BillReq(
      {final String? schoolCode,
      final String? yearTermCode,
      final BillStatus? status,
      required final String studentCode}) = _$BillReqImpl;
  const _BillReq._() : super._();

  factory _BillReq.fromJson(Map<String, dynamic> json) = _$BillReqImpl.fromJson;

  @override

  /// 学校编码
  String? get schoolCode;
  @override

  /// 学年学期编码
  String? get yearTermCode;
  @override

  /// 账单状态
  BillStatus? get status;
  @override

  /// 学生编码
  String get studentCode;
  @override
  @JsonKey(ignore: true)
  _$$BillReqImplCopyWith<_$BillReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrepareOrderModel _$PrepareOrderModelFromJson(Map<String, dynamic> json) {
  return _PrepareOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PrepareOrderModel {
  /// 账号名
  String get accountName => throw _privateConstructorUsedError;

  /// 银行账号
  String get bankAccountNo => throw _privateConstructorUsedError;

  /// 银行编码
  String get bankCode => throw _privateConstructorUsedError;

  /// 银行名称
  String get bankName => throw _privateConstructorUsedError;

  /// 账单编号
  String get billStudentCode => throw _privateConstructorUsedError;

  /// 分支行名称
  String get branchBankName => throw _privateConstructorUsedError;

  /// 是否是线上交易
  @String2BoolJsonConverter()
  bool get isOnline => throw _privateConstructorUsedError;

  /// 订单金额
  @String2DoubleJsonConverter()
  double get orderAmount => throw _privateConstructorUsedError;

  /// 预下单会话id(拿这个ID跳转小程序)
  @JsonKey(name: 'orderSeessionId')
  String get orderSessionId => throw _privateConstructorUsedError;

  /// 付款方式编码
  String get paymentTypeCode => throw _privateConstructorUsedError;

  /// 付款方式名称
  String get paymentTypeNameCn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrepareOrderModelCopyWith<PrepareOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrepareOrderModelCopyWith<$Res> {
  factory $PrepareOrderModelCopyWith(
          PrepareOrderModel value, $Res Function(PrepareOrderModel) then) =
      _$PrepareOrderModelCopyWithImpl<$Res, PrepareOrderModel>;
  @useResult
  $Res call(
      {String accountName,
      String bankAccountNo,
      String bankCode,
      String bankName,
      String billStudentCode,
      String branchBankName,
      @String2BoolJsonConverter() bool isOnline,
      @String2DoubleJsonConverter() double orderAmount,
      @JsonKey(name: 'orderSeessionId') String orderSessionId,
      String paymentTypeCode,
      String paymentTypeNameCn});
}

/// @nodoc
class _$PrepareOrderModelCopyWithImpl<$Res, $Val extends PrepareOrderModel>
    implements $PrepareOrderModelCopyWith<$Res> {
  _$PrepareOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? bankAccountNo = null,
    Object? bankCode = null,
    Object? bankName = null,
    Object? billStudentCode = null,
    Object? branchBankName = null,
    Object? isOnline = null,
    Object? orderAmount = null,
    Object? orderSessionId = null,
    Object? paymentTypeCode = null,
    Object? paymentTypeNameCn = null,
  }) {
    return _then(_value.copyWith(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountNo: null == bankAccountNo
          ? _value.bankAccountNo
          : bankAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      billStudentCode: null == billStudentCode
          ? _value.billStudentCode
          : billStudentCode // ignore: cast_nullable_to_non_nullable
              as String,
      branchBankName: null == branchBankName
          ? _value.branchBankName
          : branchBankName // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderSessionId: null == orderSessionId
          ? _value.orderSessionId
          : orderSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeCode: null == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeNameCn: null == paymentTypeNameCn
          ? _value.paymentTypeNameCn
          : paymentTypeNameCn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrepareOrderModelImplCopyWith<$Res>
    implements $PrepareOrderModelCopyWith<$Res> {
  factory _$$PrepareOrderModelImplCopyWith(_$PrepareOrderModelImpl value,
          $Res Function(_$PrepareOrderModelImpl) then) =
      __$$PrepareOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accountName,
      String bankAccountNo,
      String bankCode,
      String bankName,
      String billStudentCode,
      String branchBankName,
      @String2BoolJsonConverter() bool isOnline,
      @String2DoubleJsonConverter() double orderAmount,
      @JsonKey(name: 'orderSeessionId') String orderSessionId,
      String paymentTypeCode,
      String paymentTypeNameCn});
}

/// @nodoc
class __$$PrepareOrderModelImplCopyWithImpl<$Res>
    extends _$PrepareOrderModelCopyWithImpl<$Res, _$PrepareOrderModelImpl>
    implements _$$PrepareOrderModelImplCopyWith<$Res> {
  __$$PrepareOrderModelImplCopyWithImpl(_$PrepareOrderModelImpl _value,
      $Res Function(_$PrepareOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountName = null,
    Object? bankAccountNo = null,
    Object? bankCode = null,
    Object? bankName = null,
    Object? billStudentCode = null,
    Object? branchBankName = null,
    Object? isOnline = null,
    Object? orderAmount = null,
    Object? orderSessionId = null,
    Object? paymentTypeCode = null,
    Object? paymentTypeNameCn = null,
  }) {
    return _then(_$PrepareOrderModelImpl(
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountNo: null == bankAccountNo
          ? _value.bankAccountNo
          : bankAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      billStudentCode: null == billStudentCode
          ? _value.billStudentCode
          : billStudentCode // ignore: cast_nullable_to_non_nullable
              as String,
      branchBankName: null == branchBankName
          ? _value.branchBankName
          : branchBankName // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      orderSessionId: null == orderSessionId
          ? _value.orderSessionId
          : orderSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeCode: null == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeNameCn: null == paymentTypeNameCn
          ? _value.paymentTypeNameCn
          : paymentTypeNameCn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrepareOrderModelImpl extends _PrepareOrderModel {
  const _$PrepareOrderModelImpl(
      {this.accountName = '',
      this.bankAccountNo = '',
      this.bankCode = '',
      this.bankName = '',
      this.billStudentCode = '',
      this.branchBankName = '',
      @String2BoolJsonConverter() this.isOnline = false,
      @String2DoubleJsonConverter() this.orderAmount = 0,
      @JsonKey(name: 'orderSeessionId') this.orderSessionId = '',
      this.paymentTypeCode = '',
      this.paymentTypeNameCn = ''})
      : super._();

  factory _$PrepareOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrepareOrderModelImplFromJson(json);

  /// 账号名
  @override
  @JsonKey()
  final String accountName;

  /// 银行账号
  @override
  @JsonKey()
  final String bankAccountNo;

  /// 银行编码
  @override
  @JsonKey()
  final String bankCode;

  /// 银行名称
  @override
  @JsonKey()
  final String bankName;

  /// 账单编号
  @override
  @JsonKey()
  final String billStudentCode;

  /// 分支行名称
  @override
  @JsonKey()
  final String branchBankName;

  /// 是否是线上交易
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isOnline;

  /// 订单金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double orderAmount;

  /// 预下单会话id(拿这个ID跳转小程序)
  @override
  @JsonKey(name: 'orderSeessionId')
  final String orderSessionId;

  /// 付款方式编码
  @override
  @JsonKey()
  final String paymentTypeCode;

  /// 付款方式名称
  @override
  @JsonKey()
  final String paymentTypeNameCn;

  @override
  String toString() {
    return 'PrepareOrderModel(accountName: $accountName, bankAccountNo: $bankAccountNo, bankCode: $bankCode, bankName: $bankName, billStudentCode: $billStudentCode, branchBankName: $branchBankName, isOnline: $isOnline, orderAmount: $orderAmount, orderSessionId: $orderSessionId, paymentTypeCode: $paymentTypeCode, paymentTypeNameCn: $paymentTypeNameCn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrepareOrderModelImpl &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.bankAccountNo, bankAccountNo) ||
                other.bankAccountNo == bankAccountNo) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.billStudentCode, billStudentCode) ||
                other.billStudentCode == billStudentCode) &&
            (identical(other.branchBankName, branchBankName) ||
                other.branchBankName == branchBankName) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.orderSessionId, orderSessionId) ||
                other.orderSessionId == orderSessionId) &&
            (identical(other.paymentTypeCode, paymentTypeCode) ||
                other.paymentTypeCode == paymentTypeCode) &&
            (identical(other.paymentTypeNameCn, paymentTypeNameCn) ||
                other.paymentTypeNameCn == paymentTypeNameCn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accountName,
      bankAccountNo,
      bankCode,
      bankName,
      billStudentCode,
      branchBankName,
      isOnline,
      orderAmount,
      orderSessionId,
      paymentTypeCode,
      paymentTypeNameCn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrepareOrderModelImplCopyWith<_$PrepareOrderModelImpl> get copyWith =>
      __$$PrepareOrderModelImplCopyWithImpl<_$PrepareOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrepareOrderModelImplToJson(
      this,
    );
  }
}

abstract class _PrepareOrderModel extends PrepareOrderModel {
  const factory _PrepareOrderModel(
      {final String accountName,
      final String bankAccountNo,
      final String bankCode,
      final String bankName,
      final String billStudentCode,
      final String branchBankName,
      @String2BoolJsonConverter() final bool isOnline,
      @String2DoubleJsonConverter() final double orderAmount,
      @JsonKey(name: 'orderSeessionId') final String orderSessionId,
      final String paymentTypeCode,
      final String paymentTypeNameCn}) = _$PrepareOrderModelImpl;
  const _PrepareOrderModel._() : super._();

  factory _PrepareOrderModel.fromJson(Map<String, dynamic> json) =
      _$PrepareOrderModelImpl.fromJson;

  @override

  /// 账号名
  String get accountName;
  @override

  /// 银行账号
  String get bankAccountNo;
  @override

  /// 银行编码
  String get bankCode;
  @override

  /// 银行名称
  String get bankName;
  @override

  /// 账单编号
  String get billStudentCode;
  @override

  /// 分支行名称
  String get branchBankName;
  @override

  /// 是否是线上交易
  @String2BoolJsonConverter()
  bool get isOnline;
  @override

  /// 订单金额
  @String2DoubleJsonConverter()
  double get orderAmount;
  @override

  /// 预下单会话id(拿这个ID跳转小程序)
  @JsonKey(name: 'orderSeessionId')
  String get orderSessionId;
  @override

  /// 付款方式编码
  String get paymentTypeCode;
  @override

  /// 付款方式名称
  String get paymentTypeNameCn;
  @override
  @JsonKey(ignore: true)
  _$$PrepareOrderModelImplCopyWith<_$PrepareOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillModel _$BillModelFromJson(Map<String, dynamic> json) {
  return _BillModel.fromJson(json);
}

/// @nodoc
mixin _$BillModel {
  /// 学生主键
  @String2IntNullableJsonConverter()
  int? get studentId => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学校名称
  String get schoolName => throw _privateConstructorUsedError;

  /// 账单编号
  @JsonKey(name: 'billStudentCode')
  String? get billCode => throw _privateConstructorUsedError;

  /// 学生编码
  String get studentCode => throw _privateConstructorUsedError;

  /// 学生姓名
  String get studentName => throw _privateConstructorUsedError;

  /// 学年学期编码
  String get yearTermCode => throw _privateConstructorUsedError;

  /// 学年学期
  String get yearTermName => throw _privateConstructorUsedError;

  /// 学年学期英文名称
  String get yearTermEngName => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 学段名称
  String get phaseName => throw _privateConstructorUsedError;

  /// 学段英文名称
  String get phaseEngName => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 课程名称
  String get courseName => throw _privateConstructorUsedError;

  /// 课程英文名称
  String get courseEngName => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 年级名称
  String get gradeName => throw _privateConstructorUsedError;

  /// 年级英文名称
  String get gradeEngName => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 班级名称
  String get className => throw _privateConstructorUsedError;

  /// 班级英文名称
  String get classEngName => throw _privateConstructorUsedError;

  /// 应付(微信实际支付)
  @String2DoubleJsonConverter()
  double get payAmount => throw _privateConstructorUsedError;

  /// 费用合计
  @String2DoubleJsonConverter()
  double get totalCost => throw _privateConstructorUsedError;

  /// 优惠合计
  @String2DoubleJsonConverter()
  double get benefitCost => throw _privateConstructorUsedError;

  /// 账单合计
  @String2DoubleJsonConverter()
  double get billCost => throw _privateConstructorUsedError;

  /// 已缴合计
  @String2DoubleJsonConverter()
  double get paidCost => throw _privateConstructorUsedError;

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get walletCost => throw _privateConstructorUsedError;

  /// 特殊折扣
  @String2DoubleJsonConverter()
  double get specialCost => throw _privateConstructorUsedError;

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get deductionCost => throw _privateConstructorUsedError;

  /// 余额抵扣
  @String2DoubleJsonConverter()
  double get balanceCost => throw _privateConstructorUsedError;

  /// 退款金额
  @String2DoubleJsonConverter()
  double get refundCost => throw _privateConstructorUsedError;

  /// 学期应收金额
  @String2DoubleJsonConverter()
  double get termPayableCost => throw _privateConstructorUsedError;

  /// 学期优惠金额
  @String2DoubleJsonConverter()
  double get termBenefitCost => throw _privateConstructorUsedError;

  /// 欠缴金额
  @String2DoubleJsonConverter()
  double get owePaidCost => throw _privateConstructorUsedError;

  /// 欠费金额
  @String2DoubleJsonConverter()
  double get oweCost => throw _privateConstructorUsedError;

  /// 账单状态
  BillStatus get status => throw _privateConstructorUsedError;

  /// 账单状态中文名称
  String get statusName => throw _privateConstructorUsedError;

  /// 账单状态英文名称
  String get statusEngName => throw _privateConstructorUsedError;

  /// 账单类别(需要对应字典)
  String? get billCategory => throw _privateConstructorUsedError;

  /// 账单类别中文名称
  String get billCategoryName => throw _privateConstructorUsedError;

  /// 账单类别英文名称
  String get billCategoryEngName => throw _privateConstructorUsedError;

  /// 创建日期
  @StringTimestampNullableJsonConverter()
  DateTime? get createdDate => throw _privateConstructorUsedError;

  /// 是否异常
  @String2BoolJsonConverter()
  bool get isAbnormal => throw _privateConstructorUsedError;

  /// 是否预升账单
  @String2BoolJsonConverter()
  bool get isPreUpdate => throw _privateConstructorUsedError;

  /// 是否关闭
  @String2BoolJsonConverter()
  bool get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillModelCopyWith<BillModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillModelCopyWith<$Res> {
  factory $BillModelCopyWith(BillModel value, $Res Function(BillModel) then) =
      _$BillModelCopyWithImpl<$Res, BillModel>;
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? studentId,
      String schoolCode,
      String schoolName,
      @JsonKey(name: 'billStudentCode') String? billCode,
      String studentCode,
      String studentName,
      String yearTermCode,
      String yearTermName,
      String yearTermEngName,
      String phaseCode,
      String phaseName,
      String phaseEngName,
      String courseCode,
      String courseName,
      String courseEngName,
      String gradeCode,
      String gradeName,
      String gradeEngName,
      String classCode,
      String className,
      String classEngName,
      @String2DoubleJsonConverter() double payAmount,
      @String2DoubleJsonConverter() double totalCost,
      @String2DoubleJsonConverter() double benefitCost,
      @String2DoubleJsonConverter() double billCost,
      @String2DoubleJsonConverter() double paidCost,
      @String2DoubleJsonConverter() double walletCost,
      @String2DoubleJsonConverter() double specialCost,
      @String2DoubleJsonConverter() double deductionCost,
      @String2DoubleJsonConverter() double balanceCost,
      @String2DoubleJsonConverter() double refundCost,
      @String2DoubleJsonConverter() double termPayableCost,
      @String2DoubleJsonConverter() double termBenefitCost,
      @String2DoubleJsonConverter() double owePaidCost,
      @String2DoubleJsonConverter() double oweCost,
      BillStatus status,
      String statusName,
      String statusEngName,
      String? billCategory,
      String billCategoryName,
      String billCategoryEngName,
      @StringTimestampNullableJsonConverter() DateTime? createdDate,
      @String2BoolJsonConverter() bool isAbnormal,
      @String2BoolJsonConverter() bool isPreUpdate,
      @String2BoolJsonConverter() bool isClosed});
}

/// @nodoc
class _$BillModelCopyWithImpl<$Res, $Val extends BillModel>
    implements $BillModelCopyWith<$Res> {
  _$BillModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? schoolCode = null,
    Object? schoolName = null,
    Object? billCode = freezed,
    Object? studentCode = null,
    Object? studentName = null,
    Object? yearTermCode = null,
    Object? yearTermName = null,
    Object? yearTermEngName = null,
    Object? phaseCode = null,
    Object? phaseName = null,
    Object? phaseEngName = null,
    Object? courseCode = null,
    Object? courseName = null,
    Object? courseEngName = null,
    Object? gradeCode = null,
    Object? gradeName = null,
    Object? gradeEngName = null,
    Object? classCode = null,
    Object? className = null,
    Object? classEngName = null,
    Object? payAmount = null,
    Object? totalCost = null,
    Object? benefitCost = null,
    Object? billCost = null,
    Object? paidCost = null,
    Object? walletCost = null,
    Object? specialCost = null,
    Object? deductionCost = null,
    Object? balanceCost = null,
    Object? refundCost = null,
    Object? termPayableCost = null,
    Object? termBenefitCost = null,
    Object? owePaidCost = null,
    Object? oweCost = null,
    Object? status = null,
    Object? statusName = null,
    Object? statusEngName = null,
    Object? billCategory = freezed,
    Object? billCategoryName = null,
    Object? billCategoryEngName = null,
    Object? createdDate = freezed,
    Object? isAbnormal = null,
    Object? isPreUpdate = null,
    Object? isClosed = null,
  }) {
    return _then(_value.copyWith(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      billCode: freezed == billCode
          ? _value.billCode
          : billCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermName: null == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermEngName: null == yearTermEngName
          ? _value.yearTermEngName
          : yearTermEngName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseEngName: null == phaseEngName
          ? _value.phaseEngName
          : phaseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseEngName: null == courseEngName
          ? _value.courseEngName
          : courseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeEngName: null == gradeEngName
          ? _value.gradeEngName
          : gradeEngName // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classEngName: null == classEngName
          ? _value.classEngName
          : classEngName // ignore: cast_nullable_to_non_nullable
              as String,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      benefitCost: null == benefitCost
          ? _value.benefitCost
          : benefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      billCost: null == billCost
          ? _value.billCost
          : billCost // ignore: cast_nullable_to_non_nullable
              as double,
      paidCost: null == paidCost
          ? _value.paidCost
          : paidCost // ignore: cast_nullable_to_non_nullable
              as double,
      walletCost: null == walletCost
          ? _value.walletCost
          : walletCost // ignore: cast_nullable_to_non_nullable
              as double,
      specialCost: null == specialCost
          ? _value.specialCost
          : specialCost // ignore: cast_nullable_to_non_nullable
              as double,
      deductionCost: null == deductionCost
          ? _value.deductionCost
          : deductionCost // ignore: cast_nullable_to_non_nullable
              as double,
      balanceCost: null == balanceCost
          ? _value.balanceCost
          : balanceCost // ignore: cast_nullable_to_non_nullable
              as double,
      refundCost: null == refundCost
          ? _value.refundCost
          : refundCost // ignore: cast_nullable_to_non_nullable
              as double,
      termPayableCost: null == termPayableCost
          ? _value.termPayableCost
          : termPayableCost // ignore: cast_nullable_to_non_nullable
              as double,
      termBenefitCost: null == termBenefitCost
          ? _value.termBenefitCost
          : termBenefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      owePaidCost: null == owePaidCost
          ? _value.owePaidCost
          : owePaidCost // ignore: cast_nullable_to_non_nullable
              as double,
      oweCost: null == oweCost
          ? _value.oweCost
          : oweCost // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillStatus,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      statusEngName: null == statusEngName
          ? _value.statusEngName
          : statusEngName // ignore: cast_nullable_to_non_nullable
              as String,
      billCategory: freezed == billCategory
          ? _value.billCategory
          : billCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      billCategoryName: null == billCategoryName
          ? _value.billCategoryName
          : billCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      billCategoryEngName: null == billCategoryEngName
          ? _value.billCategoryEngName
          : billCategoryEngName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAbnormal: null == isAbnormal
          ? _value.isAbnormal
          : isAbnormal // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreUpdate: null == isPreUpdate
          ? _value.isPreUpdate
          : isPreUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillModelImplCopyWith<$Res>
    implements $BillModelCopyWith<$Res> {
  factory _$$BillModelImplCopyWith(
          _$BillModelImpl value, $Res Function(_$BillModelImpl) then) =
      __$$BillModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? studentId,
      String schoolCode,
      String schoolName,
      @JsonKey(name: 'billStudentCode') String? billCode,
      String studentCode,
      String studentName,
      String yearTermCode,
      String yearTermName,
      String yearTermEngName,
      String phaseCode,
      String phaseName,
      String phaseEngName,
      String courseCode,
      String courseName,
      String courseEngName,
      String gradeCode,
      String gradeName,
      String gradeEngName,
      String classCode,
      String className,
      String classEngName,
      @String2DoubleJsonConverter() double payAmount,
      @String2DoubleJsonConverter() double totalCost,
      @String2DoubleJsonConverter() double benefitCost,
      @String2DoubleJsonConverter() double billCost,
      @String2DoubleJsonConverter() double paidCost,
      @String2DoubleJsonConverter() double walletCost,
      @String2DoubleJsonConverter() double specialCost,
      @String2DoubleJsonConverter() double deductionCost,
      @String2DoubleJsonConverter() double balanceCost,
      @String2DoubleJsonConverter() double refundCost,
      @String2DoubleJsonConverter() double termPayableCost,
      @String2DoubleJsonConverter() double termBenefitCost,
      @String2DoubleJsonConverter() double owePaidCost,
      @String2DoubleJsonConverter() double oweCost,
      BillStatus status,
      String statusName,
      String statusEngName,
      String? billCategory,
      String billCategoryName,
      String billCategoryEngName,
      @StringTimestampNullableJsonConverter() DateTime? createdDate,
      @String2BoolJsonConverter() bool isAbnormal,
      @String2BoolJsonConverter() bool isPreUpdate,
      @String2BoolJsonConverter() bool isClosed});
}

/// @nodoc
class __$$BillModelImplCopyWithImpl<$Res>
    extends _$BillModelCopyWithImpl<$Res, _$BillModelImpl>
    implements _$$BillModelImplCopyWith<$Res> {
  __$$BillModelImplCopyWithImpl(
      _$BillModelImpl _value, $Res Function(_$BillModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? schoolCode = null,
    Object? schoolName = null,
    Object? billCode = freezed,
    Object? studentCode = null,
    Object? studentName = null,
    Object? yearTermCode = null,
    Object? yearTermName = null,
    Object? yearTermEngName = null,
    Object? phaseCode = null,
    Object? phaseName = null,
    Object? phaseEngName = null,
    Object? courseCode = null,
    Object? courseName = null,
    Object? courseEngName = null,
    Object? gradeCode = null,
    Object? gradeName = null,
    Object? gradeEngName = null,
    Object? classCode = null,
    Object? className = null,
    Object? classEngName = null,
    Object? payAmount = null,
    Object? totalCost = null,
    Object? benefitCost = null,
    Object? billCost = null,
    Object? paidCost = null,
    Object? walletCost = null,
    Object? specialCost = null,
    Object? deductionCost = null,
    Object? balanceCost = null,
    Object? refundCost = null,
    Object? termPayableCost = null,
    Object? termBenefitCost = null,
    Object? owePaidCost = null,
    Object? oweCost = null,
    Object? status = null,
    Object? statusName = null,
    Object? statusEngName = null,
    Object? billCategory = freezed,
    Object? billCategoryName = null,
    Object? billCategoryEngName = null,
    Object? createdDate = freezed,
    Object? isAbnormal = null,
    Object? isPreUpdate = null,
    Object? isClosed = null,
  }) {
    return _then(_$BillModelImpl(
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      billCode: freezed == billCode
          ? _value.billCode
          : billCode // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermName: null == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermEngName: null == yearTermEngName
          ? _value.yearTermEngName
          : yearTermEngName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseEngName: null == phaseEngName
          ? _value.phaseEngName
          : phaseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseEngName: null == courseEngName
          ? _value.courseEngName
          : courseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeEngName: null == gradeEngName
          ? _value.gradeEngName
          : gradeEngName // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classEngName: null == classEngName
          ? _value.classEngName
          : classEngName // ignore: cast_nullable_to_non_nullable
              as String,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      benefitCost: null == benefitCost
          ? _value.benefitCost
          : benefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      billCost: null == billCost
          ? _value.billCost
          : billCost // ignore: cast_nullable_to_non_nullable
              as double,
      paidCost: null == paidCost
          ? _value.paidCost
          : paidCost // ignore: cast_nullable_to_non_nullable
              as double,
      walletCost: null == walletCost
          ? _value.walletCost
          : walletCost // ignore: cast_nullable_to_non_nullable
              as double,
      specialCost: null == specialCost
          ? _value.specialCost
          : specialCost // ignore: cast_nullable_to_non_nullable
              as double,
      deductionCost: null == deductionCost
          ? _value.deductionCost
          : deductionCost // ignore: cast_nullable_to_non_nullable
              as double,
      balanceCost: null == balanceCost
          ? _value.balanceCost
          : balanceCost // ignore: cast_nullable_to_non_nullable
              as double,
      refundCost: null == refundCost
          ? _value.refundCost
          : refundCost // ignore: cast_nullable_to_non_nullable
              as double,
      termPayableCost: null == termPayableCost
          ? _value.termPayableCost
          : termPayableCost // ignore: cast_nullable_to_non_nullable
              as double,
      termBenefitCost: null == termBenefitCost
          ? _value.termBenefitCost
          : termBenefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      owePaidCost: null == owePaidCost
          ? _value.owePaidCost
          : owePaidCost // ignore: cast_nullable_to_non_nullable
              as double,
      oweCost: null == oweCost
          ? _value.oweCost
          : oweCost // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillStatus,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      statusEngName: null == statusEngName
          ? _value.statusEngName
          : statusEngName // ignore: cast_nullable_to_non_nullable
              as String,
      billCategory: freezed == billCategory
          ? _value.billCategory
          : billCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      billCategoryName: null == billCategoryName
          ? _value.billCategoryName
          : billCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      billCategoryEngName: null == billCategoryEngName
          ? _value.billCategoryEngName
          : billCategoryEngName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAbnormal: null == isAbnormal
          ? _value.isAbnormal
          : isAbnormal // ignore: cast_nullable_to_non_nullable
              as bool,
      isPreUpdate: null == isPreUpdate
          ? _value.isPreUpdate
          : isPreUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      isClosed: null == isClosed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillModelImpl extends _BillModel {
  const _$BillModelImpl(
      {@String2IntNullableJsonConverter() this.studentId,
      this.schoolCode = '',
      this.schoolName = '',
      @JsonKey(name: 'billStudentCode') this.billCode,
      this.studentCode = '',
      this.studentName = '',
      this.yearTermCode = '',
      this.yearTermName = '',
      this.yearTermEngName = '',
      this.phaseCode = '',
      this.phaseName = '',
      this.phaseEngName = '',
      this.courseCode = '',
      this.courseName = '',
      this.courseEngName = '',
      this.gradeCode = '',
      this.gradeName = '',
      this.gradeEngName = '',
      this.classCode = '',
      this.className = '',
      this.classEngName = '',
      @String2DoubleJsonConverter() this.payAmount = 0,
      @String2DoubleJsonConverter() this.totalCost = 0,
      @String2DoubleJsonConverter() this.benefitCost = 0,
      @String2DoubleJsonConverter() this.billCost = 0,
      @String2DoubleJsonConverter() this.paidCost = 0,
      @String2DoubleJsonConverter() this.walletCost = 0,
      @String2DoubleJsonConverter() this.specialCost = 0,
      @String2DoubleJsonConverter() this.deductionCost = 0,
      @String2DoubleJsonConverter() this.balanceCost = 0,
      @String2DoubleJsonConverter() this.refundCost = 0,
      @String2DoubleJsonConverter() this.termPayableCost = 0,
      @String2DoubleJsonConverter() this.termBenefitCost = 0,
      @String2DoubleJsonConverter() this.owePaidCost = 0,
      @String2DoubleJsonConverter() this.oweCost = 0,
      this.status = BillStatus.unknown,
      this.statusName = '',
      this.statusEngName = '',
      this.billCategory,
      this.billCategoryName = '',
      this.billCategoryEngName = '',
      @StringTimestampNullableJsonConverter() this.createdDate,
      @String2BoolJsonConverter() this.isAbnormal = false,
      @String2BoolJsonConverter() this.isPreUpdate = false,
      @String2BoolJsonConverter() this.isClosed = false})
      : super._();

  factory _$BillModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillModelImplFromJson(json);

  /// 学生主键
  @override
  @String2IntNullableJsonConverter()
  final int? studentId;

  /// 学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 学校名称
  @override
  @JsonKey()
  final String schoolName;

  /// 账单编号
  @override
  @JsonKey(name: 'billStudentCode')
  final String? billCode;

  /// 学生编码
  @override
  @JsonKey()
  final String studentCode;

  /// 学生姓名
  @override
  @JsonKey()
  final String studentName;

  /// 学年学期编码
  @override
  @JsonKey()
  final String yearTermCode;

  /// 学年学期
  @override
  @JsonKey()
  final String yearTermName;

  /// 学年学期英文名称
  @override
  @JsonKey()
  final String yearTermEngName;

  /// 学段编码
  @override
  @JsonKey()
  final String phaseCode;

  /// 学段名称
  @override
  @JsonKey()
  final String phaseName;

  /// 学段英文名称
  @override
  @JsonKey()
  final String phaseEngName;

  /// 课程编码
  @override
  @JsonKey()
  final String courseCode;

  /// 课程名称
  @override
  @JsonKey()
  final String courseName;

  /// 课程英文名称
  @override
  @JsonKey()
  final String courseEngName;

  /// 年级编码
  @override
  @JsonKey()
  final String gradeCode;

  /// 年级名称
  @override
  @JsonKey()
  final String gradeName;

  /// 年级英文名称
  @override
  @JsonKey()
  final String gradeEngName;

  /// 班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 班级名称
  @override
  @JsonKey()
  final String className;

  /// 班级英文名称
  @override
  @JsonKey()
  final String classEngName;

  /// 应付(微信实际支付)
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double payAmount;

  /// 费用合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double totalCost;

  /// 优惠合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double benefitCost;

  /// 账单合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double billCost;

  /// 已缴合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double paidCost;

  /// 抵扣金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double walletCost;

  /// 特殊折扣
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double specialCost;

  /// 抵扣金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double deductionCost;

  /// 余额抵扣
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double balanceCost;

  /// 退款金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double refundCost;

  /// 学期应收金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double termPayableCost;

  /// 学期优惠金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double termBenefitCost;

  /// 欠缴金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double owePaidCost;

  /// 欠费金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double oweCost;

  /// 账单状态
  @override
  @JsonKey()
  final BillStatus status;

  /// 账单状态中文名称
  @override
  @JsonKey()
  final String statusName;

  /// 账单状态英文名称
  @override
  @JsonKey()
  final String statusEngName;

  /// 账单类别(需要对应字典)
  @override
  final String? billCategory;

  /// 账单类别中文名称
  @override
  @JsonKey()
  final String billCategoryName;

  /// 账单类别英文名称
  @override
  @JsonKey()
  final String billCategoryEngName;

  /// 创建日期
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? createdDate;

  /// 是否异常
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isAbnormal;

  /// 是否预升账单
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isPreUpdate;

  /// 是否关闭
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isClosed;

  @override
  String toString() {
    return 'BillModel(studentId: $studentId, schoolCode: $schoolCode, schoolName: $schoolName, billCode: $billCode, studentCode: $studentCode, studentName: $studentName, yearTermCode: $yearTermCode, yearTermName: $yearTermName, yearTermEngName: $yearTermEngName, phaseCode: $phaseCode, phaseName: $phaseName, phaseEngName: $phaseEngName, courseCode: $courseCode, courseName: $courseName, courseEngName: $courseEngName, gradeCode: $gradeCode, gradeName: $gradeName, gradeEngName: $gradeEngName, classCode: $classCode, className: $className, classEngName: $classEngName, payAmount: $payAmount, totalCost: $totalCost, benefitCost: $benefitCost, billCost: $billCost, paidCost: $paidCost, walletCost: $walletCost, specialCost: $specialCost, deductionCost: $deductionCost, balanceCost: $balanceCost, refundCost: $refundCost, termPayableCost: $termPayableCost, termBenefitCost: $termBenefitCost, owePaidCost: $owePaidCost, oweCost: $oweCost, status: $status, statusName: $statusName, statusEngName: $statusEngName, billCategory: $billCategory, billCategoryName: $billCategoryName, billCategoryEngName: $billCategoryEngName, createdDate: $createdDate, isAbnormal: $isAbnormal, isPreUpdate: $isPreUpdate, isClosed: $isClosed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillModelImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.billCode, billCode) ||
                other.billCode == billCode) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.yearTermName, yearTermName) ||
                other.yearTermName == yearTermName) &&
            (identical(other.yearTermEngName, yearTermEngName) ||
                other.yearTermEngName == yearTermEngName) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.phaseName, phaseName) ||
                other.phaseName == phaseName) &&
            (identical(other.phaseEngName, phaseEngName) ||
                other.phaseEngName == phaseEngName) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.courseEngName, courseEngName) ||
                other.courseEngName == courseEngName) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.gradeName, gradeName) ||
                other.gradeName == gradeName) &&
            (identical(other.gradeEngName, gradeEngName) ||
                other.gradeEngName == gradeEngName) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classEngName, classEngName) ||
                other.classEngName == classEngName) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.benefitCost, benefitCost) ||
                other.benefitCost == benefitCost) &&
            (identical(other.billCost, billCost) ||
                other.billCost == billCost) &&
            (identical(other.paidCost, paidCost) ||
                other.paidCost == paidCost) &&
            (identical(other.walletCost, walletCost) ||
                other.walletCost == walletCost) &&
            (identical(other.specialCost, specialCost) ||
                other.specialCost == specialCost) &&
            (identical(other.deductionCost, deductionCost) ||
                other.deductionCost == deductionCost) &&
            (identical(other.balanceCost, balanceCost) ||
                other.balanceCost == balanceCost) &&
            (identical(other.refundCost, refundCost) ||
                other.refundCost == refundCost) &&
            (identical(other.termPayableCost, termPayableCost) ||
                other.termPayableCost == termPayableCost) &&
            (identical(other.termBenefitCost, termBenefitCost) ||
                other.termBenefitCost == termBenefitCost) &&
            (identical(other.owePaidCost, owePaidCost) ||
                other.owePaidCost == owePaidCost) &&
            (identical(other.oweCost, oweCost) || other.oweCost == oweCost) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.statusEngName, statusEngName) ||
                other.statusEngName == statusEngName) &&
            (identical(other.billCategory, billCategory) ||
                other.billCategory == billCategory) &&
            (identical(other.billCategoryName, billCategoryName) ||
                other.billCategoryName == billCategoryName) &&
            (identical(other.billCategoryEngName, billCategoryEngName) ||
                other.billCategoryEngName == billCategoryEngName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.isAbnormal, isAbnormal) ||
                other.isAbnormal == isAbnormal) &&
            (identical(other.isPreUpdate, isPreUpdate) ||
                other.isPreUpdate == isPreUpdate) &&
            (identical(other.isClosed, isClosed) ||
                other.isClosed == isClosed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        studentId,
        schoolCode,
        schoolName,
        billCode,
        studentCode,
        studentName,
        yearTermCode,
        yearTermName,
        yearTermEngName,
        phaseCode,
        phaseName,
        phaseEngName,
        courseCode,
        courseName,
        courseEngName,
        gradeCode,
        gradeName,
        gradeEngName,
        classCode,
        className,
        classEngName,
        payAmount,
        totalCost,
        benefitCost,
        billCost,
        paidCost,
        walletCost,
        specialCost,
        deductionCost,
        balanceCost,
        refundCost,
        termPayableCost,
        termBenefitCost,
        owePaidCost,
        oweCost,
        status,
        statusName,
        statusEngName,
        billCategory,
        billCategoryName,
        billCategoryEngName,
        createdDate,
        isAbnormal,
        isPreUpdate,
        isClosed
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillModelImplCopyWith<_$BillModelImpl> get copyWith =>
      __$$BillModelImplCopyWithImpl<_$BillModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillModelImplToJson(
      this,
    );
  }
}

abstract class _BillModel extends BillModel {
  const factory _BillModel(
      {@String2IntNullableJsonConverter() final int? studentId,
      final String schoolCode,
      final String schoolName,
      @JsonKey(name: 'billStudentCode') final String? billCode,
      final String studentCode,
      final String studentName,
      final String yearTermCode,
      final String yearTermName,
      final String yearTermEngName,
      final String phaseCode,
      final String phaseName,
      final String phaseEngName,
      final String courseCode,
      final String courseName,
      final String courseEngName,
      final String gradeCode,
      final String gradeName,
      final String gradeEngName,
      final String classCode,
      final String className,
      final String classEngName,
      @String2DoubleJsonConverter() final double payAmount,
      @String2DoubleJsonConverter() final double totalCost,
      @String2DoubleJsonConverter() final double benefitCost,
      @String2DoubleJsonConverter() final double billCost,
      @String2DoubleJsonConverter() final double paidCost,
      @String2DoubleJsonConverter() final double walletCost,
      @String2DoubleJsonConverter() final double specialCost,
      @String2DoubleJsonConverter() final double deductionCost,
      @String2DoubleJsonConverter() final double balanceCost,
      @String2DoubleJsonConverter() final double refundCost,
      @String2DoubleJsonConverter() final double termPayableCost,
      @String2DoubleJsonConverter() final double termBenefitCost,
      @String2DoubleJsonConverter() final double owePaidCost,
      @String2DoubleJsonConverter() final double oweCost,
      final BillStatus status,
      final String statusName,
      final String statusEngName,
      final String? billCategory,
      final String billCategoryName,
      final String billCategoryEngName,
      @StringTimestampNullableJsonConverter() final DateTime? createdDate,
      @String2BoolJsonConverter() final bool isAbnormal,
      @String2BoolJsonConverter() final bool isPreUpdate,
      @String2BoolJsonConverter() final bool isClosed}) = _$BillModelImpl;
  const _BillModel._() : super._();

  factory _BillModel.fromJson(Map<String, dynamic> json) =
      _$BillModelImpl.fromJson;

  @override

  /// 学生主键
  @String2IntNullableJsonConverter()
  int? get studentId;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学校名称
  String get schoolName;
  @override

  /// 账单编号
  @JsonKey(name: 'billStudentCode')
  String? get billCode;
  @override

  /// 学生编码
  String get studentCode;
  @override

  /// 学生姓名
  String get studentName;
  @override

  /// 学年学期编码
  String get yearTermCode;
  @override

  /// 学年学期
  String get yearTermName;
  @override

  /// 学年学期英文名称
  String get yearTermEngName;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 学段名称
  String get phaseName;
  @override

  /// 学段英文名称
  String get phaseEngName;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 课程名称
  String get courseName;
  @override

  /// 课程英文名称
  String get courseEngName;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 年级名称
  String get gradeName;
  @override

  /// 年级英文名称
  String get gradeEngName;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 班级名称
  String get className;
  @override

  /// 班级英文名称
  String get classEngName;
  @override

  /// 应付(微信实际支付)
  @String2DoubleJsonConverter()
  double get payAmount;
  @override

  /// 费用合计
  @String2DoubleJsonConverter()
  double get totalCost;
  @override

  /// 优惠合计
  @String2DoubleJsonConverter()
  double get benefitCost;
  @override

  /// 账单合计
  @String2DoubleJsonConverter()
  double get billCost;
  @override

  /// 已缴合计
  @String2DoubleJsonConverter()
  double get paidCost;
  @override

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get walletCost;
  @override

  /// 特殊折扣
  @String2DoubleJsonConverter()
  double get specialCost;
  @override

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get deductionCost;
  @override

  /// 余额抵扣
  @String2DoubleJsonConverter()
  double get balanceCost;
  @override

  /// 退款金额
  @String2DoubleJsonConverter()
  double get refundCost;
  @override

  /// 学期应收金额
  @String2DoubleJsonConverter()
  double get termPayableCost;
  @override

  /// 学期优惠金额
  @String2DoubleJsonConverter()
  double get termBenefitCost;
  @override

  /// 欠缴金额
  @String2DoubleJsonConverter()
  double get owePaidCost;
  @override

  /// 欠费金额
  @String2DoubleJsonConverter()
  double get oweCost;
  @override

  /// 账单状态
  BillStatus get status;
  @override

  /// 账单状态中文名称
  String get statusName;
  @override

  /// 账单状态英文名称
  String get statusEngName;
  @override

  /// 账单类别(需要对应字典)
  String? get billCategory;
  @override

  /// 账单类别中文名称
  String get billCategoryName;
  @override

  /// 账单类别英文名称
  String get billCategoryEngName;
  @override

  /// 创建日期
  @StringTimestampNullableJsonConverter()
  DateTime? get createdDate;
  @override

  /// 是否异常
  @String2BoolJsonConverter()
  bool get isAbnormal;
  @override

  /// 是否预升账单
  @String2BoolJsonConverter()
  bool get isPreUpdate;
  @override

  /// 是否关闭
  @String2BoolJsonConverter()
  bool get isClosed;
  @override
  @JsonKey(ignore: true)
  _$$BillModelImplCopyWith<_$BillModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BalanceDetailModel _$BalanceDetailModelFromJson(Map<String, dynamic> json) {
  return _BalanceDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BalanceDetailModel {
  /// 科目名称
  String get subjectName => throw _privateConstructorUsedError;

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceDetailModelCopyWith<BalanceDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceDetailModelCopyWith<$Res> {
  factory $BalanceDetailModelCopyWith(
          BalanceDetailModel value, $Res Function(BalanceDetailModel) then) =
      _$BalanceDetailModelCopyWithImpl<$Res, BalanceDetailModel>;
  @useResult
  $Res call({String subjectName, @String2DoubleJsonConverter() double amount});
}

/// @nodoc
class _$BalanceDetailModelCopyWithImpl<$Res, $Val extends BalanceDetailModel>
    implements $BalanceDetailModelCopyWith<$Res> {
  _$BalanceDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectName = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalanceDetailModelImplCopyWith<$Res>
    implements $BalanceDetailModelCopyWith<$Res> {
  factory _$$BalanceDetailModelImplCopyWith(_$BalanceDetailModelImpl value,
          $Res Function(_$BalanceDetailModelImpl) then) =
      __$$BalanceDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subjectName, @String2DoubleJsonConverter() double amount});
}

/// @nodoc
class __$$BalanceDetailModelImplCopyWithImpl<$Res>
    extends _$BalanceDetailModelCopyWithImpl<$Res, _$BalanceDetailModelImpl>
    implements _$$BalanceDetailModelImplCopyWith<$Res> {
  __$$BalanceDetailModelImplCopyWithImpl(_$BalanceDetailModelImpl _value,
      $Res Function(_$BalanceDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectName = null,
    Object? amount = null,
  }) {
    return _then(_$BalanceDetailModelImpl(
      subjectName: null == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BalanceDetailModelImpl extends _BalanceDetailModel {
  const _$BalanceDetailModelImpl(
      {this.subjectName = '', @String2DoubleJsonConverter() this.amount = 0})
      : super._();

  factory _$BalanceDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BalanceDetailModelImplFromJson(json);

  /// 科目名称
  @override
  @JsonKey()
  final String subjectName;

  /// 抵扣金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double amount;

  @override
  String toString() {
    return 'BalanceDetailModel(subjectName: $subjectName, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalanceDetailModelImpl &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subjectName, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BalanceDetailModelImplCopyWith<_$BalanceDetailModelImpl> get copyWith =>
      __$$BalanceDetailModelImplCopyWithImpl<_$BalanceDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BalanceDetailModelImplToJson(
      this,
    );
  }
}

abstract class _BalanceDetailModel extends BalanceDetailModel {
  const factory _BalanceDetailModel(
          {final String subjectName,
          @String2DoubleJsonConverter() final double amount}) =
      _$BalanceDetailModelImpl;
  const _BalanceDetailModel._() : super._();

  factory _BalanceDetailModel.fromJson(Map<String, dynamic> json) =
      _$BalanceDetailModelImpl.fromJson;

  @override

  /// 科目名称
  String get subjectName;
  @override

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$BalanceDetailModelImplCopyWith<_$BalanceDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillProjectModel _$BillProjectModelFromJson(Map<String, dynamic> json) {
  return _BillProjectModel.fromJson(json);
}

/// @nodoc
mixin _$BillProjectModel {
  /// 账单编号
  @JsonKey(name: 'studentBillCode')
  String? get billCode => throw _privateConstructorUsedError;

  /// 收费类别编码
  String get chargingCategoryCode => throw _privateConstructorUsedError;

  /// 收费类别名称
  String get categoryNameCn => throw _privateConstructorUsedError;

  /// 收费类别英文名称
  String get categoryNameEn => throw _privateConstructorUsedError;

  /// 收费项目编码
  String get chargingProjectCode => throw _privateConstructorUsedError;

  /// 收费项目名称
  String get chargingProjectNameCn => throw _privateConstructorUsedError;

  /// 收费项目英文名称
  String get chargingProjectNameEn => throw _privateConstructorUsedError;

  /// 项目收费金额
  @String2DoubleJsonConverter()
  double get feesCost => throw _privateConstructorUsedError;

  /// 优惠金额
  @String2DoubleJsonConverter()
  double get benefitCost => throw _privateConstructorUsedError;

  /// 小计金额
  @String2DoubleJsonConverter()
  double get totalCost => throw _privateConstructorUsedError;

  /// 应付金额
  @String2DoubleJsonConverter()
  double get paidCost => throw _privateConstructorUsedError;

  /// 原应付金额
  @String2DoubleJsonConverter()
  double get originalBenefitCost => throw _privateConstructorUsedError;

  /// 原优惠金额
  @String2DoubleJsonConverter()
  double get originalPaidCost => throw _privateConstructorUsedError;

  /// 是否保底
  @String2BoolJsonConverter()
  bool get isGuaranteed => throw _privateConstructorUsedError;

  /// 保底率
  @String2DoubleJsonConverter()
  double get guaranteedRate => throw _privateConstructorUsedError;

  /// 差异金额
  @String2DoubleJsonConverter()
  double get differenceCost => throw _privateConstructorUsedError;

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get deductionCost => throw _privateConstructorUsedError;

  /// 余额金额
  @String2DoubleJsonConverter()
  double get balanceCost => throw _privateConstructorUsedError;

  /// 已收金额
  @String2DoubleJsonConverter()
  double get collectionAmount => throw _privateConstructorUsedError;

  /// 学期收费标准
  String get cemesterFeesPrice => throw _privateConstructorUsedError;

  /// 月度收费标准
  String get monthFeesPrice => throw _privateConstructorUsedError;

  /// 余额抵扣明细
  List<BalanceDetailModel> get balanceDetail =>
      throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  /// 排序
  @String2IntJsonConverter()
  int get seq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillProjectModelCopyWith<BillProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillProjectModelCopyWith<$Res> {
  factory $BillProjectModelCopyWith(
          BillProjectModel value, $Res Function(BillProjectModel) then) =
      _$BillProjectModelCopyWithImpl<$Res, BillProjectModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'studentBillCode') String? billCode,
      String chargingCategoryCode,
      String categoryNameCn,
      String categoryNameEn,
      String chargingProjectCode,
      String chargingProjectNameCn,
      String chargingProjectNameEn,
      @String2DoubleJsonConverter() double feesCost,
      @String2DoubleJsonConverter() double benefitCost,
      @String2DoubleJsonConverter() double totalCost,
      @String2DoubleJsonConverter() double paidCost,
      @String2DoubleJsonConverter() double originalBenefitCost,
      @String2DoubleJsonConverter() double originalPaidCost,
      @String2BoolJsonConverter() bool isGuaranteed,
      @String2DoubleJsonConverter() double guaranteedRate,
      @String2DoubleJsonConverter() double differenceCost,
      @String2DoubleJsonConverter() double deductionCost,
      @String2DoubleJsonConverter() double balanceCost,
      @String2DoubleJsonConverter() double collectionAmount,
      String cemesterFeesPrice,
      String monthFeesPrice,
      List<BalanceDetailModel> balanceDetail,
      String remark,
      @String2IntJsonConverter() int seq});
}

/// @nodoc
class _$BillProjectModelCopyWithImpl<$Res, $Val extends BillProjectModel>
    implements $BillProjectModelCopyWith<$Res> {
  _$BillProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billCode = freezed,
    Object? chargingCategoryCode = null,
    Object? categoryNameCn = null,
    Object? categoryNameEn = null,
    Object? chargingProjectCode = null,
    Object? chargingProjectNameCn = null,
    Object? chargingProjectNameEn = null,
    Object? feesCost = null,
    Object? benefitCost = null,
    Object? totalCost = null,
    Object? paidCost = null,
    Object? originalBenefitCost = null,
    Object? originalPaidCost = null,
    Object? isGuaranteed = null,
    Object? guaranteedRate = null,
    Object? differenceCost = null,
    Object? deductionCost = null,
    Object? balanceCost = null,
    Object? collectionAmount = null,
    Object? cemesterFeesPrice = null,
    Object? monthFeesPrice = null,
    Object? balanceDetail = null,
    Object? remark = null,
    Object? seq = null,
  }) {
    return _then(_value.copyWith(
      billCode: freezed == billCode
          ? _value.billCode
          : billCode // ignore: cast_nullable_to_non_nullable
              as String?,
      chargingCategoryCode: null == chargingCategoryCode
          ? _value.chargingCategoryCode
          : chargingCategoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameCn: null == categoryNameCn
          ? _value.categoryNameCn
          : categoryNameCn // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectCode: null == chargingProjectCode
          ? _value.chargingProjectCode
          : chargingProjectCode // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectNameCn: null == chargingProjectNameCn
          ? _value.chargingProjectNameCn
          : chargingProjectNameCn // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectNameEn: null == chargingProjectNameEn
          ? _value.chargingProjectNameEn
          : chargingProjectNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      feesCost: null == feesCost
          ? _value.feesCost
          : feesCost // ignore: cast_nullable_to_non_nullable
              as double,
      benefitCost: null == benefitCost
          ? _value.benefitCost
          : benefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      paidCost: null == paidCost
          ? _value.paidCost
          : paidCost // ignore: cast_nullable_to_non_nullable
              as double,
      originalBenefitCost: null == originalBenefitCost
          ? _value.originalBenefitCost
          : originalBenefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      originalPaidCost: null == originalPaidCost
          ? _value.originalPaidCost
          : originalPaidCost // ignore: cast_nullable_to_non_nullable
              as double,
      isGuaranteed: null == isGuaranteed
          ? _value.isGuaranteed
          : isGuaranteed // ignore: cast_nullable_to_non_nullable
              as bool,
      guaranteedRate: null == guaranteedRate
          ? _value.guaranteedRate
          : guaranteedRate // ignore: cast_nullable_to_non_nullable
              as double,
      differenceCost: null == differenceCost
          ? _value.differenceCost
          : differenceCost // ignore: cast_nullable_to_non_nullable
              as double,
      deductionCost: null == deductionCost
          ? _value.deductionCost
          : deductionCost // ignore: cast_nullable_to_non_nullable
              as double,
      balanceCost: null == balanceCost
          ? _value.balanceCost
          : balanceCost // ignore: cast_nullable_to_non_nullable
              as double,
      collectionAmount: null == collectionAmount
          ? _value.collectionAmount
          : collectionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cemesterFeesPrice: null == cemesterFeesPrice
          ? _value.cemesterFeesPrice
          : cemesterFeesPrice // ignore: cast_nullable_to_non_nullable
              as String,
      monthFeesPrice: null == monthFeesPrice
          ? _value.monthFeesPrice
          : monthFeesPrice // ignore: cast_nullable_to_non_nullable
              as String,
      balanceDetail: null == balanceDetail
          ? _value.balanceDetail
          : balanceDetail // ignore: cast_nullable_to_non_nullable
              as List<BalanceDetailModel>,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillProjectModelImplCopyWith<$Res>
    implements $BillProjectModelCopyWith<$Res> {
  factory _$$BillProjectModelImplCopyWith(_$BillProjectModelImpl value,
          $Res Function(_$BillProjectModelImpl) then) =
      __$$BillProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'studentBillCode') String? billCode,
      String chargingCategoryCode,
      String categoryNameCn,
      String categoryNameEn,
      String chargingProjectCode,
      String chargingProjectNameCn,
      String chargingProjectNameEn,
      @String2DoubleJsonConverter() double feesCost,
      @String2DoubleJsonConverter() double benefitCost,
      @String2DoubleJsonConverter() double totalCost,
      @String2DoubleJsonConverter() double paidCost,
      @String2DoubleJsonConverter() double originalBenefitCost,
      @String2DoubleJsonConverter() double originalPaidCost,
      @String2BoolJsonConverter() bool isGuaranteed,
      @String2DoubleJsonConverter() double guaranteedRate,
      @String2DoubleJsonConverter() double differenceCost,
      @String2DoubleJsonConverter() double deductionCost,
      @String2DoubleJsonConverter() double balanceCost,
      @String2DoubleJsonConverter() double collectionAmount,
      String cemesterFeesPrice,
      String monthFeesPrice,
      List<BalanceDetailModel> balanceDetail,
      String remark,
      @String2IntJsonConverter() int seq});
}

/// @nodoc
class __$$BillProjectModelImplCopyWithImpl<$Res>
    extends _$BillProjectModelCopyWithImpl<$Res, _$BillProjectModelImpl>
    implements _$$BillProjectModelImplCopyWith<$Res> {
  __$$BillProjectModelImplCopyWithImpl(_$BillProjectModelImpl _value,
      $Res Function(_$BillProjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billCode = freezed,
    Object? chargingCategoryCode = null,
    Object? categoryNameCn = null,
    Object? categoryNameEn = null,
    Object? chargingProjectCode = null,
    Object? chargingProjectNameCn = null,
    Object? chargingProjectNameEn = null,
    Object? feesCost = null,
    Object? benefitCost = null,
    Object? totalCost = null,
    Object? paidCost = null,
    Object? originalBenefitCost = null,
    Object? originalPaidCost = null,
    Object? isGuaranteed = null,
    Object? guaranteedRate = null,
    Object? differenceCost = null,
    Object? deductionCost = null,
    Object? balanceCost = null,
    Object? collectionAmount = null,
    Object? cemesterFeesPrice = null,
    Object? monthFeesPrice = null,
    Object? balanceDetail = null,
    Object? remark = null,
    Object? seq = null,
  }) {
    return _then(_$BillProjectModelImpl(
      billCode: freezed == billCode
          ? _value.billCode
          : billCode // ignore: cast_nullable_to_non_nullable
              as String?,
      chargingCategoryCode: null == chargingCategoryCode
          ? _value.chargingCategoryCode
          : chargingCategoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameCn: null == categoryNameCn
          ? _value.categoryNameCn
          : categoryNameCn // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectCode: null == chargingProjectCode
          ? _value.chargingProjectCode
          : chargingProjectCode // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectNameCn: null == chargingProjectNameCn
          ? _value.chargingProjectNameCn
          : chargingProjectNameCn // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectNameEn: null == chargingProjectNameEn
          ? _value.chargingProjectNameEn
          : chargingProjectNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      feesCost: null == feesCost
          ? _value.feesCost
          : feesCost // ignore: cast_nullable_to_non_nullable
              as double,
      benefitCost: null == benefitCost
          ? _value.benefitCost
          : benefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      paidCost: null == paidCost
          ? _value.paidCost
          : paidCost // ignore: cast_nullable_to_non_nullable
              as double,
      originalBenefitCost: null == originalBenefitCost
          ? _value.originalBenefitCost
          : originalBenefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      originalPaidCost: null == originalPaidCost
          ? _value.originalPaidCost
          : originalPaidCost // ignore: cast_nullable_to_non_nullable
              as double,
      isGuaranteed: null == isGuaranteed
          ? _value.isGuaranteed
          : isGuaranteed // ignore: cast_nullable_to_non_nullable
              as bool,
      guaranteedRate: null == guaranteedRate
          ? _value.guaranteedRate
          : guaranteedRate // ignore: cast_nullable_to_non_nullable
              as double,
      differenceCost: null == differenceCost
          ? _value.differenceCost
          : differenceCost // ignore: cast_nullable_to_non_nullable
              as double,
      deductionCost: null == deductionCost
          ? _value.deductionCost
          : deductionCost // ignore: cast_nullable_to_non_nullable
              as double,
      balanceCost: null == balanceCost
          ? _value.balanceCost
          : balanceCost // ignore: cast_nullable_to_non_nullable
              as double,
      collectionAmount: null == collectionAmount
          ? _value.collectionAmount
          : collectionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      cemesterFeesPrice: null == cemesterFeesPrice
          ? _value.cemesterFeesPrice
          : cemesterFeesPrice // ignore: cast_nullable_to_non_nullable
              as String,
      monthFeesPrice: null == monthFeesPrice
          ? _value.monthFeesPrice
          : monthFeesPrice // ignore: cast_nullable_to_non_nullable
              as String,
      balanceDetail: null == balanceDetail
          ? _value._balanceDetail
          : balanceDetail // ignore: cast_nullable_to_non_nullable
              as List<BalanceDetailModel>,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillProjectModelImpl extends _BillProjectModel {
  const _$BillProjectModelImpl(
      {@JsonKey(name: 'studentBillCode') this.billCode,
      this.chargingCategoryCode = '',
      this.categoryNameCn = '',
      this.categoryNameEn = '',
      this.chargingProjectCode = '',
      this.chargingProjectNameCn = '',
      this.chargingProjectNameEn = '',
      @String2DoubleJsonConverter() this.feesCost = 0,
      @String2DoubleJsonConverter() this.benefitCost = 0,
      @String2DoubleJsonConverter() this.totalCost = 0,
      @String2DoubleJsonConverter() this.paidCost = 0,
      @String2DoubleJsonConverter() this.originalBenefitCost = 0,
      @String2DoubleJsonConverter() this.originalPaidCost = 0,
      @String2BoolJsonConverter() this.isGuaranteed = false,
      @String2DoubleJsonConverter() this.guaranteedRate = 0,
      @String2DoubleJsonConverter() this.differenceCost = 0,
      @String2DoubleJsonConverter() this.deductionCost = 0,
      @String2DoubleJsonConverter() this.balanceCost = 0,
      @String2DoubleJsonConverter() this.collectionAmount = 0,
      this.cemesterFeesPrice = '',
      this.monthFeesPrice = '',
      final List<BalanceDetailModel> balanceDetail = const [],
      this.remark = '',
      @String2IntJsonConverter() this.seq = 0})
      : _balanceDetail = balanceDetail,
        super._();

  factory _$BillProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillProjectModelImplFromJson(json);

  /// 账单编号
  @override
  @JsonKey(name: 'studentBillCode')
  final String? billCode;

  /// 收费类别编码
  @override
  @JsonKey()
  final String chargingCategoryCode;

  /// 收费类别名称
  @override
  @JsonKey()
  final String categoryNameCn;

  /// 收费类别英文名称
  @override
  @JsonKey()
  final String categoryNameEn;

  /// 收费项目编码
  @override
  @JsonKey()
  final String chargingProjectCode;

  /// 收费项目名称
  @override
  @JsonKey()
  final String chargingProjectNameCn;

  /// 收费项目英文名称
  @override
  @JsonKey()
  final String chargingProjectNameEn;

  /// 项目收费金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double feesCost;

  /// 优惠金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double benefitCost;

  /// 小计金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double totalCost;

  /// 应付金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double paidCost;

  /// 原应付金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double originalBenefitCost;

  /// 原优惠金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double originalPaidCost;

  /// 是否保底
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isGuaranteed;

  /// 保底率
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double guaranteedRate;

  /// 差异金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double differenceCost;

  /// 抵扣金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double deductionCost;

  /// 余额金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double balanceCost;

  /// 已收金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double collectionAmount;

  /// 学期收费标准
  @override
  @JsonKey()
  final String cemesterFeesPrice;

  /// 月度收费标准
  @override
  @JsonKey()
  final String monthFeesPrice;

  /// 余额抵扣明细
  final List<BalanceDetailModel> _balanceDetail;

  /// 余额抵扣明细
  @override
  @JsonKey()
  List<BalanceDetailModel> get balanceDetail {
    if (_balanceDetail is EqualUnmodifiableListView) return _balanceDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_balanceDetail);
  }

  /// 备注
  @override
  @JsonKey()
  final String remark;

  /// 排序
  @override
  @JsonKey()
  @String2IntJsonConverter()
  final int seq;

  @override
  String toString() {
    return 'BillProjectModel(billCode: $billCode, chargingCategoryCode: $chargingCategoryCode, categoryNameCn: $categoryNameCn, categoryNameEn: $categoryNameEn, chargingProjectCode: $chargingProjectCode, chargingProjectNameCn: $chargingProjectNameCn, chargingProjectNameEn: $chargingProjectNameEn, feesCost: $feesCost, benefitCost: $benefitCost, totalCost: $totalCost, paidCost: $paidCost, originalBenefitCost: $originalBenefitCost, originalPaidCost: $originalPaidCost, isGuaranteed: $isGuaranteed, guaranteedRate: $guaranteedRate, differenceCost: $differenceCost, deductionCost: $deductionCost, balanceCost: $balanceCost, collectionAmount: $collectionAmount, cemesterFeesPrice: $cemesterFeesPrice, monthFeesPrice: $monthFeesPrice, balanceDetail: $balanceDetail, remark: $remark, seq: $seq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillProjectModelImpl &&
            (identical(other.billCode, billCode) ||
                other.billCode == billCode) &&
            (identical(other.chargingCategoryCode, chargingCategoryCode) ||
                other.chargingCategoryCode == chargingCategoryCode) &&
            (identical(other.categoryNameCn, categoryNameCn) ||
                other.categoryNameCn == categoryNameCn) &&
            (identical(other.categoryNameEn, categoryNameEn) ||
                other.categoryNameEn == categoryNameEn) &&
            (identical(other.chargingProjectCode, chargingProjectCode) ||
                other.chargingProjectCode == chargingProjectCode) &&
            (identical(other.chargingProjectNameCn, chargingProjectNameCn) ||
                other.chargingProjectNameCn == chargingProjectNameCn) &&
            (identical(other.chargingProjectNameEn, chargingProjectNameEn) ||
                other.chargingProjectNameEn == chargingProjectNameEn) &&
            (identical(other.feesCost, feesCost) ||
                other.feesCost == feesCost) &&
            (identical(other.benefitCost, benefitCost) ||
                other.benefitCost == benefitCost) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.paidCost, paidCost) ||
                other.paidCost == paidCost) &&
            (identical(other.originalBenefitCost, originalBenefitCost) ||
                other.originalBenefitCost == originalBenefitCost) &&
            (identical(other.originalPaidCost, originalPaidCost) ||
                other.originalPaidCost == originalPaidCost) &&
            (identical(other.isGuaranteed, isGuaranteed) ||
                other.isGuaranteed == isGuaranteed) &&
            (identical(other.guaranteedRate, guaranteedRate) ||
                other.guaranteedRate == guaranteedRate) &&
            (identical(other.differenceCost, differenceCost) ||
                other.differenceCost == differenceCost) &&
            (identical(other.deductionCost, deductionCost) ||
                other.deductionCost == deductionCost) &&
            (identical(other.balanceCost, balanceCost) ||
                other.balanceCost == balanceCost) &&
            (identical(other.collectionAmount, collectionAmount) ||
                other.collectionAmount == collectionAmount) &&
            (identical(other.cemesterFeesPrice, cemesterFeesPrice) ||
                other.cemesterFeesPrice == cemesterFeesPrice) &&
            (identical(other.monthFeesPrice, monthFeesPrice) ||
                other.monthFeesPrice == monthFeesPrice) &&
            const DeepCollectionEquality()
                .equals(other._balanceDetail, _balanceDetail) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.seq, seq) || other.seq == seq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        billCode,
        chargingCategoryCode,
        categoryNameCn,
        categoryNameEn,
        chargingProjectCode,
        chargingProjectNameCn,
        chargingProjectNameEn,
        feesCost,
        benefitCost,
        totalCost,
        paidCost,
        originalBenefitCost,
        originalPaidCost,
        isGuaranteed,
        guaranteedRate,
        differenceCost,
        deductionCost,
        balanceCost,
        collectionAmount,
        cemesterFeesPrice,
        monthFeesPrice,
        const DeepCollectionEquality().hash(_balanceDetail),
        remark,
        seq
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillProjectModelImplCopyWith<_$BillProjectModelImpl> get copyWith =>
      __$$BillProjectModelImplCopyWithImpl<_$BillProjectModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillProjectModelImplToJson(
      this,
    );
  }
}

abstract class _BillProjectModel extends BillProjectModel {
  const factory _BillProjectModel(
      {@JsonKey(name: 'studentBillCode') final String? billCode,
      final String chargingCategoryCode,
      final String categoryNameCn,
      final String categoryNameEn,
      final String chargingProjectCode,
      final String chargingProjectNameCn,
      final String chargingProjectNameEn,
      @String2DoubleJsonConverter() final double feesCost,
      @String2DoubleJsonConverter() final double benefitCost,
      @String2DoubleJsonConverter() final double totalCost,
      @String2DoubleJsonConverter() final double paidCost,
      @String2DoubleJsonConverter() final double originalBenefitCost,
      @String2DoubleJsonConverter() final double originalPaidCost,
      @String2BoolJsonConverter() final bool isGuaranteed,
      @String2DoubleJsonConverter() final double guaranteedRate,
      @String2DoubleJsonConverter() final double differenceCost,
      @String2DoubleJsonConverter() final double deductionCost,
      @String2DoubleJsonConverter() final double balanceCost,
      @String2DoubleJsonConverter() final double collectionAmount,
      final String cemesterFeesPrice,
      final String monthFeesPrice,
      final List<BalanceDetailModel> balanceDetail,
      final String remark,
      @String2IntJsonConverter() final int seq}) = _$BillProjectModelImpl;
  const _BillProjectModel._() : super._();

  factory _BillProjectModel.fromJson(Map<String, dynamic> json) =
      _$BillProjectModelImpl.fromJson;

  @override

  /// 账单编号
  @JsonKey(name: 'studentBillCode')
  String? get billCode;
  @override

  /// 收费类别编码
  String get chargingCategoryCode;
  @override

  /// 收费类别名称
  String get categoryNameCn;
  @override

  /// 收费类别英文名称
  String get categoryNameEn;
  @override

  /// 收费项目编码
  String get chargingProjectCode;
  @override

  /// 收费项目名称
  String get chargingProjectNameCn;
  @override

  /// 收费项目英文名称
  String get chargingProjectNameEn;
  @override

  /// 项目收费金额
  @String2DoubleJsonConverter()
  double get feesCost;
  @override

  /// 优惠金额
  @String2DoubleJsonConverter()
  double get benefitCost;
  @override

  /// 小计金额
  @String2DoubleJsonConverter()
  double get totalCost;
  @override

  /// 应付金额
  @String2DoubleJsonConverter()
  double get paidCost;
  @override

  /// 原应付金额
  @String2DoubleJsonConverter()
  double get originalBenefitCost;
  @override

  /// 原优惠金额
  @String2DoubleJsonConverter()
  double get originalPaidCost;
  @override

  /// 是否保底
  @String2BoolJsonConverter()
  bool get isGuaranteed;
  @override

  /// 保底率
  @String2DoubleJsonConverter()
  double get guaranteedRate;
  @override

  /// 差异金额
  @String2DoubleJsonConverter()
  double get differenceCost;
  @override

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get deductionCost;
  @override

  /// 余额金额
  @String2DoubleJsonConverter()
  double get balanceCost;
  @override

  /// 已收金额
  @String2DoubleJsonConverter()
  double get collectionAmount;
  @override

  /// 学期收费标准
  String get cemesterFeesPrice;
  @override

  /// 月度收费标准
  String get monthFeesPrice;
  @override

  /// 余额抵扣明细
  List<BalanceDetailModel> get balanceDetail;
  @override

  /// 备注
  String get remark;
  @override

  /// 排序
  @String2IntJsonConverter()
  int get seq;
  @override
  @JsonKey(ignore: true)
  _$$BillProjectModelImplCopyWith<_$BillProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillBenefitModel _$BillBenefitModelFromJson(Map<String, dynamic> json) {
  return _BillBenefitModel.fromJson(json);
}

/// @nodoc
mixin _$BillBenefitModel {
  @String2IntNullableJsonConverter()
  int? get id => throw _privateConstructorUsedError;

  /// 优惠类别编码
  String get categoryCode => throw _privateConstructorUsedError;

  /// 优惠类别名称
  String get categoryNameCn => throw _privateConstructorUsedError;

  /// 优惠编码
  String get benefitCode => throw _privateConstructorUsedError;

  /// 优惠名称
  String get benefitName => throw _privateConstructorUsedError;

  /// 收费项目编码
  String get chargingProjectCode => throw _privateConstructorUsedError;

  /// 优惠形式
  String get benefitType => throw _privateConstructorUsedError;

  /// 优惠金额
  @String2DoubleJsonConverter()
  double get benefitDiscount => throw _privateConstructorUsedError;

  /// 折扣
  @String2DoubleJsonConverter()
  double get discount => throw _privateConstructorUsedError;

  /// 次序
  @String2IntJsonConverter()
  int get sequence => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillBenefitModelCopyWith<BillBenefitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillBenefitModelCopyWith<$Res> {
  factory $BillBenefitModelCopyWith(
          BillBenefitModel value, $Res Function(BillBenefitModel) then) =
      _$BillBenefitModelCopyWithImpl<$Res, BillBenefitModel>;
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? id,
      String categoryCode,
      String categoryNameCn,
      String benefitCode,
      String benefitName,
      String chargingProjectCode,
      String benefitType,
      @String2DoubleJsonConverter() double benefitDiscount,
      @String2DoubleJsonConverter() double discount,
      @String2IntJsonConverter() int sequence});
}

/// @nodoc
class _$BillBenefitModelCopyWithImpl<$Res, $Val extends BillBenefitModel>
    implements $BillBenefitModelCopyWith<$Res> {
  _$BillBenefitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryCode = null,
    Object? categoryNameCn = null,
    Object? benefitCode = null,
    Object? benefitName = null,
    Object? chargingProjectCode = null,
    Object? benefitType = null,
    Object? benefitDiscount = null,
    Object? discount = null,
    Object? sequence = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameCn: null == categoryNameCn
          ? _value.categoryNameCn
          : categoryNameCn // ignore: cast_nullable_to_non_nullable
              as String,
      benefitCode: null == benefitCode
          ? _value.benefitCode
          : benefitCode // ignore: cast_nullable_to_non_nullable
              as String,
      benefitName: null == benefitName
          ? _value.benefitName
          : benefitName // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectCode: null == chargingProjectCode
          ? _value.chargingProjectCode
          : chargingProjectCode // ignore: cast_nullable_to_non_nullable
              as String,
      benefitType: null == benefitType
          ? _value.benefitType
          : benefitType // ignore: cast_nullable_to_non_nullable
              as String,
      benefitDiscount: null == benefitDiscount
          ? _value.benefitDiscount
          : benefitDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillBenefitModelImplCopyWith<$Res>
    implements $BillBenefitModelCopyWith<$Res> {
  factory _$$BillBenefitModelImplCopyWith(_$BillBenefitModelImpl value,
          $Res Function(_$BillBenefitModelImpl) then) =
      __$$BillBenefitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? id,
      String categoryCode,
      String categoryNameCn,
      String benefitCode,
      String benefitName,
      String chargingProjectCode,
      String benefitType,
      @String2DoubleJsonConverter() double benefitDiscount,
      @String2DoubleJsonConverter() double discount,
      @String2IntJsonConverter() int sequence});
}

/// @nodoc
class __$$BillBenefitModelImplCopyWithImpl<$Res>
    extends _$BillBenefitModelCopyWithImpl<$Res, _$BillBenefitModelImpl>
    implements _$$BillBenefitModelImplCopyWith<$Res> {
  __$$BillBenefitModelImplCopyWithImpl(_$BillBenefitModelImpl _value,
      $Res Function(_$BillBenefitModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryCode = null,
    Object? categoryNameCn = null,
    Object? benefitCode = null,
    Object? benefitName = null,
    Object? chargingProjectCode = null,
    Object? benefitType = null,
    Object? benefitDiscount = null,
    Object? discount = null,
    Object? sequence = null,
  }) {
    return _then(_$BillBenefitModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameCn: null == categoryNameCn
          ? _value.categoryNameCn
          : categoryNameCn // ignore: cast_nullable_to_non_nullable
              as String,
      benefitCode: null == benefitCode
          ? _value.benefitCode
          : benefitCode // ignore: cast_nullable_to_non_nullable
              as String,
      benefitName: null == benefitName
          ? _value.benefitName
          : benefitName // ignore: cast_nullable_to_non_nullable
              as String,
      chargingProjectCode: null == chargingProjectCode
          ? _value.chargingProjectCode
          : chargingProjectCode // ignore: cast_nullable_to_non_nullable
              as String,
      benefitType: null == benefitType
          ? _value.benefitType
          : benefitType // ignore: cast_nullable_to_non_nullable
              as String,
      benefitDiscount: null == benefitDiscount
          ? _value.benefitDiscount
          : benefitDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      sequence: null == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillBenefitModelImpl extends _BillBenefitModel {
  const _$BillBenefitModelImpl(
      {@String2IntNullableJsonConverter() this.id,
      this.categoryCode = '',
      this.categoryNameCn = '',
      this.benefitCode = '',
      this.benefitName = '',
      this.chargingProjectCode = '',
      this.benefitType = '',
      @String2DoubleJsonConverter() this.benefitDiscount = 0,
      @String2DoubleJsonConverter() this.discount = 0,
      @String2IntJsonConverter() this.sequence = 0})
      : super._();

  factory _$BillBenefitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillBenefitModelImplFromJson(json);

  @override
  @String2IntNullableJsonConverter()
  final int? id;

  /// 优惠类别编码
  @override
  @JsonKey()
  final String categoryCode;

  /// 优惠类别名称
  @override
  @JsonKey()
  final String categoryNameCn;

  /// 优惠编码
  @override
  @JsonKey()
  final String benefitCode;

  /// 优惠名称
  @override
  @JsonKey()
  final String benefitName;

  /// 收费项目编码
  @override
  @JsonKey()
  final String chargingProjectCode;

  /// 优惠形式
  @override
  @JsonKey()
  final String benefitType;

  /// 优惠金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double benefitDiscount;

  /// 折扣
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double discount;

  /// 次序
  @override
  @JsonKey()
  @String2IntJsonConverter()
  final int sequence;

  @override
  String toString() {
    return 'BillBenefitModel(id: $id, categoryCode: $categoryCode, categoryNameCn: $categoryNameCn, benefitCode: $benefitCode, benefitName: $benefitName, chargingProjectCode: $chargingProjectCode, benefitType: $benefitType, benefitDiscount: $benefitDiscount, discount: $discount, sequence: $sequence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillBenefitModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.categoryNameCn, categoryNameCn) ||
                other.categoryNameCn == categoryNameCn) &&
            (identical(other.benefitCode, benefitCode) ||
                other.benefitCode == benefitCode) &&
            (identical(other.benefitName, benefitName) ||
                other.benefitName == benefitName) &&
            (identical(other.chargingProjectCode, chargingProjectCode) ||
                other.chargingProjectCode == chargingProjectCode) &&
            (identical(other.benefitType, benefitType) ||
                other.benefitType == benefitType) &&
            (identical(other.benefitDiscount, benefitDiscount) ||
                other.benefitDiscount == benefitDiscount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryCode,
      categoryNameCn,
      benefitCode,
      benefitName,
      chargingProjectCode,
      benefitType,
      benefitDiscount,
      discount,
      sequence);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillBenefitModelImplCopyWith<_$BillBenefitModelImpl> get copyWith =>
      __$$BillBenefitModelImplCopyWithImpl<_$BillBenefitModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillBenefitModelImplToJson(
      this,
    );
  }
}

abstract class _BillBenefitModel extends BillBenefitModel {
  const factory _BillBenefitModel(
      {@String2IntNullableJsonConverter() final int? id,
      final String categoryCode,
      final String categoryNameCn,
      final String benefitCode,
      final String benefitName,
      final String chargingProjectCode,
      final String benefitType,
      @String2DoubleJsonConverter() final double benefitDiscount,
      @String2DoubleJsonConverter() final double discount,
      @String2IntJsonConverter() final int sequence}) = _$BillBenefitModelImpl;
  const _BillBenefitModel._() : super._();

  factory _BillBenefitModel.fromJson(Map<String, dynamic> json) =
      _$BillBenefitModelImpl.fromJson;

  @override
  @String2IntNullableJsonConverter()
  int? get id;
  @override

  /// 优惠类别编码
  String get categoryCode;
  @override

  /// 优惠类别名称
  String get categoryNameCn;
  @override

  /// 优惠编码
  String get benefitCode;
  @override

  /// 优惠名称
  String get benefitName;
  @override

  /// 收费项目编码
  String get chargingProjectCode;
  @override

  /// 优惠形式
  String get benefitType;
  @override

  /// 优惠金额
  @String2DoubleJsonConverter()
  double get benefitDiscount;
  @override

  /// 折扣
  @String2DoubleJsonConverter()
  double get discount;
  @override

  /// 次序
  @String2IntJsonConverter()
  int get sequence;
  @override
  @JsonKey(ignore: true)
  _$$BillBenefitModelImplCopyWith<_$BillBenefitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailModel {
  /// 订单编号
  String? get orderNo => throw _privateConstructorUsedError;

  /// 付款方式编码
  String get paymentTypeCode => throw _privateConstructorUsedError;

  /// 付款方式名称
  String get paymentTypeName => throw _privateConstructorUsedError;

  /// 渠道编码
  String get channelCode => throw _privateConstructorUsedError;

  /// 渠道名称
  String get channelName => throw _privateConstructorUsedError;

  /// 订单金额
  @String2DoubleJsonConverter()
  double get orderAmount => throw _privateConstructorUsedError;

  /// 平台订单编码
  String get merOrderNo => throw _privateConstructorUsedError;

  /// 跳转支付id
  @JsonKey(name: 'orderSeessionId')
  String get orderSessionId => throw _privateConstructorUsedError;

  /// 付款截止时间
  @StringTimestampNullableJsonConverter()
  DateTime? get payDeadline => throw _privateConstructorUsedError;

  /// 创建时间
  @StringTimestampNullableJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailModelCopyWith<OrderDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailModelCopyWith<$Res> {
  factory $OrderDetailModelCopyWith(
          OrderDetailModel value, $Res Function(OrderDetailModel) then) =
      _$OrderDetailModelCopyWithImpl<$Res, OrderDetailModel>;
  @useResult
  $Res call(
      {String? orderNo,
      String paymentTypeCode,
      String paymentTypeName,
      String channelCode,
      String channelName,
      @String2DoubleJsonConverter() double orderAmount,
      String merOrderNo,
      @JsonKey(name: 'orderSeessionId') String orderSessionId,
      @StringTimestampNullableJsonConverter() DateTime? payDeadline,
      @StringTimestampNullableJsonConverter() DateTime? createTime});
}

/// @nodoc
class _$OrderDetailModelCopyWithImpl<$Res, $Val extends OrderDetailModel>
    implements $OrderDetailModelCopyWith<$Res> {
  _$OrderDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNo = freezed,
    Object? paymentTypeCode = null,
    Object? paymentTypeName = null,
    Object? channelCode = null,
    Object? channelName = null,
    Object? orderAmount = null,
    Object? merOrderNo = null,
    Object? orderSessionId = null,
    Object? payDeadline = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_value.copyWith(
      orderNo: freezed == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeCode: null == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      merOrderNo: null == merOrderNo
          ? _value.merOrderNo
          : merOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderSessionId: null == orderSessionId
          ? _value.orderSessionId
          : orderSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      payDeadline: freezed == payDeadline
          ? _value.payDeadline
          : payDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailModelImplCopyWith<$Res>
    implements $OrderDetailModelCopyWith<$Res> {
  factory _$$OrderDetailModelImplCopyWith(_$OrderDetailModelImpl value,
          $Res Function(_$OrderDetailModelImpl) then) =
      __$$OrderDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderNo,
      String paymentTypeCode,
      String paymentTypeName,
      String channelCode,
      String channelName,
      @String2DoubleJsonConverter() double orderAmount,
      String merOrderNo,
      @JsonKey(name: 'orderSeessionId') String orderSessionId,
      @StringTimestampNullableJsonConverter() DateTime? payDeadline,
      @StringTimestampNullableJsonConverter() DateTime? createTime});
}

/// @nodoc
class __$$OrderDetailModelImplCopyWithImpl<$Res>
    extends _$OrderDetailModelCopyWithImpl<$Res, _$OrderDetailModelImpl>
    implements _$$OrderDetailModelImplCopyWith<$Res> {
  __$$OrderDetailModelImplCopyWithImpl(_$OrderDetailModelImpl _value,
      $Res Function(_$OrderDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNo = freezed,
    Object? paymentTypeCode = null,
    Object? paymentTypeName = null,
    Object? channelCode = null,
    Object? channelName = null,
    Object? orderAmount = null,
    Object? merOrderNo = null,
    Object? orderSessionId = null,
    Object? payDeadline = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_$OrderDetailModelImpl(
      orderNo: freezed == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentTypeCode: null == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      channelCode: null == channelCode
          ? _value.channelCode
          : channelCode // ignore: cast_nullable_to_non_nullable
              as String,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmount: null == orderAmount
          ? _value.orderAmount
          : orderAmount // ignore: cast_nullable_to_non_nullable
              as double,
      merOrderNo: null == merOrderNo
          ? _value.merOrderNo
          : merOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderSessionId: null == orderSessionId
          ? _value.orderSessionId
          : orderSessionId // ignore: cast_nullable_to_non_nullable
              as String,
      payDeadline: freezed == payDeadline
          ? _value.payDeadline
          : payDeadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailModelImpl extends _OrderDetailModel {
  const _$OrderDetailModelImpl(
      {this.orderNo,
      this.paymentTypeCode = '',
      this.paymentTypeName = '',
      this.channelCode = '',
      this.channelName = '',
      @String2DoubleJsonConverter() this.orderAmount = 0,
      this.merOrderNo = '',
      @JsonKey(name: 'orderSeessionId') this.orderSessionId = '',
      @StringTimestampNullableJsonConverter() this.payDeadline,
      @StringTimestampNullableJsonConverter() this.createTime})
      : super._();

  factory _$OrderDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailModelImplFromJson(json);

  /// 订单编号
  @override
  final String? orderNo;

  /// 付款方式编码
  @override
  @JsonKey()
  final String paymentTypeCode;

  /// 付款方式名称
  @override
  @JsonKey()
  final String paymentTypeName;

  /// 渠道编码
  @override
  @JsonKey()
  final String channelCode;

  /// 渠道名称
  @override
  @JsonKey()
  final String channelName;

  /// 订单金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double orderAmount;

  /// 平台订单编码
  @override
  @JsonKey()
  final String merOrderNo;

  /// 跳转支付id
  @override
  @JsonKey(name: 'orderSeessionId')
  final String orderSessionId;

  /// 付款截止时间
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? payDeadline;

  /// 创建时间
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? createTime;

  @override
  String toString() {
    return 'OrderDetailModel(orderNo: $orderNo, paymentTypeCode: $paymentTypeCode, paymentTypeName: $paymentTypeName, channelCode: $channelCode, channelName: $channelName, orderAmount: $orderAmount, merOrderNo: $merOrderNo, orderSessionId: $orderSessionId, payDeadline: $payDeadline, createTime: $createTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailModelImpl &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.paymentTypeCode, paymentTypeCode) ||
                other.paymentTypeCode == paymentTypeCode) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.channelCode, channelCode) ||
                other.channelCode == channelCode) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.orderAmount, orderAmount) ||
                other.orderAmount == orderAmount) &&
            (identical(other.merOrderNo, merOrderNo) ||
                other.merOrderNo == merOrderNo) &&
            (identical(other.orderSessionId, orderSessionId) ||
                other.orderSessionId == orderSessionId) &&
            (identical(other.payDeadline, payDeadline) ||
                other.payDeadline == payDeadline) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderNo,
      paymentTypeCode,
      paymentTypeName,
      channelCode,
      channelName,
      orderAmount,
      merOrderNo,
      orderSessionId,
      payDeadline,
      createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailModelImplCopyWith<_$OrderDetailModelImpl> get copyWith =>
      __$$OrderDetailModelImplCopyWithImpl<_$OrderDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailModel extends OrderDetailModel {
  const factory _OrderDetailModel(
          {final String? orderNo,
          final String paymentTypeCode,
          final String paymentTypeName,
          final String channelCode,
          final String channelName,
          @String2DoubleJsonConverter() final double orderAmount,
          final String merOrderNo,
          @JsonKey(name: 'orderSeessionId') final String orderSessionId,
          @StringTimestampNullableJsonConverter() final DateTime? payDeadline,
          @StringTimestampNullableJsonConverter() final DateTime? createTime}) =
      _$OrderDetailModelImpl;
  const _OrderDetailModel._() : super._();

  factory _OrderDetailModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailModelImpl.fromJson;

  @override

  /// 订单编号
  String? get orderNo;
  @override

  /// 付款方式编码
  String get paymentTypeCode;
  @override

  /// 付款方式名称
  String get paymentTypeName;
  @override

  /// 渠道编码
  String get channelCode;
  @override

  /// 渠道名称
  String get channelName;
  @override

  /// 订单金额
  @String2DoubleJsonConverter()
  double get orderAmount;
  @override

  /// 平台订单编码
  String get merOrderNo;
  @override

  /// 跳转支付id
  @JsonKey(name: 'orderSeessionId')
  String get orderSessionId;
  @override

  /// 付款截止时间
  @StringTimestampNullableJsonConverter()
  DateTime? get payDeadline;
  @override

  /// 创建时间
  @StringTimestampNullableJsonConverter()
  DateTime? get createTime;
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailModelImplCopyWith<_$OrderDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillDetailModel _$BillDetailModelFromJson(Map<String, dynamic> json) {
  return _BillDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BillDetailModel {
  @String2IntNullableJsonConverter()
  int? get id => throw _privateConstructorUsedError;

  /// 学生主键
  @String2IntNullableJsonConverter()
  int? get studentId => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学校名称
  String get schoolName => throw _privateConstructorUsedError;

  /// 学生姓名
  String get studentName => throw _privateConstructorUsedError;

  /// 学生编码
  String get studentCode => throw _privateConstructorUsedError;

  /// 学生性别
  @GenderStringJsonConverter()
  Gender get gender => throw _privateConstructorUsedError;

  /// 性别名称
  String get genderName => throw _privateConstructorUsedError;

  /// 性别英文名称
  String get genderEngName => throw _privateConstructorUsedError;

  /// 当前学年学期编码
  String get yearTermCode => throw _privateConstructorUsedError;

  /// 学年学期编码
  String get nowYearTermCode => throw _privateConstructorUsedError;

  /// 学年学期
  String get yearTermName => throw _privateConstructorUsedError;

  /// 学年学期英文名称
  String get yearTermEngName => throw _privateConstructorUsedError;

  /// 学段编码
  String get phaseCode => throw _privateConstructorUsedError;

  /// 学段名称
  String get phaseName => throw _privateConstructorUsedError;

  /// 学段英文名称
  String get phaseEngName => throw _privateConstructorUsedError;

  /// 课程编码
  String get courseCode => throw _privateConstructorUsedError;

  /// 课程名称
  String get courseName => throw _privateConstructorUsedError;

  /// 课程英文名称
  String get courseEngName => throw _privateConstructorUsedError;

  /// 年级编码
  String get gradeCode => throw _privateConstructorUsedError;

  /// 年级名称
  String get gradeName => throw _privateConstructorUsedError;

  /// 年级英文名称
  String get gradeEngName => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 班级名称
  String get className => throw _privateConstructorUsedError;

  /// 班级英文名称
  String get classEngName => throw _privateConstructorUsedError;

  /// 收费标准类别编码
  String get standardCategoryCode => throw _privateConstructorUsedError;

  /// 收费标准类别名称
  String get standardCategoryName => throw _privateConstructorUsedError;

  /// 账单编号
  @JsonKey(name: 'billStudentCode')
  String? get billCode => throw _privateConstructorUsedError;

  /// 账单生成月份
  @String2IntNullableJsonConverter()
  int? get billMonth => throw _privateConstructorUsedError;

  /// 账单状态
  BillStatus get status => throw _privateConstructorUsedError;

  /// 账单状态中文名称
  String get statusName => throw _privateConstructorUsedError;

  /// 账单状态英文名称
  String get statusEngName => throw _privateConstructorUsedError;

  /// 创建时间
  @StringTimestampNullableJsonConverter()
  DateTime? get createdDate => throw _privateConstructorUsedError;

  /// 应付(微信实际支付)
  @String2DoubleJsonConverter()
  double get payAmount => throw _privateConstructorUsedError;

  /// 费用合计
  @String2DoubleJsonConverter()
  double get totalCost => throw _privateConstructorUsedError;

  /// 优惠合计
  @String2DoubleJsonConverter()
  double get benefitCost => throw _privateConstructorUsedError;

  /// 钱包抵扣
  @String2DoubleJsonConverter()
  double get walletCost => throw _privateConstructorUsedError;

  /// 账单合计
  @String2DoubleJsonConverter()
  double get billCost => throw _privateConstructorUsedError;

  /// 特殊折扣
  @String2DoubleJsonConverter()
  double get specialCost => throw _privateConstructorUsedError;

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get deductionCost => throw _privateConstructorUsedError;

  /// 余额抵扣
  @String2DoubleJsonConverter()
  double get balanceCost => throw _privateConstructorUsedError;

  /// 已缴合计
  @String2DoubleJsonConverter()
  double get paidCost => throw _privateConstructorUsedError;

  /// 退费金额
  @String2DoubleJsonConverter()
  double get refundCost => throw _privateConstructorUsedError;

  /// 有效时间
  @StringTimestampNullableJsonConverter()
  DateTime? get effectiveTime => throw _privateConstructorUsedError;

  /// 账单类别(需要对应字典)
  String? get billCategory => throw _privateConstructorUsedError;

  /// 账单类别中文名称
  String get billCategoryName => throw _privateConstructorUsedError;

  /// 账单类别英文名称
  String get billCategoryEngName => throw _privateConstructorUsedError;

  /// 收费项目
  @JsonKey(name: 'studentBillProjectVOS')
  List<BillProjectModel> get projectList => throw _privateConstructorUsedError;

  /// 优惠项目
  @JsonKey(name: 'studentBillBenefitVOS')
  List<BillBenefitModel> get benefitList => throw _privateConstructorUsedError;

  /// 订单详情
  @JsonKey(name: 'orderDetailVO')
  OrderDetailModel? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillDetailModelCopyWith<BillDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDetailModelCopyWith<$Res> {
  factory $BillDetailModelCopyWith(
          BillDetailModel value, $Res Function(BillDetailModel) then) =
      _$BillDetailModelCopyWithImpl<$Res, BillDetailModel>;
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? id,
      @String2IntNullableJsonConverter() int? studentId,
      String schoolCode,
      String schoolName,
      String studentName,
      String studentCode,
      @GenderStringJsonConverter() Gender gender,
      String genderName,
      String genderEngName,
      String yearTermCode,
      String nowYearTermCode,
      String yearTermName,
      String yearTermEngName,
      String phaseCode,
      String phaseName,
      String phaseEngName,
      String courseCode,
      String courseName,
      String courseEngName,
      String gradeCode,
      String gradeName,
      String gradeEngName,
      String classCode,
      String className,
      String classEngName,
      String standardCategoryCode,
      String standardCategoryName,
      @JsonKey(name: 'billStudentCode') String? billCode,
      @String2IntNullableJsonConverter() int? billMonth,
      BillStatus status,
      String statusName,
      String statusEngName,
      @StringTimestampNullableJsonConverter() DateTime? createdDate,
      @String2DoubleJsonConverter() double payAmount,
      @String2DoubleJsonConverter() double totalCost,
      @String2DoubleJsonConverter() double benefitCost,
      @String2DoubleJsonConverter() double walletCost,
      @String2DoubleJsonConverter() double billCost,
      @String2DoubleJsonConverter() double specialCost,
      @String2DoubleJsonConverter() double deductionCost,
      @String2DoubleJsonConverter() double balanceCost,
      @String2DoubleJsonConverter() double paidCost,
      @String2DoubleJsonConverter() double refundCost,
      @StringTimestampNullableJsonConverter() DateTime? effectiveTime,
      String? billCategory,
      String billCategoryName,
      String billCategoryEngName,
      @JsonKey(name: 'studentBillProjectVOS')
      List<BillProjectModel> projectList,
      @JsonKey(name: 'studentBillBenefitVOS')
      List<BillBenefitModel> benefitList,
      @JsonKey(name: 'orderDetailVO') OrderDetailModel? order});

  $OrderDetailModelCopyWith<$Res>? get order;
}

/// @nodoc
class _$BillDetailModelCopyWithImpl<$Res, $Val extends BillDetailModel>
    implements $BillDetailModelCopyWith<$Res> {
  _$BillDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? schoolCode = null,
    Object? schoolName = null,
    Object? studentName = null,
    Object? studentCode = null,
    Object? gender = null,
    Object? genderName = null,
    Object? genderEngName = null,
    Object? yearTermCode = null,
    Object? nowYearTermCode = null,
    Object? yearTermName = null,
    Object? yearTermEngName = null,
    Object? phaseCode = null,
    Object? phaseName = null,
    Object? phaseEngName = null,
    Object? courseCode = null,
    Object? courseName = null,
    Object? courseEngName = null,
    Object? gradeCode = null,
    Object? gradeName = null,
    Object? gradeEngName = null,
    Object? classCode = null,
    Object? className = null,
    Object? classEngName = null,
    Object? standardCategoryCode = null,
    Object? standardCategoryName = null,
    Object? billCode = freezed,
    Object? billMonth = freezed,
    Object? status = null,
    Object? statusName = null,
    Object? statusEngName = null,
    Object? createdDate = freezed,
    Object? payAmount = null,
    Object? totalCost = null,
    Object? benefitCost = null,
    Object? walletCost = null,
    Object? billCost = null,
    Object? specialCost = null,
    Object? deductionCost = null,
    Object? balanceCost = null,
    Object? paidCost = null,
    Object? refundCost = null,
    Object? effectiveTime = freezed,
    Object? billCategory = freezed,
    Object? billCategoryName = null,
    Object? billCategoryEngName = null,
    Object? projectList = null,
    Object? benefitList = null,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      genderName: null == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
              as String,
      genderEngName: null == genderEngName
          ? _value.genderEngName
          : genderEngName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      nowYearTermCode: null == nowYearTermCode
          ? _value.nowYearTermCode
          : nowYearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermName: null == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermEngName: null == yearTermEngName
          ? _value.yearTermEngName
          : yearTermEngName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseEngName: null == phaseEngName
          ? _value.phaseEngName
          : phaseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseEngName: null == courseEngName
          ? _value.courseEngName
          : courseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeEngName: null == gradeEngName
          ? _value.gradeEngName
          : gradeEngName // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classEngName: null == classEngName
          ? _value.classEngName
          : classEngName // ignore: cast_nullable_to_non_nullable
              as String,
      standardCategoryCode: null == standardCategoryCode
          ? _value.standardCategoryCode
          : standardCategoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      standardCategoryName: null == standardCategoryName
          ? _value.standardCategoryName
          : standardCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      billCode: freezed == billCode
          ? _value.billCode
          : billCode // ignore: cast_nullable_to_non_nullable
              as String?,
      billMonth: freezed == billMonth
          ? _value.billMonth
          : billMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillStatus,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      statusEngName: null == statusEngName
          ? _value.statusEngName
          : statusEngName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      benefitCost: null == benefitCost
          ? _value.benefitCost
          : benefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      walletCost: null == walletCost
          ? _value.walletCost
          : walletCost // ignore: cast_nullable_to_non_nullable
              as double,
      billCost: null == billCost
          ? _value.billCost
          : billCost // ignore: cast_nullable_to_non_nullable
              as double,
      specialCost: null == specialCost
          ? _value.specialCost
          : specialCost // ignore: cast_nullable_to_non_nullable
              as double,
      deductionCost: null == deductionCost
          ? _value.deductionCost
          : deductionCost // ignore: cast_nullable_to_non_nullable
              as double,
      balanceCost: null == balanceCost
          ? _value.balanceCost
          : balanceCost // ignore: cast_nullable_to_non_nullable
              as double,
      paidCost: null == paidCost
          ? _value.paidCost
          : paidCost // ignore: cast_nullable_to_non_nullable
              as double,
      refundCost: null == refundCost
          ? _value.refundCost
          : refundCost // ignore: cast_nullable_to_non_nullable
              as double,
      effectiveTime: freezed == effectiveTime
          ? _value.effectiveTime
          : effectiveTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      billCategory: freezed == billCategory
          ? _value.billCategory
          : billCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      billCategoryName: null == billCategoryName
          ? _value.billCategoryName
          : billCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      billCategoryEngName: null == billCategoryEngName
          ? _value.billCategoryEngName
          : billCategoryEngName // ignore: cast_nullable_to_non_nullable
              as String,
      projectList: null == projectList
          ? _value.projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<BillProjectModel>,
      benefitList: null == benefitList
          ? _value.benefitList
          : benefitList // ignore: cast_nullable_to_non_nullable
              as List<BillBenefitModel>,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDetailModelCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderDetailModelCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BillDetailModelImplCopyWith<$Res>
    implements $BillDetailModelCopyWith<$Res> {
  factory _$$BillDetailModelImplCopyWith(_$BillDetailModelImpl value,
          $Res Function(_$BillDetailModelImpl) then) =
      __$$BillDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? id,
      @String2IntNullableJsonConverter() int? studentId,
      String schoolCode,
      String schoolName,
      String studentName,
      String studentCode,
      @GenderStringJsonConverter() Gender gender,
      String genderName,
      String genderEngName,
      String yearTermCode,
      String nowYearTermCode,
      String yearTermName,
      String yearTermEngName,
      String phaseCode,
      String phaseName,
      String phaseEngName,
      String courseCode,
      String courseName,
      String courseEngName,
      String gradeCode,
      String gradeName,
      String gradeEngName,
      String classCode,
      String className,
      String classEngName,
      String standardCategoryCode,
      String standardCategoryName,
      @JsonKey(name: 'billStudentCode') String? billCode,
      @String2IntNullableJsonConverter() int? billMonth,
      BillStatus status,
      String statusName,
      String statusEngName,
      @StringTimestampNullableJsonConverter() DateTime? createdDate,
      @String2DoubleJsonConverter() double payAmount,
      @String2DoubleJsonConverter() double totalCost,
      @String2DoubleJsonConverter() double benefitCost,
      @String2DoubleJsonConverter() double walletCost,
      @String2DoubleJsonConverter() double billCost,
      @String2DoubleJsonConverter() double specialCost,
      @String2DoubleJsonConverter() double deductionCost,
      @String2DoubleJsonConverter() double balanceCost,
      @String2DoubleJsonConverter() double paidCost,
      @String2DoubleJsonConverter() double refundCost,
      @StringTimestampNullableJsonConverter() DateTime? effectiveTime,
      String? billCategory,
      String billCategoryName,
      String billCategoryEngName,
      @JsonKey(name: 'studentBillProjectVOS')
      List<BillProjectModel> projectList,
      @JsonKey(name: 'studentBillBenefitVOS')
      List<BillBenefitModel> benefitList,
      @JsonKey(name: 'orderDetailVO') OrderDetailModel? order});

  @override
  $OrderDetailModelCopyWith<$Res>? get order;
}

/// @nodoc
class __$$BillDetailModelImplCopyWithImpl<$Res>
    extends _$BillDetailModelCopyWithImpl<$Res, _$BillDetailModelImpl>
    implements _$$BillDetailModelImplCopyWith<$Res> {
  __$$BillDetailModelImplCopyWithImpl(
      _$BillDetailModelImpl _value, $Res Function(_$BillDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? schoolCode = null,
    Object? schoolName = null,
    Object? studentName = null,
    Object? studentCode = null,
    Object? gender = null,
    Object? genderName = null,
    Object? genderEngName = null,
    Object? yearTermCode = null,
    Object? nowYearTermCode = null,
    Object? yearTermName = null,
    Object? yearTermEngName = null,
    Object? phaseCode = null,
    Object? phaseName = null,
    Object? phaseEngName = null,
    Object? courseCode = null,
    Object? courseName = null,
    Object? courseEngName = null,
    Object? gradeCode = null,
    Object? gradeName = null,
    Object? gradeEngName = null,
    Object? classCode = null,
    Object? className = null,
    Object? classEngName = null,
    Object? standardCategoryCode = null,
    Object? standardCategoryName = null,
    Object? billCode = freezed,
    Object? billMonth = freezed,
    Object? status = null,
    Object? statusName = null,
    Object? statusEngName = null,
    Object? createdDate = freezed,
    Object? payAmount = null,
    Object? totalCost = null,
    Object? benefitCost = null,
    Object? walletCost = null,
    Object? billCost = null,
    Object? specialCost = null,
    Object? deductionCost = null,
    Object? balanceCost = null,
    Object? paidCost = null,
    Object? refundCost = null,
    Object? effectiveTime = freezed,
    Object? billCategory = freezed,
    Object? billCategoryName = null,
    Object? billCategoryEngName = null,
    Object? projectList = null,
    Object? benefitList = null,
    Object? order = freezed,
  }) {
    return _then(_$BillDetailModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      studentName: null == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      genderName: null == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
              as String,
      genderEngName: null == genderEngName
          ? _value.genderEngName
          : genderEngName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermCode: null == yearTermCode
          ? _value.yearTermCode
          : yearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      nowYearTermCode: null == nowYearTermCode
          ? _value.nowYearTermCode
          : nowYearTermCode // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermName: null == yearTermName
          ? _value.yearTermName
          : yearTermName // ignore: cast_nullable_to_non_nullable
              as String,
      yearTermEngName: null == yearTermEngName
          ? _value.yearTermEngName
          : yearTermEngName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseCode: null == phaseCode
          ? _value.phaseCode
          : phaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      phaseName: null == phaseName
          ? _value.phaseName
          : phaseName // ignore: cast_nullable_to_non_nullable
              as String,
      phaseEngName: null == phaseEngName
          ? _value.phaseEngName
          : phaseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      courseCode: null == courseCode
          ? _value.courseCode
          : courseCode // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      courseEngName: null == courseEngName
          ? _value.courseEngName
          : courseEngName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeCode: null == gradeCode
          ? _value.gradeCode
          : gradeCode // ignore: cast_nullable_to_non_nullable
              as String,
      gradeName: null == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String,
      gradeEngName: null == gradeEngName
          ? _value.gradeEngName
          : gradeEngName // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      classEngName: null == classEngName
          ? _value.classEngName
          : classEngName // ignore: cast_nullable_to_non_nullable
              as String,
      standardCategoryCode: null == standardCategoryCode
          ? _value.standardCategoryCode
          : standardCategoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      standardCategoryName: null == standardCategoryName
          ? _value.standardCategoryName
          : standardCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      billCode: freezed == billCode
          ? _value.billCode
          : billCode // ignore: cast_nullable_to_non_nullable
              as String?,
      billMonth: freezed == billMonth
          ? _value.billMonth
          : billMonth // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BillStatus,
      statusName: null == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as String,
      statusEngName: null == statusEngName
          ? _value.statusEngName
          : statusEngName // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payAmount: null == payAmount
          ? _value.payAmount
          : payAmount // ignore: cast_nullable_to_non_nullable
              as double,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      benefitCost: null == benefitCost
          ? _value.benefitCost
          : benefitCost // ignore: cast_nullable_to_non_nullable
              as double,
      walletCost: null == walletCost
          ? _value.walletCost
          : walletCost // ignore: cast_nullable_to_non_nullable
              as double,
      billCost: null == billCost
          ? _value.billCost
          : billCost // ignore: cast_nullable_to_non_nullable
              as double,
      specialCost: null == specialCost
          ? _value.specialCost
          : specialCost // ignore: cast_nullable_to_non_nullable
              as double,
      deductionCost: null == deductionCost
          ? _value.deductionCost
          : deductionCost // ignore: cast_nullable_to_non_nullable
              as double,
      balanceCost: null == balanceCost
          ? _value.balanceCost
          : balanceCost // ignore: cast_nullable_to_non_nullable
              as double,
      paidCost: null == paidCost
          ? _value.paidCost
          : paidCost // ignore: cast_nullable_to_non_nullable
              as double,
      refundCost: null == refundCost
          ? _value.refundCost
          : refundCost // ignore: cast_nullable_to_non_nullable
              as double,
      effectiveTime: freezed == effectiveTime
          ? _value.effectiveTime
          : effectiveTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      billCategory: freezed == billCategory
          ? _value.billCategory
          : billCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      billCategoryName: null == billCategoryName
          ? _value.billCategoryName
          : billCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      billCategoryEngName: null == billCategoryEngName
          ? _value.billCategoryEngName
          : billCategoryEngName // ignore: cast_nullable_to_non_nullable
              as String,
      projectList: null == projectList
          ? _value._projectList
          : projectList // ignore: cast_nullable_to_non_nullable
              as List<BillProjectModel>,
      benefitList: null == benefitList
          ? _value._benefitList
          : benefitList // ignore: cast_nullable_to_non_nullable
              as List<BillBenefitModel>,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDetailModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillDetailModelImpl extends _BillDetailModel {
  const _$BillDetailModelImpl(
      {@String2IntNullableJsonConverter() this.id,
      @String2IntNullableJsonConverter() this.studentId,
      this.schoolCode = '',
      this.schoolName = '',
      this.studentName = '',
      this.studentCode = '',
      @GenderStringJsonConverter() this.gender = Gender.unknown,
      this.genderName = '',
      this.genderEngName = '',
      this.yearTermCode = '',
      this.nowYearTermCode = '',
      this.yearTermName = '',
      this.yearTermEngName = '',
      this.phaseCode = '',
      this.phaseName = '',
      this.phaseEngName = '',
      this.courseCode = '',
      this.courseName = '',
      this.courseEngName = '',
      this.gradeCode = '',
      this.gradeName = '',
      this.gradeEngName = '',
      this.classCode = '',
      this.className = '',
      this.classEngName = '',
      this.standardCategoryCode = '',
      this.standardCategoryName = '',
      @JsonKey(name: 'billStudentCode') this.billCode,
      @String2IntNullableJsonConverter() this.billMonth,
      this.status = BillStatus.unknown,
      this.statusName = '',
      this.statusEngName = '',
      @StringTimestampNullableJsonConverter() this.createdDate,
      @String2DoubleJsonConverter() this.payAmount = 0,
      @String2DoubleJsonConverter() this.totalCost = 0,
      @String2DoubleJsonConverter() this.benefitCost = 0,
      @String2DoubleJsonConverter() this.walletCost = 0,
      @String2DoubleJsonConverter() this.billCost = 0,
      @String2DoubleJsonConverter() this.specialCost = 0,
      @String2DoubleJsonConverter() this.deductionCost = 0,
      @String2DoubleJsonConverter() this.balanceCost = 0,
      @String2DoubleJsonConverter() this.paidCost = 0,
      @String2DoubleJsonConverter() this.refundCost = 0,
      @StringTimestampNullableJsonConverter() this.effectiveTime,
      this.billCategory,
      this.billCategoryName = '',
      this.billCategoryEngName = '',
      @JsonKey(name: 'studentBillProjectVOS')
      final List<BillProjectModel> projectList = const [],
      @JsonKey(name: 'studentBillBenefitVOS')
      final List<BillBenefitModel> benefitList = const [],
      @JsonKey(name: 'orderDetailVO') this.order})
      : _projectList = projectList,
        _benefitList = benefitList,
        super._();

  factory _$BillDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillDetailModelImplFromJson(json);

  @override
  @String2IntNullableJsonConverter()
  final int? id;

  /// 学生主键
  @override
  @String2IntNullableJsonConverter()
  final int? studentId;

  /// 学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 学校名称
  @override
  @JsonKey()
  final String schoolName;

  /// 学生姓名
  @override
  @JsonKey()
  final String studentName;

  /// 学生编码
  @override
  @JsonKey()
  final String studentCode;

  /// 学生性别
  @override
  @JsonKey()
  @GenderStringJsonConverter()
  final Gender gender;

  /// 性别名称
  @override
  @JsonKey()
  final String genderName;

  /// 性别英文名称
  @override
  @JsonKey()
  final String genderEngName;

  /// 当前学年学期编码
  @override
  @JsonKey()
  final String yearTermCode;

  /// 学年学期编码
  @override
  @JsonKey()
  final String nowYearTermCode;

  /// 学年学期
  @override
  @JsonKey()
  final String yearTermName;

  /// 学年学期英文名称
  @override
  @JsonKey()
  final String yearTermEngName;

  /// 学段编码
  @override
  @JsonKey()
  final String phaseCode;

  /// 学段名称
  @override
  @JsonKey()
  final String phaseName;

  /// 学段英文名称
  @override
  @JsonKey()
  final String phaseEngName;

  /// 课程编码
  @override
  @JsonKey()
  final String courseCode;

  /// 课程名称
  @override
  @JsonKey()
  final String courseName;

  /// 课程英文名称
  @override
  @JsonKey()
  final String courseEngName;

  /// 年级编码
  @override
  @JsonKey()
  final String gradeCode;

  /// 年级名称
  @override
  @JsonKey()
  final String gradeName;

  /// 年级英文名称
  @override
  @JsonKey()
  final String gradeEngName;

  /// 班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 班级名称
  @override
  @JsonKey()
  final String className;

  /// 班级英文名称
  @override
  @JsonKey()
  final String classEngName;

  /// 收费标准类别编码
  @override
  @JsonKey()
  final String standardCategoryCode;

  /// 收费标准类别名称
  @override
  @JsonKey()
  final String standardCategoryName;

  /// 账单编号
  @override
  @JsonKey(name: 'billStudentCode')
  final String? billCode;

  /// 账单生成月份
  @override
  @String2IntNullableJsonConverter()
  final int? billMonth;

  /// 账单状态
  @override
  @JsonKey()
  final BillStatus status;

  /// 账单状态中文名称
  @override
  @JsonKey()
  final String statusName;

  /// 账单状态英文名称
  @override
  @JsonKey()
  final String statusEngName;

  /// 创建时间
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? createdDate;

  /// 应付(微信实际支付)
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double payAmount;

  /// 费用合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double totalCost;

  /// 优惠合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double benefitCost;

  /// 钱包抵扣
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double walletCost;

  /// 账单合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double billCost;

  /// 特殊折扣
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double specialCost;

  /// 抵扣金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double deductionCost;

  /// 余额抵扣
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double balanceCost;

  /// 已缴合计
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double paidCost;

  /// 退费金额
  @override
  @JsonKey()
  @String2DoubleJsonConverter()
  final double refundCost;

  /// 有效时间
  @override
  @StringTimestampNullableJsonConverter()
  final DateTime? effectiveTime;

  /// 账单类别(需要对应字典)
  @override
  final String? billCategory;

  /// 账单类别中文名称
  @override
  @JsonKey()
  final String billCategoryName;

  /// 账单类别英文名称
  @override
  @JsonKey()
  final String billCategoryEngName;

  /// 收费项目
  final List<BillProjectModel> _projectList;

  /// 收费项目
  @override
  @JsonKey(name: 'studentBillProjectVOS')
  List<BillProjectModel> get projectList {
    if (_projectList is EqualUnmodifiableListView) return _projectList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectList);
  }

  /// 优惠项目
  final List<BillBenefitModel> _benefitList;

  /// 优惠项目
  @override
  @JsonKey(name: 'studentBillBenefitVOS')
  List<BillBenefitModel> get benefitList {
    if (_benefitList is EqualUnmodifiableListView) return _benefitList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefitList);
  }

  /// 订单详情
  @override
  @JsonKey(name: 'orderDetailVO')
  final OrderDetailModel? order;

  @override
  String toString() {
    return 'BillDetailModel(id: $id, studentId: $studentId, schoolCode: $schoolCode, schoolName: $schoolName, studentName: $studentName, studentCode: $studentCode, gender: $gender, genderName: $genderName, genderEngName: $genderEngName, yearTermCode: $yearTermCode, nowYearTermCode: $nowYearTermCode, yearTermName: $yearTermName, yearTermEngName: $yearTermEngName, phaseCode: $phaseCode, phaseName: $phaseName, phaseEngName: $phaseEngName, courseCode: $courseCode, courseName: $courseName, courseEngName: $courseEngName, gradeCode: $gradeCode, gradeName: $gradeName, gradeEngName: $gradeEngName, classCode: $classCode, className: $className, classEngName: $classEngName, standardCategoryCode: $standardCategoryCode, standardCategoryName: $standardCategoryName, billCode: $billCode, billMonth: $billMonth, status: $status, statusName: $statusName, statusEngName: $statusEngName, createdDate: $createdDate, payAmount: $payAmount, totalCost: $totalCost, benefitCost: $benefitCost, walletCost: $walletCost, billCost: $billCost, specialCost: $specialCost, deductionCost: $deductionCost, balanceCost: $balanceCost, paidCost: $paidCost, refundCost: $refundCost, effectiveTime: $effectiveTime, billCategory: $billCategory, billCategoryName: $billCategoryName, billCategoryEngName: $billCategoryEngName, projectList: $projectList, benefitList: $benefitList, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.genderName, genderName) ||
                other.genderName == genderName) &&
            (identical(other.genderEngName, genderEngName) ||
                other.genderEngName == genderEngName) &&
            (identical(other.yearTermCode, yearTermCode) ||
                other.yearTermCode == yearTermCode) &&
            (identical(other.nowYearTermCode, nowYearTermCode) ||
                other.nowYearTermCode == nowYearTermCode) &&
            (identical(other.yearTermName, yearTermName) ||
                other.yearTermName == yearTermName) &&
            (identical(other.yearTermEngName, yearTermEngName) ||
                other.yearTermEngName == yearTermEngName) &&
            (identical(other.phaseCode, phaseCode) ||
                other.phaseCode == phaseCode) &&
            (identical(other.phaseName, phaseName) ||
                other.phaseName == phaseName) &&
            (identical(other.phaseEngName, phaseEngName) ||
                other.phaseEngName == phaseEngName) &&
            (identical(other.courseCode, courseCode) ||
                other.courseCode == courseCode) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.courseEngName, courseEngName) ||
                other.courseEngName == courseEngName) &&
            (identical(other.gradeCode, gradeCode) ||
                other.gradeCode == gradeCode) &&
            (identical(other.gradeName, gradeName) ||
                other.gradeName == gradeName) &&
            (identical(other.gradeEngName, gradeEngName) ||
                other.gradeEngName == gradeEngName) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.classEngName, classEngName) ||
                other.classEngName == classEngName) &&
            (identical(other.standardCategoryCode, standardCategoryCode) ||
                other.standardCategoryCode == standardCategoryCode) &&
            (identical(other.standardCategoryName, standardCategoryName) ||
                other.standardCategoryName == standardCategoryName) &&
            (identical(other.billCode, billCode) ||
                other.billCode == billCode) &&
            (identical(other.billMonth, billMonth) ||
                other.billMonth == billMonth) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusName, statusName) ||
                other.statusName == statusName) &&
            (identical(other.statusEngName, statusEngName) ||
                other.statusEngName == statusEngName) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.payAmount, payAmount) ||
                other.payAmount == payAmount) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.benefitCost, benefitCost) ||
                other.benefitCost == benefitCost) &&
            (identical(other.walletCost, walletCost) ||
                other.walletCost == walletCost) &&
            (identical(other.billCost, billCost) ||
                other.billCost == billCost) &&
            (identical(other.specialCost, specialCost) ||
                other.specialCost == specialCost) &&
            (identical(other.deductionCost, deductionCost) ||
                other.deductionCost == deductionCost) &&
            (identical(other.balanceCost, balanceCost) ||
                other.balanceCost == balanceCost) &&
            (identical(other.paidCost, paidCost) ||
                other.paidCost == paidCost) &&
            (identical(other.refundCost, refundCost) ||
                other.refundCost == refundCost) &&
            (identical(other.effectiveTime, effectiveTime) ||
                other.effectiveTime == effectiveTime) &&
            (identical(other.billCategory, billCategory) ||
                other.billCategory == billCategory) &&
            (identical(other.billCategoryName, billCategoryName) ||
                other.billCategoryName == billCategoryName) &&
            (identical(other.billCategoryEngName, billCategoryEngName) || other.billCategoryEngName == billCategoryEngName) &&
            const DeepCollectionEquality().equals(other._projectList, _projectList) &&
            const DeepCollectionEquality().equals(other._benefitList, _benefitList) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        studentId,
        schoolCode,
        schoolName,
        studentName,
        studentCode,
        gender,
        genderName,
        genderEngName,
        yearTermCode,
        nowYearTermCode,
        yearTermName,
        yearTermEngName,
        phaseCode,
        phaseName,
        phaseEngName,
        courseCode,
        courseName,
        courseEngName,
        gradeCode,
        gradeName,
        gradeEngName,
        classCode,
        className,
        classEngName,
        standardCategoryCode,
        standardCategoryName,
        billCode,
        billMonth,
        status,
        statusName,
        statusEngName,
        createdDate,
        payAmount,
        totalCost,
        benefitCost,
        walletCost,
        billCost,
        specialCost,
        deductionCost,
        balanceCost,
        paidCost,
        refundCost,
        effectiveTime,
        billCategory,
        billCategoryName,
        billCategoryEngName,
        const DeepCollectionEquality().hash(_projectList),
        const DeepCollectionEquality().hash(_benefitList),
        order
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillDetailModelImplCopyWith<_$BillDetailModelImpl> get copyWith =>
      __$$BillDetailModelImplCopyWithImpl<_$BillDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillDetailModelImplToJson(
      this,
    );
  }
}

abstract class _BillDetailModel extends BillDetailModel {
  const factory _BillDetailModel(
          {@String2IntNullableJsonConverter() final int? id,
          @String2IntNullableJsonConverter() final int? studentId,
          final String schoolCode,
          final String schoolName,
          final String studentName,
          final String studentCode,
          @GenderStringJsonConverter() final Gender gender,
          final String genderName,
          final String genderEngName,
          final String yearTermCode,
          final String nowYearTermCode,
          final String yearTermName,
          final String yearTermEngName,
          final String phaseCode,
          final String phaseName,
          final String phaseEngName,
          final String courseCode,
          final String courseName,
          final String courseEngName,
          final String gradeCode,
          final String gradeName,
          final String gradeEngName,
          final String classCode,
          final String className,
          final String classEngName,
          final String standardCategoryCode,
          final String standardCategoryName,
          @JsonKey(name: 'billStudentCode') final String? billCode,
          @String2IntNullableJsonConverter() final int? billMonth,
          final BillStatus status,
          final String statusName,
          final String statusEngName,
          @StringTimestampNullableJsonConverter() final DateTime? createdDate,
          @String2DoubleJsonConverter() final double payAmount,
          @String2DoubleJsonConverter() final double totalCost,
          @String2DoubleJsonConverter() final double benefitCost,
          @String2DoubleJsonConverter() final double walletCost,
          @String2DoubleJsonConverter() final double billCost,
          @String2DoubleJsonConverter() final double specialCost,
          @String2DoubleJsonConverter() final double deductionCost,
          @String2DoubleJsonConverter() final double balanceCost,
          @String2DoubleJsonConverter() final double paidCost,
          @String2DoubleJsonConverter() final double refundCost,
          @StringTimestampNullableJsonConverter() final DateTime? effectiveTime,
          final String? billCategory,
          final String billCategoryName,
          final String billCategoryEngName,
          @JsonKey(name: 'studentBillProjectVOS')
          final List<BillProjectModel> projectList,
          @JsonKey(name: 'studentBillBenefitVOS')
          final List<BillBenefitModel> benefitList,
          @JsonKey(name: 'orderDetailVO') final OrderDetailModel? order}) =
      _$BillDetailModelImpl;
  const _BillDetailModel._() : super._();

  factory _BillDetailModel.fromJson(Map<String, dynamic> json) =
      _$BillDetailModelImpl.fromJson;

  @override
  @String2IntNullableJsonConverter()
  int? get id;
  @override

  /// 学生主键
  @String2IntNullableJsonConverter()
  int? get studentId;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 学校名称
  String get schoolName;
  @override

  /// 学生姓名
  String get studentName;
  @override

  /// 学生编码
  String get studentCode;
  @override

  /// 学生性别
  @GenderStringJsonConverter()
  Gender get gender;
  @override

  /// 性别名称
  String get genderName;
  @override

  /// 性别英文名称
  String get genderEngName;
  @override

  /// 当前学年学期编码
  String get yearTermCode;
  @override

  /// 学年学期编码
  String get nowYearTermCode;
  @override

  /// 学年学期
  String get yearTermName;
  @override

  /// 学年学期英文名称
  String get yearTermEngName;
  @override

  /// 学段编码
  String get phaseCode;
  @override

  /// 学段名称
  String get phaseName;
  @override

  /// 学段英文名称
  String get phaseEngName;
  @override

  /// 课程编码
  String get courseCode;
  @override

  /// 课程名称
  String get courseName;
  @override

  /// 课程英文名称
  String get courseEngName;
  @override

  /// 年级编码
  String get gradeCode;
  @override

  /// 年级名称
  String get gradeName;
  @override

  /// 年级英文名称
  String get gradeEngName;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 班级名称
  String get className;
  @override

  /// 班级英文名称
  String get classEngName;
  @override

  /// 收费标准类别编码
  String get standardCategoryCode;
  @override

  /// 收费标准类别名称
  String get standardCategoryName;
  @override

  /// 账单编号
  @JsonKey(name: 'billStudentCode')
  String? get billCode;
  @override

  /// 账单生成月份
  @String2IntNullableJsonConverter()
  int? get billMonth;
  @override

  /// 账单状态
  BillStatus get status;
  @override

  /// 账单状态中文名称
  String get statusName;
  @override

  /// 账单状态英文名称
  String get statusEngName;
  @override

  /// 创建时间
  @StringTimestampNullableJsonConverter()
  DateTime? get createdDate;
  @override

  /// 应付(微信实际支付)
  @String2DoubleJsonConverter()
  double get payAmount;
  @override

  /// 费用合计
  @String2DoubleJsonConverter()
  double get totalCost;
  @override

  /// 优惠合计
  @String2DoubleJsonConverter()
  double get benefitCost;
  @override

  /// 钱包抵扣
  @String2DoubleJsonConverter()
  double get walletCost;
  @override

  /// 账单合计
  @String2DoubleJsonConverter()
  double get billCost;
  @override

  /// 特殊折扣
  @String2DoubleJsonConverter()
  double get specialCost;
  @override

  /// 抵扣金额
  @String2DoubleJsonConverter()
  double get deductionCost;
  @override

  /// 余额抵扣
  @String2DoubleJsonConverter()
  double get balanceCost;
  @override

  /// 已缴合计
  @String2DoubleJsonConverter()
  double get paidCost;
  @override

  /// 退费金额
  @String2DoubleJsonConverter()
  double get refundCost;
  @override

  /// 有效时间
  @StringTimestampNullableJsonConverter()
  DateTime? get effectiveTime;
  @override

  /// 账单类别(需要对应字典)
  String? get billCategory;
  @override

  /// 账单类别中文名称
  String get billCategoryName;
  @override

  /// 账单类别英文名称
  String get billCategoryEngName;
  @override

  /// 收费项目
  @JsonKey(name: 'studentBillProjectVOS')
  List<BillProjectModel> get projectList;
  @override

  /// 优惠项目
  @JsonKey(name: 'studentBillBenefitVOS')
  List<BillBenefitModel> get benefitList;
  @override

  /// 订单详情
  @JsonKey(name: 'orderDetailVO')
  OrderDetailModel? get order;
  @override
  @JsonKey(ignore: true)
  _$$BillDetailModelImplCopyWith<_$BillDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelModel _$ChannelModelFromJson(Map<String, dynamic> json) {
  return _ChannelModel.fromJson(json);
}

/// @nodoc
mixin _$ChannelModel {
  /// id
  String? get appId => throw _privateConstructorUsedError;

  /// 主键
  String? get id => throw _privateConstructorUsedError;

  /// 渠道id
  String? get channelId => throw _privateConstructorUsedError;

  /// 渠道名称
  String get channelName => throw _privateConstructorUsedError;

  /// 银行编码
  String get bankCode => throw _privateConstructorUsedError;

  /// 银行名称
  String get bankName => throw _privateConstructorUsedError;

  /// 分支行名称
  String get branchBankName => throw _privateConstructorUsedError;

  /// 银行账号
  String get bankAccountNo => throw _privateConstructorUsedError;

  /// 商户id
  String? get merchantId => throw _privateConstructorUsedError;

  /// 商户号
  String? get merchantCode => throw _privateConstructorUsedError;

  /// 商户名称
  String get merchantName => throw _privateConstructorUsedError;

  /// 账号名
  String get accountName => throw _privateConstructorUsedError;

  /// 二维码
  String? get qrCodeUrl => throw _privateConstructorUsedError;

  /// 状态
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelModelCopyWith<ChannelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelModelCopyWith<$Res> {
  factory $ChannelModelCopyWith(
          ChannelModel value, $Res Function(ChannelModel) then) =
      _$ChannelModelCopyWithImpl<$Res, ChannelModel>;
  @useResult
  $Res call(
      {String? appId,
      String? id,
      String? channelId,
      String channelName,
      String bankCode,
      String bankName,
      String branchBankName,
      String bankAccountNo,
      String? merchantId,
      String? merchantCode,
      String merchantName,
      String accountName,
      String? qrCodeUrl,
      String? status});
}

/// @nodoc
class _$ChannelModelCopyWithImpl<$Res, $Val extends ChannelModel>
    implements $ChannelModelCopyWith<$Res> {
  _$ChannelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? id = freezed,
    Object? channelId = freezed,
    Object? channelName = null,
    Object? bankCode = null,
    Object? bankName = null,
    Object? branchBankName = null,
    Object? bankAccountNo = null,
    Object? merchantId = freezed,
    Object? merchantCode = freezed,
    Object? merchantName = null,
    Object? accountName = null,
    Object? qrCodeUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      branchBankName: null == branchBankName
          ? _value.branchBankName
          : branchBankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountNo: null == bankAccountNo
          ? _value.bankAccountNo
          : bankAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      qrCodeUrl: freezed == qrCodeUrl
          ? _value.qrCodeUrl
          : qrCodeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelModelImplCopyWith<$Res>
    implements $ChannelModelCopyWith<$Res> {
  factory _$$ChannelModelImplCopyWith(
          _$ChannelModelImpl value, $Res Function(_$ChannelModelImpl) then) =
      __$$ChannelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? appId,
      String? id,
      String? channelId,
      String channelName,
      String bankCode,
      String bankName,
      String branchBankName,
      String bankAccountNo,
      String? merchantId,
      String? merchantCode,
      String merchantName,
      String accountName,
      String? qrCodeUrl,
      String? status});
}

/// @nodoc
class __$$ChannelModelImplCopyWithImpl<$Res>
    extends _$ChannelModelCopyWithImpl<$Res, _$ChannelModelImpl>
    implements _$$ChannelModelImplCopyWith<$Res> {
  __$$ChannelModelImplCopyWithImpl(
      _$ChannelModelImpl _value, $Res Function(_$ChannelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? id = freezed,
    Object? channelId = freezed,
    Object? channelName = null,
    Object? bankCode = null,
    Object? bankName = null,
    Object? branchBankName = null,
    Object? bankAccountNo = null,
    Object? merchantId = freezed,
    Object? merchantCode = freezed,
    Object? merchantName = null,
    Object? accountName = null,
    Object? qrCodeUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ChannelModelImpl(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
      bankCode: null == bankCode
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      branchBankName: null == branchBankName
          ? _value.branchBankName
          : branchBankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountNo: null == bankAccountNo
          ? _value.bankAccountNo
          : bankAccountNo // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: freezed == merchantId
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: null == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      qrCodeUrl: freezed == qrCodeUrl
          ? _value.qrCodeUrl
          : qrCodeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelModelImpl extends _ChannelModel {
  const _$ChannelModelImpl(
      {this.appId,
      this.id,
      this.channelId,
      this.channelName = '',
      this.bankCode = '',
      this.bankName = '',
      this.branchBankName = '',
      this.bankAccountNo = '',
      this.merchantId,
      this.merchantCode,
      this.merchantName = '',
      this.accountName = '',
      this.qrCodeUrl,
      this.status})
      : super._();

  factory _$ChannelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelModelImplFromJson(json);

  /// id
  @override
  final String? appId;

  /// 主键
  @override
  final String? id;

  /// 渠道id
  @override
  final String? channelId;

  /// 渠道名称
  @override
  @JsonKey()
  final String channelName;

  /// 银行编码
  @override
  @JsonKey()
  final String bankCode;

  /// 银行名称
  @override
  @JsonKey()
  final String bankName;

  /// 分支行名称
  @override
  @JsonKey()
  final String branchBankName;

  /// 银行账号
  @override
  @JsonKey()
  final String bankAccountNo;

  /// 商户id
  @override
  final String? merchantId;

  /// 商户号
  @override
  final String? merchantCode;

  /// 商户名称
  @override
  @JsonKey()
  final String merchantName;

  /// 账号名
  @override
  @JsonKey()
  final String accountName;

  /// 二维码
  @override
  final String? qrCodeUrl;

  /// 状态
  @override
  final String? status;

  @override
  String toString() {
    return 'ChannelModel(appId: $appId, id: $id, channelId: $channelId, channelName: $channelName, bankCode: $bankCode, bankName: $bankName, branchBankName: $branchBankName, bankAccountNo: $bankAccountNo, merchantId: $merchantId, merchantCode: $merchantCode, merchantName: $merchantName, accountName: $accountName, qrCodeUrl: $qrCodeUrl, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelModelImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName) &&
            (identical(other.bankCode, bankCode) ||
                other.bankCode == bankCode) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.branchBankName, branchBankName) ||
                other.branchBankName == branchBankName) &&
            (identical(other.bankAccountNo, bankAccountNo) ||
                other.bankAccountNo == bankAccountNo) &&
            (identical(other.merchantId, merchantId) ||
                other.merchantId == merchantId) &&
            (identical(other.merchantCode, merchantCode) ||
                other.merchantCode == merchantCode) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.qrCodeUrl, qrCodeUrl) ||
                other.qrCodeUrl == qrCodeUrl) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appId,
      id,
      channelId,
      channelName,
      bankCode,
      bankName,
      branchBankName,
      bankAccountNo,
      merchantId,
      merchantCode,
      merchantName,
      accountName,
      qrCodeUrl,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelModelImplCopyWith<_$ChannelModelImpl> get copyWith =>
      __$$ChannelModelImplCopyWithImpl<_$ChannelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelModelImplToJson(
      this,
    );
  }
}

abstract class _ChannelModel extends ChannelModel {
  const factory _ChannelModel(
      {final String? appId,
      final String? id,
      final String? channelId,
      final String channelName,
      final String bankCode,
      final String bankName,
      final String branchBankName,
      final String bankAccountNo,
      final String? merchantId,
      final String? merchantCode,
      final String merchantName,
      final String accountName,
      final String? qrCodeUrl,
      final String? status}) = _$ChannelModelImpl;
  const _ChannelModel._() : super._();

  factory _ChannelModel.fromJson(Map<String, dynamic> json) =
      _$ChannelModelImpl.fromJson;

  @override

  /// id
  String? get appId;
  @override

  /// 主键
  String? get id;
  @override

  /// 渠道id
  String? get channelId;
  @override

  /// 渠道名称
  String get channelName;
  @override

  /// 银行编码
  String get bankCode;
  @override

  /// 银行名称
  String get bankName;
  @override

  /// 分支行名称
  String get branchBankName;
  @override

  /// 银行账号
  String get bankAccountNo;
  @override

  /// 商户id
  String? get merchantId;
  @override

  /// 商户号
  String? get merchantCode;
  @override

  /// 商户名称
  String get merchantName;
  @override

  /// 账号名
  String get accountName;
  @override

  /// 二维码
  String? get qrCodeUrl;
  @override

  /// 状态
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$ChannelModelImplCopyWith<_$ChannelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  /// 是否是线上支付
  @String2BoolJsonConverter()
  bool get isOnline => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 账单类型
  String get billCategory => throw _privateConstructorUsedError;

  /// 账单类型名称
  String get billCategoryName => throw _privateConstructorUsedError;

  /// 付款方式编码
  @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
  PaymentTypeCode get paymentTypeCode => throw _privateConstructorUsedError;

  /// 付款方式名称
  String get paymentTypeName => throw _privateConstructorUsedError;

  /// 是否展示
  @String2BoolJsonConverter()
  bool get isShow => throw _privateConstructorUsedError;

  /// 渠道列表
  @JsonKey(name: 'bankAccountPaymentDetails')
  List<ChannelModel> get channelList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call(
      {@String2BoolJsonConverter() bool isOnline,
      String schoolCode,
      String billCategory,
      String billCategoryName,
      @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
      PaymentTypeCode paymentTypeCode,
      String paymentTypeName,
      @String2BoolJsonConverter() bool isShow,
      @JsonKey(name: 'bankAccountPaymentDetails')
      List<ChannelModel> channelList});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? schoolCode = null,
    Object? billCategory = null,
    Object? billCategoryName = null,
    Object? paymentTypeCode = null,
    Object? paymentTypeName = null,
    Object? isShow = null,
    Object? channelList = null,
  }) {
    return _then(_value.copyWith(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      billCategory: null == billCategory
          ? _value.billCategory
          : billCategory // ignore: cast_nullable_to_non_nullable
              as String,
      billCategoryName: null == billCategoryName
          ? _value.billCategoryName
          : billCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeCode: null == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as PaymentTypeCode,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
      channelList: null == channelList
          ? _value.channelList
          : channelList // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentModelImplCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$PaymentModelImplCopyWith(
          _$PaymentModelImpl value, $Res Function(_$PaymentModelImpl) then) =
      __$$PaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2BoolJsonConverter() bool isOnline,
      String schoolCode,
      String billCategory,
      String billCategoryName,
      @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
      PaymentTypeCode paymentTypeCode,
      String paymentTypeName,
      @String2BoolJsonConverter() bool isShow,
      @JsonKey(name: 'bankAccountPaymentDetails')
      List<ChannelModel> channelList});
}

/// @nodoc
class __$$PaymentModelImplCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$PaymentModelImpl>
    implements _$$PaymentModelImplCopyWith<$Res> {
  __$$PaymentModelImplCopyWithImpl(
      _$PaymentModelImpl _value, $Res Function(_$PaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
    Object? schoolCode = null,
    Object? billCategory = null,
    Object? billCategoryName = null,
    Object? paymentTypeCode = null,
    Object? paymentTypeName = null,
    Object? isShow = null,
    Object? channelList = null,
  }) {
    return _then(_$PaymentModelImpl(
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      billCategory: null == billCategory
          ? _value.billCategory
          : billCategory // ignore: cast_nullable_to_non_nullable
              as String,
      billCategoryName: null == billCategoryName
          ? _value.billCategoryName
          : billCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTypeCode: null == paymentTypeCode
          ? _value.paymentTypeCode
          : paymentTypeCode // ignore: cast_nullable_to_non_nullable
              as PaymentTypeCode,
      paymentTypeName: null == paymentTypeName
          ? _value.paymentTypeName
          : paymentTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      isShow: null == isShow
          ? _value.isShow
          : isShow // ignore: cast_nullable_to_non_nullable
              as bool,
      channelList: null == channelList
          ? _value._channelList
          : channelList // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentModelImpl extends _PaymentModel {
  const _$PaymentModelImpl(
      {@String2BoolJsonConverter() this.isOnline = false,
      this.schoolCode = '',
      this.billCategory = '',
      this.billCategoryName = '',
      @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
      this.paymentTypeCode = PaymentTypeCode.bankTrans,
      this.paymentTypeName = '',
      @String2BoolJsonConverter() this.isShow = false,
      @JsonKey(name: 'bankAccountPaymentDetails')
      final List<ChannelModel> channelList = const []})
      : _channelList = channelList,
        super._();

  factory _$PaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentModelImplFromJson(json);

  /// 是否是线上支付
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isOnline;

  /// 学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 账单类型
  @override
  @JsonKey()
  final String billCategory;

  /// 账单类型名称
  @override
  @JsonKey()
  final String billCategoryName;

  /// 付款方式编码
  @override
  @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
  final PaymentTypeCode paymentTypeCode;

  /// 付款方式名称
  @override
  @JsonKey()
  final String paymentTypeName;

  /// 是否展示
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool isShow;

  /// 渠道列表
  final List<ChannelModel> _channelList;

  /// 渠道列表
  @override
  @JsonKey(name: 'bankAccountPaymentDetails')
  List<ChannelModel> get channelList {
    if (_channelList is EqualUnmodifiableListView) return _channelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channelList);
  }

  @override
  String toString() {
    return 'PaymentModel(isOnline: $isOnline, schoolCode: $schoolCode, billCategory: $billCategory, billCategoryName: $billCategoryName, paymentTypeCode: $paymentTypeCode, paymentTypeName: $paymentTypeName, isShow: $isShow, channelList: $channelList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentModelImpl &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.billCategory, billCategory) ||
                other.billCategory == billCategory) &&
            (identical(other.billCategoryName, billCategoryName) ||
                other.billCategoryName == billCategoryName) &&
            (identical(other.paymentTypeCode, paymentTypeCode) ||
                other.paymentTypeCode == paymentTypeCode) &&
            (identical(other.paymentTypeName, paymentTypeName) ||
                other.paymentTypeName == paymentTypeName) &&
            (identical(other.isShow, isShow) || other.isShow == isShow) &&
            const DeepCollectionEquality()
                .equals(other._channelList, _channelList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isOnline,
      schoolCode,
      billCategory,
      billCategoryName,
      paymentTypeCode,
      paymentTypeName,
      isShow,
      const DeepCollectionEquality().hash(_channelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      __$$PaymentModelImplCopyWithImpl<_$PaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentModel extends PaymentModel {
  const factory _PaymentModel(
      {@String2BoolJsonConverter() final bool isOnline,
      final String schoolCode,
      final String billCategory,
      final String billCategoryName,
      @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
      final PaymentTypeCode paymentTypeCode,
      final String paymentTypeName,
      @String2BoolJsonConverter() final bool isShow,
      @JsonKey(name: 'bankAccountPaymentDetails')
      final List<ChannelModel> channelList}) = _$PaymentModelImpl;
  const _PaymentModel._() : super._();

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$PaymentModelImpl.fromJson;

  @override

  /// 是否是线上支付
  @String2BoolJsonConverter()
  bool get isOnline;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 账单类型
  String get billCategory;
  @override

  /// 账单类型名称
  String get billCategoryName;
  @override

  /// 付款方式编码
  @JsonKey(unknownEnumValue: PaymentTypeCode.unknown)
  PaymentTypeCode get paymentTypeCode;
  @override

  /// 付款方式名称
  String get paymentTypeName;
  @override

  /// 是否展示
  @String2BoolJsonConverter()
  bool get isShow;
  @override

  /// 渠道列表
  @JsonKey(name: 'bankAccountPaymentDetails')
  List<ChannelModel> get channelList;
  @override
  @JsonKey(ignore: true)
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelWrapper _$ChannelWrapperFromJson(Map<String, dynamic> json) {
  return _ChannelWrapper.fromJson(json);
}

/// @nodoc
mixin _$ChannelWrapper {
  PaymentModel get payment => throw _privateConstructorUsedError;
  ChannelModel get channel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelWrapperCopyWith<ChannelWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelWrapperCopyWith<$Res> {
  factory $ChannelWrapperCopyWith(
          ChannelWrapper value, $Res Function(ChannelWrapper) then) =
      _$ChannelWrapperCopyWithImpl<$Res, ChannelWrapper>;
  @useResult
  $Res call({PaymentModel payment, ChannelModel channel});

  $PaymentModelCopyWith<$Res> get payment;
  $ChannelModelCopyWith<$Res> get channel;
}

/// @nodoc
class _$ChannelWrapperCopyWithImpl<$Res, $Val extends ChannelWrapper>
    implements $ChannelWrapperCopyWith<$Res> {
  _$ChannelWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
    Object? channel = null,
  }) {
    return _then(_value.copyWith(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentModel,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentModelCopyWith<$Res> get payment {
    return $PaymentModelCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelModelCopyWith<$Res> get channel {
    return $ChannelModelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelWrapperImplCopyWith<$Res>
    implements $ChannelWrapperCopyWith<$Res> {
  factory _$$ChannelWrapperImplCopyWith(_$ChannelWrapperImpl value,
          $Res Function(_$ChannelWrapperImpl) then) =
      __$$ChannelWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentModel payment, ChannelModel channel});

  @override
  $PaymentModelCopyWith<$Res> get payment;
  @override
  $ChannelModelCopyWith<$Res> get channel;
}

/// @nodoc
class __$$ChannelWrapperImplCopyWithImpl<$Res>
    extends _$ChannelWrapperCopyWithImpl<$Res, _$ChannelWrapperImpl>
    implements _$$ChannelWrapperImplCopyWith<$Res> {
  __$$ChannelWrapperImplCopyWithImpl(
      _$ChannelWrapperImpl _value, $Res Function(_$ChannelWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
    Object? channel = null,
  }) {
    return _then(_$ChannelWrapperImpl(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentModel,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ChannelModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelWrapperImpl extends _ChannelWrapper {
  const _$ChannelWrapperImpl({required this.payment, required this.channel})
      : super._();

  factory _$ChannelWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelWrapperImplFromJson(json);

  @override
  final PaymentModel payment;
  @override
  final ChannelModel channel;

  @override
  String toString() {
    return 'ChannelWrapper(payment: $payment, channel: $channel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelWrapperImpl &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payment, channel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelWrapperImplCopyWith<_$ChannelWrapperImpl> get copyWith =>
      __$$ChannelWrapperImplCopyWithImpl<_$ChannelWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelWrapperImplToJson(
      this,
    );
  }
}

abstract class _ChannelWrapper extends ChannelWrapper {
  const factory _ChannelWrapper(
      {required final PaymentModel payment,
      required final ChannelModel channel}) = _$ChannelWrapperImpl;
  const _ChannelWrapper._() : super._();

  factory _ChannelWrapper.fromJson(Map<String, dynamic> json) =
      _$ChannelWrapperImpl.fromJson;

  @override
  PaymentModel get payment;
  @override
  ChannelModel get channel;
  @override
  @JsonKey(ignore: true)
  _$$ChannelWrapperImplCopyWith<_$ChannelWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) {
  return _OrderStatusModel.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusModel {
  /// 商户编号 "B10000003",
  String get merchantNo => throw _privateConstructorUsedError;

  /// 平台订单编号 "T2023030221364299100037096",
  String get orderNo => throw _privateConstructorUsedError;

  /// 商户订单编号 "5f000cb6-4349-45bd-a689-00ea5fae7358",
  String get merOrderNo => throw _privateConstructorUsedError;

  /// 下单币种 "CNY",
  String get orderCurrency => throw _privateConstructorUsedError;

  /// 用户支付的产品 "N/A",
  String get payType => throw _privateConstructorUsedError;

  /// 订单金额 "4820000",
  @String2IntJsonConverter()
  int get orderAmt => throw _privateConstructorUsedError;

  /// 支付币种 "N/A",
  String get currency => throw _privateConstructorUsedError;

  /// 实际支付金额, 单位：分 "4820000",
  @String2IntJsonConverter()
  int get payAmt => throw _privateConstructorUsedError;

  /// 订单状态 "NEW",
  TradeStatus? get tradeStatus => throw _privateConstructorUsedError;

  /// 交易状态描述 null,
  String get tradeMsg => throw _privateConstructorUsedError;

  /// 商户保留域 null,
  String get remark => throw _privateConstructorUsedError;

  /// "N/A",
  String get channelType => throw _privateConstructorUsedError;

  /// 响应编码 "R000",
  String get statusCode => throw _privateConstructorUsedError;

  /// 响应描述 "处理成功"
  String get statusDesc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusModelCopyWith<OrderStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusModelCopyWith<$Res> {
  factory $OrderStatusModelCopyWith(
          OrderStatusModel value, $Res Function(OrderStatusModel) then) =
      _$OrderStatusModelCopyWithImpl<$Res, OrderStatusModel>;
  @useResult
  $Res call(
      {String merchantNo,
      String orderNo,
      String merOrderNo,
      String orderCurrency,
      String payType,
      @String2IntJsonConverter() int orderAmt,
      String currency,
      @String2IntJsonConverter() int payAmt,
      TradeStatus? tradeStatus,
      String tradeMsg,
      String remark,
      String channelType,
      String statusCode,
      String statusDesc});
}

/// @nodoc
class _$OrderStatusModelCopyWithImpl<$Res, $Val extends OrderStatusModel>
    implements $OrderStatusModelCopyWith<$Res> {
  _$OrderStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantNo = null,
    Object? orderNo = null,
    Object? merOrderNo = null,
    Object? orderCurrency = null,
    Object? payType = null,
    Object? orderAmt = null,
    Object? currency = null,
    Object? payAmt = null,
    Object? tradeStatus = freezed,
    Object? tradeMsg = null,
    Object? remark = null,
    Object? channelType = null,
    Object? statusCode = null,
    Object? statusDesc = null,
  }) {
    return _then(_value.copyWith(
      merchantNo: null == merchantNo
          ? _value.merchantNo
          : merchantNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      merOrderNo: null == merOrderNo
          ? _value.merOrderNo
          : merOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderCurrency: null == orderCurrency
          ? _value.orderCurrency
          : orderCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmt: null == orderAmt
          ? _value.orderAmt
          : orderAmt // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      payAmt: null == payAmt
          ? _value.payAmt
          : payAmt // ignore: cast_nullable_to_non_nullable
              as int,
      tradeStatus: freezed == tradeStatus
          ? _value.tradeStatus
          : tradeStatus // ignore: cast_nullable_to_non_nullable
              as TradeStatus?,
      tradeMsg: null == tradeMsg
          ? _value.tradeMsg
          : tradeMsg // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      statusDesc: null == statusDesc
          ? _value.statusDesc
          : statusDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStatusModelImplCopyWith<$Res>
    implements $OrderStatusModelCopyWith<$Res> {
  factory _$$OrderStatusModelImplCopyWith(_$OrderStatusModelImpl value,
          $Res Function(_$OrderStatusModelImpl) then) =
      __$$OrderStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantNo,
      String orderNo,
      String merOrderNo,
      String orderCurrency,
      String payType,
      @String2IntJsonConverter() int orderAmt,
      String currency,
      @String2IntJsonConverter() int payAmt,
      TradeStatus? tradeStatus,
      String tradeMsg,
      String remark,
      String channelType,
      String statusCode,
      String statusDesc});
}

/// @nodoc
class __$$OrderStatusModelImplCopyWithImpl<$Res>
    extends _$OrderStatusModelCopyWithImpl<$Res, _$OrderStatusModelImpl>
    implements _$$OrderStatusModelImplCopyWith<$Res> {
  __$$OrderStatusModelImplCopyWithImpl(_$OrderStatusModelImpl _value,
      $Res Function(_$OrderStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantNo = null,
    Object? orderNo = null,
    Object? merOrderNo = null,
    Object? orderCurrency = null,
    Object? payType = null,
    Object? orderAmt = null,
    Object? currency = null,
    Object? payAmt = null,
    Object? tradeStatus = freezed,
    Object? tradeMsg = null,
    Object? remark = null,
    Object? channelType = null,
    Object? statusCode = null,
    Object? statusDesc = null,
  }) {
    return _then(_$OrderStatusModelImpl(
      merchantNo: null == merchantNo
          ? _value.merchantNo
          : merchantNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      merOrderNo: null == merOrderNo
          ? _value.merOrderNo
          : merOrderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderCurrency: null == orderCurrency
          ? _value.orderCurrency
          : orderCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      payType: null == payType
          ? _value.payType
          : payType // ignore: cast_nullable_to_non_nullable
              as String,
      orderAmt: null == orderAmt
          ? _value.orderAmt
          : orderAmt // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      payAmt: null == payAmt
          ? _value.payAmt
          : payAmt // ignore: cast_nullable_to_non_nullable
              as int,
      tradeStatus: freezed == tradeStatus
          ? _value.tradeStatus
          : tradeStatus // ignore: cast_nullable_to_non_nullable
              as TradeStatus?,
      tradeMsg: null == tradeMsg
          ? _value.tradeMsg
          : tradeMsg // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      statusDesc: null == statusDesc
          ? _value.statusDesc
          : statusDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatusModelImpl extends _OrderStatusModel {
  const _$OrderStatusModelImpl(
      {this.merchantNo = '',
      this.orderNo = '',
      this.merOrderNo = '',
      this.orderCurrency = '',
      this.payType = '',
      @String2IntJsonConverter() this.orderAmt = 0,
      this.currency = '',
      @String2IntJsonConverter() this.payAmt = 0,
      this.tradeStatus,
      this.tradeMsg = '',
      this.remark = '',
      this.channelType = '',
      this.statusCode = '',
      this.statusDesc = ''})
      : super._();

  factory _$OrderStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatusModelImplFromJson(json);

  /// 商户编号 "B10000003",
  @override
  @JsonKey()
  final String merchantNo;

  /// 平台订单编号 "T2023030221364299100037096",
  @override
  @JsonKey()
  final String orderNo;

  /// 商户订单编号 "5f000cb6-4349-45bd-a689-00ea5fae7358",
  @override
  @JsonKey()
  final String merOrderNo;

  /// 下单币种 "CNY",
  @override
  @JsonKey()
  final String orderCurrency;

  /// 用户支付的产品 "N/A",
  @override
  @JsonKey()
  final String payType;

  /// 订单金额 "4820000",
  @override
  @JsonKey()
  @String2IntJsonConverter()
  final int orderAmt;

  /// 支付币种 "N/A",
  @override
  @JsonKey()
  final String currency;

  /// 实际支付金额, 单位：分 "4820000",
  @override
  @JsonKey()
  @String2IntJsonConverter()
  final int payAmt;

  /// 订单状态 "NEW",
  @override
  final TradeStatus? tradeStatus;

  /// 交易状态描述 null,
  @override
  @JsonKey()
  final String tradeMsg;

  /// 商户保留域 null,
  @override
  @JsonKey()
  final String remark;

  /// "N/A",
  @override
  @JsonKey()
  final String channelType;

  /// 响应编码 "R000",
  @override
  @JsonKey()
  final String statusCode;

  /// 响应描述 "处理成功"
  @override
  @JsonKey()
  final String statusDesc;

  @override
  String toString() {
    return 'OrderStatusModel(merchantNo: $merchantNo, orderNo: $orderNo, merOrderNo: $merOrderNo, orderCurrency: $orderCurrency, payType: $payType, orderAmt: $orderAmt, currency: $currency, payAmt: $payAmt, tradeStatus: $tradeStatus, tradeMsg: $tradeMsg, remark: $remark, channelType: $channelType, statusCode: $statusCode, statusDesc: $statusDesc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatusModelImpl &&
            (identical(other.merchantNo, merchantNo) ||
                other.merchantNo == merchantNo) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            (identical(other.merOrderNo, merOrderNo) ||
                other.merOrderNo == merOrderNo) &&
            (identical(other.orderCurrency, orderCurrency) ||
                other.orderCurrency == orderCurrency) &&
            (identical(other.payType, payType) || other.payType == payType) &&
            (identical(other.orderAmt, orderAmt) ||
                other.orderAmt == orderAmt) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.payAmt, payAmt) || other.payAmt == payAmt) &&
            (identical(other.tradeStatus, tradeStatus) ||
                other.tradeStatus == tradeStatus) &&
            (identical(other.tradeMsg, tradeMsg) ||
                other.tradeMsg == tradeMsg) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusDesc, statusDesc) ||
                other.statusDesc == statusDesc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      merchantNo,
      orderNo,
      merOrderNo,
      orderCurrency,
      payType,
      orderAmt,
      currency,
      payAmt,
      tradeStatus,
      tradeMsg,
      remark,
      channelType,
      statusCode,
      statusDesc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatusModelImplCopyWith<_$OrderStatusModelImpl> get copyWith =>
      __$$OrderStatusModelImplCopyWithImpl<_$OrderStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatusModelImplToJson(
      this,
    );
  }
}

abstract class _OrderStatusModel extends OrderStatusModel {
  const factory _OrderStatusModel(
      {final String merchantNo,
      final String orderNo,
      final String merOrderNo,
      final String orderCurrency,
      final String payType,
      @String2IntJsonConverter() final int orderAmt,
      final String currency,
      @String2IntJsonConverter() final int payAmt,
      final TradeStatus? tradeStatus,
      final String tradeMsg,
      final String remark,
      final String channelType,
      final String statusCode,
      final String statusDesc}) = _$OrderStatusModelImpl;
  const _OrderStatusModel._() : super._();

  factory _OrderStatusModel.fromJson(Map<String, dynamic> json) =
      _$OrderStatusModelImpl.fromJson;

  @override

  /// 商户编号 "B10000003",
  String get merchantNo;
  @override

  /// 平台订单编号 "T2023030221364299100037096",
  String get orderNo;
  @override

  /// 商户订单编号 "5f000cb6-4349-45bd-a689-00ea5fae7358",
  String get merOrderNo;
  @override

  /// 下单币种 "CNY",
  String get orderCurrency;
  @override

  /// 用户支付的产品 "N/A",
  String get payType;
  @override

  /// 订单金额 "4820000",
  @String2IntJsonConverter()
  int get orderAmt;
  @override

  /// 支付币种 "N/A",
  String get currency;
  @override

  /// 实际支付金额, 单位：分 "4820000",
  @String2IntJsonConverter()
  int get payAmt;
  @override

  /// 订单状态 "NEW",
  TradeStatus? get tradeStatus;
  @override

  /// 交易状态描述 null,
  String get tradeMsg;
  @override

  /// 商户保留域 null,
  String get remark;
  @override

  /// "N/A",
  String get channelType;
  @override

  /// 响应编码 "R000",
  String get statusCode;
  @override

  /// 响应描述 "处理成功"
  String get statusDesc;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatusModelImplCopyWith<_$OrderStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BillConfigMap {
  HashMap<String, Map<String, BillConfigModel>> get configs =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BillConfigMapCopyWith<BillConfigMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillConfigMapCopyWith<$Res> {
  factory $BillConfigMapCopyWith(
          BillConfigMap value, $Res Function(BillConfigMap) then) =
      _$BillConfigMapCopyWithImpl<$Res, BillConfigMap>;
  @useResult
  $Res call({HashMap<String, Map<String, BillConfigModel>> configs});
}

/// @nodoc
class _$BillConfigMapCopyWithImpl<$Res, $Val extends BillConfigMap>
    implements $BillConfigMapCopyWith<$Res> {
  _$BillConfigMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configs = null,
  }) {
    return _then(_value.copyWith(
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as HashMap<String, Map<String, BillConfigModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillConfigMapImplCopyWith<$Res>
    implements $BillConfigMapCopyWith<$Res> {
  factory _$$BillConfigMapImplCopyWith(
          _$BillConfigMapImpl value, $Res Function(_$BillConfigMapImpl) then) =
      __$$BillConfigMapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HashMap<String, Map<String, BillConfigModel>> configs});
}

/// @nodoc
class __$$BillConfigMapImplCopyWithImpl<$Res>
    extends _$BillConfigMapCopyWithImpl<$Res, _$BillConfigMapImpl>
    implements _$$BillConfigMapImplCopyWith<$Res> {
  __$$BillConfigMapImplCopyWithImpl(
      _$BillConfigMapImpl _value, $Res Function(_$BillConfigMapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configs = null,
  }) {
    return _then(_$BillConfigMapImpl(
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as HashMap<String, Map<String, BillConfigModel>>,
    ));
  }
}

/// @nodoc

class _$BillConfigMapImpl extends _BillConfigMap {
  const _$BillConfigMapImpl({required this.configs}) : super._();

  @override
  final HashMap<String, Map<String, BillConfigModel>> configs;

  @override
  String toString() {
    return 'BillConfigMap(configs: $configs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillConfigMapImpl &&
            const DeepCollectionEquality().equals(other.configs, configs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(configs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillConfigMapImplCopyWith<_$BillConfigMapImpl> get copyWith =>
      __$$BillConfigMapImplCopyWithImpl<_$BillConfigMapImpl>(this, _$identity);
}

abstract class _BillConfigMap extends BillConfigMap {
  const factory _BillConfigMap(
      {required final HashMap<String, Map<String, BillConfigModel>>
          configs}) = _$BillConfigMapImpl;
  const _BillConfigMap._() : super._();

  @override
  HashMap<String, Map<String, BillConfigModel>> get configs;
  @override
  @JsonKey(ignore: true)
  _$$BillConfigMapImplCopyWith<_$BillConfigMapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BillConfigModel _$BillConfigModelFromJson(Map<String, dynamic> json) {
  return _BillConfigModel.fromJson(json);
}

/// @nodoc
mixin _$BillConfigModel {
  /// 主键
  int get id => throw _privateConstructorUsedError;

  /// 字典菜单名称
  @JsonKey(name: 'dictMenuName')
  String get menuName => throw _privateConstructorUsedError;

  /// 是否展示
  @JsonKey(name: 'displayFlag')
  bool get display => throw _privateConstructorUsedError;

  /// 绑定值
  @JsonKey(name: 'bindingFlag')
  String get binding => throw _privateConstructorUsedError;

  /// 排序
  @JsonKey(name: 'seq')
  int get sortNo => throw _privateConstructorUsedError;

  /// 子字典菜单
  @JsonKey(name: 'sonDictMenus')
  List<BillConfigModel> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillConfigModelCopyWith<BillConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillConfigModelCopyWith<$Res> {
  factory $BillConfigModelCopyWith(
          BillConfigModel value, $Res Function(BillConfigModel) then) =
      _$BillConfigModelCopyWithImpl<$Res, BillConfigModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'dictMenuName') String menuName,
      @JsonKey(name: 'displayFlag') bool display,
      @JsonKey(name: 'bindingFlag') String binding,
      @JsonKey(name: 'seq') int sortNo,
      @JsonKey(name: 'sonDictMenus') List<BillConfigModel> children});
}

/// @nodoc
class _$BillConfigModelCopyWithImpl<$Res, $Val extends BillConfigModel>
    implements $BillConfigModelCopyWith<$Res> {
  _$BillConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuName = null,
    Object? display = null,
    Object? binding = null,
    Object? sortNo = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuName: null == menuName
          ? _value.menuName
          : menuName // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as bool,
      binding: null == binding
          ? _value.binding
          : binding // ignore: cast_nullable_to_non_nullable
              as String,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BillConfigModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillConfigModelImplCopyWith<$Res>
    implements $BillConfigModelCopyWith<$Res> {
  factory _$$BillConfigModelImplCopyWith(_$BillConfigModelImpl value,
          $Res Function(_$BillConfigModelImpl) then) =
      __$$BillConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'dictMenuName') String menuName,
      @JsonKey(name: 'displayFlag') bool display,
      @JsonKey(name: 'bindingFlag') String binding,
      @JsonKey(name: 'seq') int sortNo,
      @JsonKey(name: 'sonDictMenus') List<BillConfigModel> children});
}

/// @nodoc
class __$$BillConfigModelImplCopyWithImpl<$Res>
    extends _$BillConfigModelCopyWithImpl<$Res, _$BillConfigModelImpl>
    implements _$$BillConfigModelImplCopyWith<$Res> {
  __$$BillConfigModelImplCopyWithImpl(
      _$BillConfigModelImpl _value, $Res Function(_$BillConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? menuName = null,
    Object? display = null,
    Object? binding = null,
    Object? sortNo = null,
    Object? children = null,
  }) {
    return _then(_$BillConfigModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      menuName: null == menuName
          ? _value.menuName
          : menuName // ignore: cast_nullable_to_non_nullable
              as String,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as bool,
      binding: null == binding
          ? _value.binding
          : binding // ignore: cast_nullable_to_non_nullable
              as String,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BillConfigModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BillConfigModelImpl extends _BillConfigModel {
  const _$BillConfigModelImpl(
      {required this.id,
      @JsonKey(name: 'dictMenuName') this.menuName = '',
      @JsonKey(name: 'displayFlag') this.display = true,
      @JsonKey(name: 'bindingFlag') this.binding = '',
      @JsonKey(name: 'seq') this.sortNo = 0,
      @JsonKey(name: 'sonDictMenus')
      final List<BillConfigModel> children = const []})
      : _children = children,
        super._();

  factory _$BillConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BillConfigModelImplFromJson(json);

  /// 主键
  @override
  final int id;

  /// 字典菜单名称
  @override
  @JsonKey(name: 'dictMenuName')
  final String menuName;

  /// 是否展示
  @override
  @JsonKey(name: 'displayFlag')
  final bool display;

  /// 绑定值
  @override
  @JsonKey(name: 'bindingFlag')
  final String binding;

  /// 排序
  @override
  @JsonKey(name: 'seq')
  final int sortNo;

  /// 子字典菜单
  final List<BillConfigModel> _children;

  /// 子字典菜单
  @override
  @JsonKey(name: 'sonDictMenus')
  List<BillConfigModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'BillConfigModel(id: $id, menuName: $menuName, display: $display, binding: $binding, sortNo: $sortNo, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillConfigModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.menuName, menuName) ||
                other.menuName == menuName) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.binding, binding) || other.binding == binding) &&
            (identical(other.sortNo, sortNo) || other.sortNo == sortNo) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, menuName, display, binding,
      sortNo, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BillConfigModelImplCopyWith<_$BillConfigModelImpl> get copyWith =>
      __$$BillConfigModelImplCopyWithImpl<_$BillConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BillConfigModelImplToJson(
      this,
    );
  }
}

abstract class _BillConfigModel extends BillConfigModel {
  const factory _BillConfigModel(
      {required final int id,
      @JsonKey(name: 'dictMenuName') final String menuName,
      @JsonKey(name: 'displayFlag') final bool display,
      @JsonKey(name: 'bindingFlag') final String binding,
      @JsonKey(name: 'seq') final int sortNo,
      @JsonKey(name: 'sonDictMenus')
      final List<BillConfigModel> children}) = _$BillConfigModelImpl;
  const _BillConfigModel._() : super._();

  factory _BillConfigModel.fromJson(Map<String, dynamic> json) =
      _$BillConfigModelImpl.fromJson;

  @override

  /// 主键
  int get id;
  @override

  /// 字典菜单名称
  @JsonKey(name: 'dictMenuName')
  String get menuName;
  @override

  /// 是否展示
  @JsonKey(name: 'displayFlag')
  bool get display;
  @override

  /// 绑定值
  @JsonKey(name: 'bindingFlag')
  String get binding;
  @override

  /// 排序
  @JsonKey(name: 'seq')
  int get sortNo;
  @override

  /// 子字典菜单
  @JsonKey(name: 'sonDictMenus')
  List<BillConfigModel> get children;
  @override
  @JsonKey(ignore: true)
  _$$BillConfigModelImplCopyWith<_$BillConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
