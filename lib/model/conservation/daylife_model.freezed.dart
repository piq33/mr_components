// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daylife_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalculateModel _$CalculateModelFromJson(Map<String, dynamic> json) {
  return _CalculateModel.fromJson(json);
}

/// @nodoc
mixin _$CalculateModel {
  /// 计数名称
  @JsonKey(name: 'calculateName')
  String get name => throw _privateConstructorUsedError;

  /// 展示签名
  bool get showSign => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculateModelCopyWith<CalculateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateModelCopyWith<$Res> {
  factory $CalculateModelCopyWith(
          CalculateModel value, $Res Function(CalculateModel) then) =
      _$CalculateModelCopyWithImpl<$Res, CalculateModel>;
  @useResult
  $Res call({@JsonKey(name: 'calculateName') String name, bool showSign});
}

/// @nodoc
class _$CalculateModelCopyWithImpl<$Res, $Val extends CalculateModel>
    implements $CalculateModelCopyWith<$Res> {
  _$CalculateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? showSign = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showSign: null == showSign
          ? _value.showSign
          : showSign // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculateModelImplCopyWith<$Res>
    implements $CalculateModelCopyWith<$Res> {
  factory _$$CalculateModelImplCopyWith(_$CalculateModelImpl value,
          $Res Function(_$CalculateModelImpl) then) =
      __$$CalculateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'calculateName') String name, bool showSign});
}

/// @nodoc
class __$$CalculateModelImplCopyWithImpl<$Res>
    extends _$CalculateModelCopyWithImpl<$Res, _$CalculateModelImpl>
    implements _$$CalculateModelImplCopyWith<$Res> {
  __$$CalculateModelImplCopyWithImpl(
      _$CalculateModelImpl _value, $Res Function(_$CalculateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? showSign = null,
  }) {
    return _then(_$CalculateModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      showSign: null == showSign
          ? _value.showSign
          : showSign // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculateModelImpl extends _CalculateModel {
  const _$CalculateModelImpl(
      {@JsonKey(name: 'calculateName') this.name = '', this.showSign = false})
      : super._();

  factory _$CalculateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculateModelImplFromJson(json);

  /// 计数名称
  @override
  @JsonKey(name: 'calculateName')
  final String name;

  /// 展示签名
  @override
  @JsonKey()
  final bool showSign;

  @override
  String toString() {
    return 'CalculateModel(name: $name, showSign: $showSign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showSign, showSign) ||
                other.showSign == showSign));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, showSign);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateModelImplCopyWith<_$CalculateModelImpl> get copyWith =>
      __$$CalculateModelImplCopyWithImpl<_$CalculateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculateModelImplToJson(
      this,
    );
  }
}

abstract class _CalculateModel extends CalculateModel {
  const factory _CalculateModel(
      {@JsonKey(name: 'calculateName') final String name,
      final bool showSign}) = _$CalculateModelImpl;
  const _CalculateModel._() : super._();

  factory _CalculateModel.fromJson(Map<String, dynamic> json) =
      _$CalculateModelImpl.fromJson;

  @override

  /// 计数名称
  @JsonKey(name: 'calculateName')
  String get name;
  @override

  /// 展示签名
  bool get showSign;
  @override
  @JsonKey(ignore: true)
  _$$CalculateModelImplCopyWith<_$CalculateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeteringModel _$MeteringModelFromJson(Map<String, dynamic> json) {
  return _MeteringModel.fromJson(json);
}

/// @nodoc
mixin _$MeteringModel {
  /// 最小值
  @JsonKey(name: 'minValue')
  double get min => throw _privateConstructorUsedError;

  /// 最大值
  @JsonKey(name: 'maxValue')
  double get max => throw _privateConstructorUsedError;

  /// 展示签名
  bool get showSign => throw _privateConstructorUsedError;

  /// 计量名称
  @JsonKey(name: 'meteringName')
  String get name => throw _privateConstructorUsedError;

  /// 计量单位
  @JsonKey(name: 'meteringUnit')
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeteringModelCopyWith<MeteringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeteringModelCopyWith<$Res> {
  factory $MeteringModelCopyWith(
          MeteringModel value, $Res Function(MeteringModel) then) =
      _$MeteringModelCopyWithImpl<$Res, MeteringModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'minValue') double min,
      @JsonKey(name: 'maxValue') double max,
      bool showSign,
      @JsonKey(name: 'meteringName') String name,
      @JsonKey(name: 'meteringUnit') String unit});
}

/// @nodoc
class _$MeteringModelCopyWithImpl<$Res, $Val extends MeteringModel>
    implements $MeteringModelCopyWith<$Res> {
  _$MeteringModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? showSign = null,
    Object? name = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      showSign: null == showSign
          ? _value.showSign
          : showSign // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeteringModelImplCopyWith<$Res>
    implements $MeteringModelCopyWith<$Res> {
  factory _$$MeteringModelImplCopyWith(
          _$MeteringModelImpl value, $Res Function(_$MeteringModelImpl) then) =
      __$$MeteringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'minValue') double min,
      @JsonKey(name: 'maxValue') double max,
      bool showSign,
      @JsonKey(name: 'meteringName') String name,
      @JsonKey(name: 'meteringUnit') String unit});
}

/// @nodoc
class __$$MeteringModelImplCopyWithImpl<$Res>
    extends _$MeteringModelCopyWithImpl<$Res, _$MeteringModelImpl>
    implements _$$MeteringModelImplCopyWith<$Res> {
  __$$MeteringModelImplCopyWithImpl(
      _$MeteringModelImpl _value, $Res Function(_$MeteringModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? showSign = null,
    Object? name = null,
    Object? unit = null,
  }) {
    return _then(_$MeteringModelImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      showSign: null == showSign
          ? _value.showSign
          : showSign // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeteringModelImpl extends _MeteringModel {
  const _$MeteringModelImpl(
      {@JsonKey(name: 'minValue') this.min = 0,
      @JsonKey(name: 'maxValue') this.max = 0,
      this.showSign = false,
      @JsonKey(name: 'meteringName') this.name = '',
      @JsonKey(name: 'meteringUnit') this.unit = ''})
      : super._();

  factory _$MeteringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeteringModelImplFromJson(json);

  /// 最小值
  @override
  @JsonKey(name: 'minValue')
  final double min;

  /// 最大值
  @override
  @JsonKey(name: 'maxValue')
  final double max;

  /// 展示签名
  @override
  @JsonKey()
  final bool showSign;

  /// 计量名称
  @override
  @JsonKey(name: 'meteringName')
  final String name;

  /// 计量单位
  @override
  @JsonKey(name: 'meteringUnit')
  final String unit;

  @override
  String toString() {
    return 'MeteringModel(min: $min, max: $max, showSign: $showSign, name: $name, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeteringModelImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.showSign, showSign) ||
                other.showSign == showSign) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, min, max, showSign, name, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeteringModelImplCopyWith<_$MeteringModelImpl> get copyWith =>
      __$$MeteringModelImplCopyWithImpl<_$MeteringModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeteringModelImplToJson(
      this,
    );
  }
}

abstract class _MeteringModel extends MeteringModel {
  const factory _MeteringModel(
      {@JsonKey(name: 'minValue') final double min,
      @JsonKey(name: 'maxValue') final double max,
      final bool showSign,
      @JsonKey(name: 'meteringName') final String name,
      @JsonKey(name: 'meteringUnit') final String unit}) = _$MeteringModelImpl;
  const _MeteringModel._() : super._();

  factory _MeteringModel.fromJson(Map<String, dynamic> json) =
      _$MeteringModelImpl.fromJson;

  @override

  /// 最小值
  @JsonKey(name: 'minValue')
  double get min;
  @override

  /// 最大值
  @JsonKey(name: 'maxValue')
  double get max;
  @override

  /// 展示签名
  bool get showSign;
  @override

  /// 计量名称
  @JsonKey(name: 'meteringName')
  String get name;
  @override

  /// 计量单位
  @JsonKey(name: 'meteringUnit')
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$MeteringModelImplCopyWith<_$MeteringModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoiceModel _$ChoiceModelFromJson(Map<String, dynamic> json) {
  return _ChoiceModel.fromJson(json);
}

/// @nodoc
mixin _$ChoiceModel {
  /// 选项内容
  String get content => throw _privateConstructorUsedError;

  /// 是否默认
  bool get isDefault => throw _privateConstructorUsedError;

  /// 家长端展示
  String get parentShow => throw _privateConstructorUsedError;

  /// 是否展示填空
  bool get showBlank => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceModelCopyWith<ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceModelCopyWith<$Res> {
  factory $ChoiceModelCopyWith(
          ChoiceModel value, $Res Function(ChoiceModel) then) =
      _$ChoiceModelCopyWithImpl<$Res, ChoiceModel>;
  @useResult
  $Res call(
      {String content, bool isDefault, String parentShow, bool showBlank});
}

/// @nodoc
class _$ChoiceModelCopyWithImpl<$Res, $Val extends ChoiceModel>
    implements $ChoiceModelCopyWith<$Res> {
  _$ChoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? isDefault = null,
    Object? parentShow = null,
    Object? showBlank = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      parentShow: null == parentShow
          ? _value.parentShow
          : parentShow // ignore: cast_nullable_to_non_nullable
              as String,
      showBlank: null == showBlank
          ? _value.showBlank
          : showBlank // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceModelImplCopyWith<$Res>
    implements $ChoiceModelCopyWith<$Res> {
  factory _$$ChoiceModelImplCopyWith(
          _$ChoiceModelImpl value, $Res Function(_$ChoiceModelImpl) then) =
      __$$ChoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, bool isDefault, String parentShow, bool showBlank});
}

/// @nodoc
class __$$ChoiceModelImplCopyWithImpl<$Res>
    extends _$ChoiceModelCopyWithImpl<$Res, _$ChoiceModelImpl>
    implements _$$ChoiceModelImplCopyWith<$Res> {
  __$$ChoiceModelImplCopyWithImpl(
      _$ChoiceModelImpl _value, $Res Function(_$ChoiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? isDefault = null,
    Object? parentShow = null,
    Object? showBlank = null,
  }) {
    return _then(_$ChoiceModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      parentShow: null == parentShow
          ? _value.parentShow
          : parentShow // ignore: cast_nullable_to_non_nullable
              as String,
      showBlank: null == showBlank
          ? _value.showBlank
          : showBlank // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceModelImpl extends _ChoiceModel {
  const _$ChoiceModelImpl(
      {this.content = '',
      this.isDefault = false,
      this.parentShow = '',
      this.showBlank = false})
      : super._();

  factory _$ChoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceModelImplFromJson(json);

  /// 选项内容
  @override
  @JsonKey()
  final String content;

  /// 是否默认
  @override
  @JsonKey()
  final bool isDefault;

  /// 家长端展示
  @override
  @JsonKey()
  final String parentShow;

  /// 是否展示填空
  @override
  @JsonKey()
  final bool showBlank;

  @override
  String toString() {
    return 'ChoiceModel(content: $content, isDefault: $isDefault, parentShow: $parentShow, showBlank: $showBlank)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.parentShow, parentShow) ||
                other.parentShow == parentShow) &&
            (identical(other.showBlank, showBlank) ||
                other.showBlank == showBlank));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, isDefault, parentShow, showBlank);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceModelImplCopyWith<_$ChoiceModelImpl> get copyWith =>
      __$$ChoiceModelImplCopyWithImpl<_$ChoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceModelImplToJson(
      this,
    );
  }
}

abstract class _ChoiceModel extends ChoiceModel {
  const factory _ChoiceModel(
      {final String content,
      final bool isDefault,
      final String parentShow,
      final bool showBlank}) = _$ChoiceModelImpl;
  const _ChoiceModel._() : super._();

  factory _ChoiceModel.fromJson(Map<String, dynamic> json) =
      _$ChoiceModelImpl.fromJson;

  @override

  /// 选项内容
  String get content;
  @override

  /// 是否默认
  bool get isDefault;
  @override

  /// 家长端展示
  String get parentShow;
  @override

  /// 是否展示填空
  bool get showBlank;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceModelImplCopyWith<_$ChoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecordModel _$RecordModelFromJson(Map<String, dynamic> json) {
  return _RecordModel.fromJson(json);
}

/// @nodoc
mixin _$RecordModel {
  /// 记录名称
  String get recordName => throw _privateConstructorUsedError;

  /// 展示签名
  bool get showSign => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordModelCopyWith<RecordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordModelCopyWith<$Res> {
  factory $RecordModelCopyWith(
          RecordModel value, $Res Function(RecordModel) then) =
      _$RecordModelCopyWithImpl<$Res, RecordModel>;
  @useResult
  $Res call({String recordName, bool showSign});
}

/// @nodoc
class _$RecordModelCopyWithImpl<$Res, $Val extends RecordModel>
    implements $RecordModelCopyWith<$Res> {
  _$RecordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordName = null,
    Object? showSign = null,
  }) {
    return _then(_value.copyWith(
      recordName: null == recordName
          ? _value.recordName
          : recordName // ignore: cast_nullable_to_non_nullable
              as String,
      showSign: null == showSign
          ? _value.showSign
          : showSign // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordModelImplCopyWith<$Res>
    implements $RecordModelCopyWith<$Res> {
  factory _$$RecordModelImplCopyWith(
          _$RecordModelImpl value, $Res Function(_$RecordModelImpl) then) =
      __$$RecordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String recordName, bool showSign});
}

/// @nodoc
class __$$RecordModelImplCopyWithImpl<$Res>
    extends _$RecordModelCopyWithImpl<$Res, _$RecordModelImpl>
    implements _$$RecordModelImplCopyWith<$Res> {
  __$$RecordModelImplCopyWithImpl(
      _$RecordModelImpl _value, $Res Function(_$RecordModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordName = null,
    Object? showSign = null,
  }) {
    return _then(_$RecordModelImpl(
      recordName: null == recordName
          ? _value.recordName
          : recordName // ignore: cast_nullable_to_non_nullable
              as String,
      showSign: null == showSign
          ? _value.showSign
          : showSign // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordModelImpl extends _RecordModel {
  const _$RecordModelImpl({this.recordName = '', this.showSign = false})
      : super._();

  factory _$RecordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordModelImplFromJson(json);

  /// 记录名称
  @override
  @JsonKey()
  final String recordName;

  /// 展示签名
  @override
  @JsonKey()
  final bool showSign;

  @override
  String toString() {
    return 'RecordModel(recordName: $recordName, showSign: $showSign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordModelImpl &&
            (identical(other.recordName, recordName) ||
                other.recordName == recordName) &&
            (identical(other.showSign, showSign) ||
                other.showSign == showSign));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recordName, showSign);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordModelImplCopyWith<_$RecordModelImpl> get copyWith =>
      __$$RecordModelImplCopyWithImpl<_$RecordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordModelImplToJson(
      this,
    );
  }
}

abstract class _RecordModel extends RecordModel {
  const factory _RecordModel({final String recordName, final bool showSign}) =
      _$RecordModelImpl;
  const _RecordModel._() : super._();

  factory _RecordModel.fromJson(Map<String, dynamic> json) =
      _$RecordModelImpl.fromJson;

  @override

  /// 记录名称
  String get recordName;
  @override

  /// 展示签名
  bool get showSign;
  @override
  @JsonKey(ignore: true)
  _$$RecordModelImplCopyWith<_$RecordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CalculateResultModel _$CalculateResultModelFromJson(Map<String, dynamic> json) {
  return _CalculateResultModel.fromJson(json);
}

/// @nodoc
mixin _$CalculateResultModel {
  /// 填写时间
  @DateTimeJsonConverter()
  DateTime? get fillTime => throw _privateConstructorUsedError;

  /// 签名图片地址 适用于计数、计量、记录这三种类型的才有值
  String? get signUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculateResultModelCopyWith<CalculateResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateResultModelCopyWith<$Res> {
  factory $CalculateResultModelCopyWith(CalculateResultModel value,
          $Res Function(CalculateResultModel) then) =
      _$CalculateResultModelCopyWithImpl<$Res, CalculateResultModel>;
  @useResult
  $Res call({@DateTimeJsonConverter() DateTime? fillTime, String? signUrl});
}

/// @nodoc
class _$CalculateResultModelCopyWithImpl<$Res,
        $Val extends CalculateResultModel>
    implements $CalculateResultModelCopyWith<$Res> {
  _$CalculateResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillTime = freezed,
    Object? signUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fillTime: freezed == fillTime
          ? _value.fillTime
          : fillTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculateResultModelImplCopyWith<$Res>
    implements $CalculateResultModelCopyWith<$Res> {
  factory _$$CalculateResultModelImplCopyWith(_$CalculateResultModelImpl value,
          $Res Function(_$CalculateResultModelImpl) then) =
      __$$CalculateResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@DateTimeJsonConverter() DateTime? fillTime, String? signUrl});
}

/// @nodoc
class __$$CalculateResultModelImplCopyWithImpl<$Res>
    extends _$CalculateResultModelCopyWithImpl<$Res, _$CalculateResultModelImpl>
    implements _$$CalculateResultModelImplCopyWith<$Res> {
  __$$CalculateResultModelImplCopyWithImpl(_$CalculateResultModelImpl _value,
      $Res Function(_$CalculateResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillTime = freezed,
    Object? signUrl = freezed,
  }) {
    return _then(_$CalculateResultModelImpl(
      fillTime: freezed == fillTime
          ? _value.fillTime
          : fillTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculateResultModelImpl extends _CalculateResultModel {
  const _$CalculateResultModelImpl(
      {@DateTimeJsonConverter() this.fillTime, this.signUrl})
      : super._();

  factory _$CalculateResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculateResultModelImplFromJson(json);

  /// 填写时间
  @override
  @DateTimeJsonConverter()
  final DateTime? fillTime;

  /// 签名图片地址 适用于计数、计量、记录这三种类型的才有值
  @override
  final String? signUrl;

  @override
  String toString() {
    return 'CalculateResultModel(fillTime: $fillTime, signUrl: $signUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateResultModelImpl &&
            (identical(other.fillTime, fillTime) ||
                other.fillTime == fillTime) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fillTime, signUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateResultModelImplCopyWith<_$CalculateResultModelImpl>
      get copyWith =>
          __$$CalculateResultModelImplCopyWithImpl<_$CalculateResultModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculateResultModelImplToJson(
      this,
    );
  }
}

abstract class _CalculateResultModel extends CalculateResultModel {
  const factory _CalculateResultModel(
      {@DateTimeJsonConverter() final DateTime? fillTime,
      final String? signUrl}) = _$CalculateResultModelImpl;
  const _CalculateResultModel._() : super._();

  factory _CalculateResultModel.fromJson(Map<String, dynamic> json) =
      _$CalculateResultModelImpl.fromJson;

  @override

  /// 填写时间
  @DateTimeJsonConverter()
  DateTime? get fillTime;
  @override

  /// 签名图片地址 适用于计数、计量、记录这三种类型的才有值
  String? get signUrl;
  @override
  @JsonKey(ignore: true)
  _$$CalculateResultModelImplCopyWith<_$CalculateResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EvaluateResultModel _$EvaluateResultModelFromJson(Map<String, dynamic> json) {
  return _EvaluateResultModel.fromJson(json);
}

/// @nodoc
mixin _$EvaluateResultModel {
  /// 评价评分
  double? get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluateResultModelCopyWith<EvaluateResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluateResultModelCopyWith<$Res> {
  factory $EvaluateResultModelCopyWith(
          EvaluateResultModel value, $Res Function(EvaluateResultModel) then) =
      _$EvaluateResultModelCopyWithImpl<$Res, EvaluateResultModel>;
  @useResult
  $Res call({double? score});
}

/// @nodoc
class _$EvaluateResultModelCopyWithImpl<$Res, $Val extends EvaluateResultModel>
    implements $EvaluateResultModelCopyWith<$Res> {
  _$EvaluateResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvaluateResultModelImplCopyWith<$Res>
    implements $EvaluateResultModelCopyWith<$Res> {
  factory _$$EvaluateResultModelImplCopyWith(_$EvaluateResultModelImpl value,
          $Res Function(_$EvaluateResultModelImpl) then) =
      __$$EvaluateResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? score});
}

/// @nodoc
class __$$EvaluateResultModelImplCopyWithImpl<$Res>
    extends _$EvaluateResultModelCopyWithImpl<$Res, _$EvaluateResultModelImpl>
    implements _$$EvaluateResultModelImplCopyWith<$Res> {
  __$$EvaluateResultModelImplCopyWithImpl(_$EvaluateResultModelImpl _value,
      $Res Function(_$EvaluateResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = freezed,
  }) {
    return _then(_$EvaluateResultModelImpl(
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvaluateResultModelImpl extends _EvaluateResultModel {
  const _$EvaluateResultModelImpl({this.score}) : super._();

  factory _$EvaluateResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvaluateResultModelImplFromJson(json);

  /// 评价评分
  @override
  final double? score;

  @override
  String toString() {
    return 'EvaluateResultModel(score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvaluateResultModelImpl &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvaluateResultModelImplCopyWith<_$EvaluateResultModelImpl> get copyWith =>
      __$$EvaluateResultModelImplCopyWithImpl<_$EvaluateResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvaluateResultModelImplToJson(
      this,
    );
  }
}

abstract class _EvaluateResultModel extends EvaluateResultModel {
  const factory _EvaluateResultModel({final double? score}) =
      _$EvaluateResultModelImpl;
  const _EvaluateResultModel._() : super._();

  factory _EvaluateResultModel.fromJson(Map<String, dynamic> json) =
      _$EvaluateResultModelImpl.fromJson;

  @override

  /// 评价评分
  double? get score;
  @override
  @JsonKey(ignore: true)
  _$$EvaluateResultModelImplCopyWith<_$EvaluateResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FillinResultModel _$FillinResultModelFromJson(Map<String, dynamic> json) {
  return _FillinResultModel.fromJson(json);
}

/// @nodoc
mixin _$FillinResultModel {
  /// 填写的内容
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FillinResultModelCopyWith<FillinResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillinResultModelCopyWith<$Res> {
  factory $FillinResultModelCopyWith(
          FillinResultModel value, $Res Function(FillinResultModel) then) =
      _$FillinResultModelCopyWithImpl<$Res, FillinResultModel>;
  @useResult
  $Res call({String? content});
}

/// @nodoc
class _$FillinResultModelCopyWithImpl<$Res, $Val extends FillinResultModel>
    implements $FillinResultModelCopyWith<$Res> {
  _$FillinResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FillinResultModelImplCopyWith<$Res>
    implements $FillinResultModelCopyWith<$Res> {
  factory _$$FillinResultModelImplCopyWith(_$FillinResultModelImpl value,
          $Res Function(_$FillinResultModelImpl) then) =
      __$$FillinResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? content});
}

/// @nodoc
class __$$FillinResultModelImplCopyWithImpl<$Res>
    extends _$FillinResultModelCopyWithImpl<$Res, _$FillinResultModelImpl>
    implements _$$FillinResultModelImplCopyWith<$Res> {
  __$$FillinResultModelImplCopyWithImpl(_$FillinResultModelImpl _value,
      $Res Function(_$FillinResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$FillinResultModelImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FillinResultModelImpl extends _FillinResultModel {
  const _$FillinResultModelImpl({this.content}) : super._();

  factory _$FillinResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FillinResultModelImplFromJson(json);

  /// 填写的内容
  @override
  final String? content;

  @override
  String toString() {
    return 'FillinResultModel(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FillinResultModelImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FillinResultModelImplCopyWith<_$FillinResultModelImpl> get copyWith =>
      __$$FillinResultModelImplCopyWithImpl<_$FillinResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FillinResultModelImplToJson(
      this,
    );
  }
}

abstract class _FillinResultModel extends FillinResultModel {
  const factory _FillinResultModel({final String? content}) =
      _$FillinResultModelImpl;
  const _FillinResultModel._() : super._();

  factory _FillinResultModel.fromJson(Map<String, dynamic> json) =
      _$FillinResultModelImpl.fromJson;

  @override

  /// 填写的内容
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$FillinResultModelImplCopyWith<_$FillinResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeteringResultModel _$MeteringResultModelFromJson(Map<String, dynamic> json) {
  return _MeteringResultModel.fromJson(json);
}

/// @nodoc
mixin _$MeteringResultModel {
  /// 填写时间
  @DateTimeJsonConverter()
  DateTime? get fillTime => throw _privateConstructorUsedError;

  /// 计量填写数值
  @JsonKey(name: 'meteringValue')
  double? get value => throw _privateConstructorUsedError;

  /// 签名图片地址
  String? get signUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeteringResultModelCopyWith<MeteringResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeteringResultModelCopyWith<$Res> {
  factory $MeteringResultModelCopyWith(
          MeteringResultModel value, $Res Function(MeteringResultModel) then) =
      _$MeteringResultModelCopyWithImpl<$Res, MeteringResultModel>;
  @useResult
  $Res call(
      {@DateTimeJsonConverter() DateTime? fillTime,
      @JsonKey(name: 'meteringValue') double? value,
      String? signUrl});
}

/// @nodoc
class _$MeteringResultModelCopyWithImpl<$Res, $Val extends MeteringResultModel>
    implements $MeteringResultModelCopyWith<$Res> {
  _$MeteringResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillTime = freezed,
    Object? value = freezed,
    Object? signUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fillTime: freezed == fillTime
          ? _value.fillTime
          : fillTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeteringResultModelImplCopyWith<$Res>
    implements $MeteringResultModelCopyWith<$Res> {
  factory _$$MeteringResultModelImplCopyWith(_$MeteringResultModelImpl value,
          $Res Function(_$MeteringResultModelImpl) then) =
      __$$MeteringResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeJsonConverter() DateTime? fillTime,
      @JsonKey(name: 'meteringValue') double? value,
      String? signUrl});
}

/// @nodoc
class __$$MeteringResultModelImplCopyWithImpl<$Res>
    extends _$MeteringResultModelCopyWithImpl<$Res, _$MeteringResultModelImpl>
    implements _$$MeteringResultModelImplCopyWith<$Res> {
  __$$MeteringResultModelImplCopyWithImpl(_$MeteringResultModelImpl _value,
      $Res Function(_$MeteringResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillTime = freezed,
    Object? value = freezed,
    Object? signUrl = freezed,
  }) {
    return _then(_$MeteringResultModelImpl(
      fillTime: freezed == fillTime
          ? _value.fillTime
          : fillTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeteringResultModelImpl extends _MeteringResultModel {
  const _$MeteringResultModelImpl(
      {@DateTimeJsonConverter() this.fillTime,
      @JsonKey(name: 'meteringValue') this.value,
      this.signUrl})
      : super._();

  factory _$MeteringResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeteringResultModelImplFromJson(json);

  /// 填写时间
  @override
  @DateTimeJsonConverter()
  final DateTime? fillTime;

  /// 计量填写数值
  @override
  @JsonKey(name: 'meteringValue')
  final double? value;

  /// 签名图片地址
  @override
  final String? signUrl;

  @override
  String toString() {
    return 'MeteringResultModel(fillTime: $fillTime, value: $value, signUrl: $signUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeteringResultModelImpl &&
            (identical(other.fillTime, fillTime) ||
                other.fillTime == fillTime) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fillTime, value, signUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeteringResultModelImplCopyWith<_$MeteringResultModelImpl> get copyWith =>
      __$$MeteringResultModelImplCopyWithImpl<_$MeteringResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeteringResultModelImplToJson(
      this,
    );
  }
}

abstract class _MeteringResultModel extends MeteringResultModel {
  const factory _MeteringResultModel(
      {@DateTimeJsonConverter() final DateTime? fillTime,
      @JsonKey(name: 'meteringValue') final double? value,
      final String? signUrl}) = _$MeteringResultModelImpl;
  const _MeteringResultModel._() : super._();

  factory _MeteringResultModel.fromJson(Map<String, dynamic> json) =
      _$MeteringResultModelImpl.fromJson;

  @override

  /// 填写时间
  @DateTimeJsonConverter()
  DateTime? get fillTime;
  @override

  /// 计量填写数值
  @JsonKey(name: 'meteringValue')
  double? get value;
  @override

  /// 签名图片地址
  String? get signUrl;
  @override
  @JsonKey(ignore: true)
  _$$MeteringResultModelImplCopyWith<_$MeteringResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoiceResultModel _$ChoiceResultModelFromJson(Map<String, dynamic> json) {
  return _ChoiceResultModel.fromJson(json);
}

/// @nodoc
mixin _$ChoiceResultModel {
  /// 展示内容
  String get content => throw _privateConstructorUsedError;

  /// 填空内容
  @JsonKey(name: 'showBlankValue')
  String get inputValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceResultModelCopyWith<ChoiceResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceResultModelCopyWith<$Res> {
  factory $ChoiceResultModelCopyWith(
          ChoiceResultModel value, $Res Function(ChoiceResultModel) then) =
      _$ChoiceResultModelCopyWithImpl<$Res, ChoiceResultModel>;
  @useResult
  $Res call(
      {String content, @JsonKey(name: 'showBlankValue') String inputValue});
}

/// @nodoc
class _$ChoiceResultModelCopyWithImpl<$Res, $Val extends ChoiceResultModel>
    implements $ChoiceResultModelCopyWith<$Res> {
  _$ChoiceResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? inputValue = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      inputValue: null == inputValue
          ? _value.inputValue
          : inputValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceResultModelImplCopyWith<$Res>
    implements $ChoiceResultModelCopyWith<$Res> {
  factory _$$ChoiceResultModelImplCopyWith(_$ChoiceResultModelImpl value,
          $Res Function(_$ChoiceResultModelImpl) then) =
      __$$ChoiceResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, @JsonKey(name: 'showBlankValue') String inputValue});
}

/// @nodoc
class __$$ChoiceResultModelImplCopyWithImpl<$Res>
    extends _$ChoiceResultModelCopyWithImpl<$Res, _$ChoiceResultModelImpl>
    implements _$$ChoiceResultModelImplCopyWith<$Res> {
  __$$ChoiceResultModelImplCopyWithImpl(_$ChoiceResultModelImpl _value,
      $Res Function(_$ChoiceResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? inputValue = null,
  }) {
    return _then(_$ChoiceResultModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      inputValue: null == inputValue
          ? _value.inputValue
          : inputValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceResultModelImpl extends _ChoiceResultModel {
  const _$ChoiceResultModelImpl(
      {this.content = '',
      @JsonKey(name: 'showBlankValue') this.inputValue = ''})
      : super._();

  factory _$ChoiceResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceResultModelImplFromJson(json);

  /// 展示内容
  @override
  @JsonKey()
  final String content;

  /// 填空内容
  @override
  @JsonKey(name: 'showBlankValue')
  final String inputValue;

  @override
  String toString() {
    return 'ChoiceResultModel(content: $content, inputValue: $inputValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceResultModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.inputValue, inputValue) ||
                other.inputValue == inputValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, inputValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceResultModelImplCopyWith<_$ChoiceResultModelImpl> get copyWith =>
      __$$ChoiceResultModelImplCopyWithImpl<_$ChoiceResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceResultModelImplToJson(
      this,
    );
  }
}

abstract class _ChoiceResultModel extends ChoiceResultModel {
  const factory _ChoiceResultModel(
          {final String content,
          @JsonKey(name: 'showBlankValue') final String inputValue}) =
      _$ChoiceResultModelImpl;
  const _ChoiceResultModel._() : super._();

  factory _ChoiceResultModel.fromJson(Map<String, dynamic> json) =
      _$ChoiceResultModelImpl.fromJson;

  @override

  /// 展示内容
  String get content;
  @override

  /// 填空内容
  @JsonKey(name: 'showBlankValue')
  String get inputValue;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceResultModelImplCopyWith<_$ChoiceResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecordResultModel _$RecordResultModelFromJson(Map<String, dynamic> json) {
  return _RecordResultModel.fromJson(json);
}

/// @nodoc
mixin _$RecordResultModel {
  /// 展示内容
  String? get content => throw _privateConstructorUsedError;

  /// 签名图片地址
  String? get signUrl => throw _privateConstructorUsedError;

  /// 填写时间
  @DateTimeJsonConverter()
  DateTime? get fillTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordResultModelCopyWith<RecordResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordResultModelCopyWith<$Res> {
  factory $RecordResultModelCopyWith(
          RecordResultModel value, $Res Function(RecordResultModel) then) =
      _$RecordResultModelCopyWithImpl<$Res, RecordResultModel>;
  @useResult
  $Res call(
      {String? content,
      String? signUrl,
      @DateTimeJsonConverter() DateTime? fillTime});
}

/// @nodoc
class _$RecordResultModelCopyWithImpl<$Res, $Val extends RecordResultModel>
    implements $RecordResultModelCopyWith<$Res> {
  _$RecordResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? signUrl = freezed,
    Object? fillTime = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fillTime: freezed == fillTime
          ? _value.fillTime
          : fillTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordResultModelImplCopyWith<$Res>
    implements $RecordResultModelCopyWith<$Res> {
  factory _$$RecordResultModelImplCopyWith(_$RecordResultModelImpl value,
          $Res Function(_$RecordResultModelImpl) then) =
      __$$RecordResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? content,
      String? signUrl,
      @DateTimeJsonConverter() DateTime? fillTime});
}

/// @nodoc
class __$$RecordResultModelImplCopyWithImpl<$Res>
    extends _$RecordResultModelCopyWithImpl<$Res, _$RecordResultModelImpl>
    implements _$$RecordResultModelImplCopyWith<$Res> {
  __$$RecordResultModelImplCopyWithImpl(_$RecordResultModelImpl _value,
      $Res Function(_$RecordResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? signUrl = freezed,
    Object? fillTime = freezed,
  }) {
    return _then(_$RecordResultModelImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fillTime: freezed == fillTime
          ? _value.fillTime
          : fillTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordResultModelImpl extends _RecordResultModel {
  const _$RecordResultModelImpl(
      {this.content, this.signUrl, @DateTimeJsonConverter() this.fillTime})
      : super._();

  factory _$RecordResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordResultModelImplFromJson(json);

  /// 展示内容
  @override
  final String? content;

  /// 签名图片地址
  @override
  final String? signUrl;

  /// 填写时间
  @override
  @DateTimeJsonConverter()
  final DateTime? fillTime;

  @override
  String toString() {
    return 'RecordResultModel(content: $content, signUrl: $signUrl, fillTime: $fillTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordResultModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.fillTime, fillTime) ||
                other.fillTime == fillTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, signUrl, fillTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordResultModelImplCopyWith<_$RecordResultModelImpl> get copyWith =>
      __$$RecordResultModelImplCopyWithImpl<_$RecordResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordResultModelImplToJson(
      this,
    );
  }
}

abstract class _RecordResultModel extends RecordResultModel {
  const factory _RecordResultModel(
          {final String? content,
          final String? signUrl,
          @DateTimeJsonConverter() final DateTime? fillTime}) =
      _$RecordResultModelImpl;
  const _RecordResultModel._() : super._();

  factory _RecordResultModel.fromJson(Map<String, dynamic> json) =
      _$RecordResultModelImpl.fromJson;

  @override

  /// 展示内容
  String? get content;
  @override

  /// 签名图片地址
  String? get signUrl;
  @override

  /// 填写时间
  @DateTimeJsonConverter()
  DateTime? get fillTime;
  @override
  @JsonKey(ignore: true)
  _$$RecordResultModelImplCopyWith<_$RecordResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadResultModel _$UploadResultModelFromJson(Map<String, dynamic> json) {
  return _UploadResultModel.fromJson(json);
}

/// @nodoc
mixin _$UploadResultModel {
  /// 图片地址
  @JsonKey(name: 'picUrls')
  List<String> get pictures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadResultModelCopyWith<UploadResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResultModelCopyWith<$Res> {
  factory $UploadResultModelCopyWith(
          UploadResultModel value, $Res Function(UploadResultModel) then) =
      _$UploadResultModelCopyWithImpl<$Res, UploadResultModel>;
  @useResult
  $Res call({@JsonKey(name: 'picUrls') List<String> pictures});
}

/// @nodoc
class _$UploadResultModelCopyWithImpl<$Res, $Val extends UploadResultModel>
    implements $UploadResultModelCopyWith<$Res> {
  _$UploadResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = null,
  }) {
    return _then(_value.copyWith(
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadResultModelImplCopyWith<$Res>
    implements $UploadResultModelCopyWith<$Res> {
  factory _$$UploadResultModelImplCopyWith(_$UploadResultModelImpl value,
          $Res Function(_$UploadResultModelImpl) then) =
      __$$UploadResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'picUrls') List<String> pictures});
}

/// @nodoc
class __$$UploadResultModelImplCopyWithImpl<$Res>
    extends _$UploadResultModelCopyWithImpl<$Res, _$UploadResultModelImpl>
    implements _$$UploadResultModelImplCopyWith<$Res> {
  __$$UploadResultModelImplCopyWithImpl(_$UploadResultModelImpl _value,
      $Res Function(_$UploadResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pictures = null,
  }) {
    return _then(_$UploadResultModelImpl(
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadResultModelImpl extends _UploadResultModel {
  const _$UploadResultModelImpl(
      {@JsonKey(name: 'picUrls') final List<String> pictures = const []})
      : _pictures = pictures,
        super._();

  factory _$UploadResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResultModelImplFromJson(json);

  /// 图片地址
  final List<String> _pictures;

  /// 图片地址
  @override
  @JsonKey(name: 'picUrls')
  List<String> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  String toString() {
    return 'UploadResultModel(pictures: $pictures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadResultModelImpl &&
            const DeepCollectionEquality().equals(other._pictures, _pictures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pictures));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadResultModelImplCopyWith<_$UploadResultModelImpl> get copyWith =>
      __$$UploadResultModelImplCopyWithImpl<_$UploadResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadResultModelImplToJson(
      this,
    );
  }
}

abstract class _UploadResultModel extends UploadResultModel {
  const factory _UploadResultModel(
          {@JsonKey(name: 'picUrls') final List<String> pictures}) =
      _$UploadResultModelImpl;
  const _UploadResultModel._() : super._();

  factory _UploadResultModel.fromJson(Map<String, dynamic> json) =
      _$UploadResultModelImpl.fromJson;

  @override

  /// 图片地址
  @JsonKey(name: 'picUrls')
  List<String> get pictures;
  @override
  @JsonKey(ignore: true)
  _$$UploadResultModelImplCopyWith<_$UploadResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConservationInputModel _$ConservationInputModelFromJson(
    Map<String, dynamic> json) {
  return _ConservationInputModel.fromJson(json);
}

/// @nodoc
mixin _$ConservationInputModel {
  int get id => throw _privateConstructorUsedError;

  /// 保育项名称
  @JsonKey(name: 'itemName')
  String get name => throw _privateConstructorUsedError;

  /// 保育项类型
  @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
  InputType get type => throw _privateConstructorUsedError;

  /// 计数类型
  @JsonKey(name: 'calculateDef')
  CalculateModel? get calculate => throw _privateConstructorUsedError;

  /// 计量类型
  @JsonKey(name: 'meteringDef')
  MeteringModel? get metering => throw _privateConstructorUsedError;

  /// 单选 多选类型
  @JsonKey(name: 'radioOrSelectDefs')
  List<ChoiceModel> get choice => throw _privateConstructorUsedError;

  /// 记录类型
  @JsonKey(name: 'recordDef')
  RecordModel? get record => throw _privateConstructorUsedError;

  /// 计数结果
  List<CalculateResultModel> get calculateResults =>
      throw _privateConstructorUsedError;

  /// 评价结果
  EvaluateResultModel? get evaluateResult => throw _privateConstructorUsedError;

  /// 填空结果
  FillinResultModel? get fillinResult => throw _privateConstructorUsedError;

  /// 计量结果
  List<MeteringResultModel> get meteringResults =>
      throw _privateConstructorUsedError;

  /// 单选结果
  @JsonKey(name: 'radioResult')
  ChoiceResultModel? get radioResult => throw _privateConstructorUsedError;

  /// 多选结果
  List<ChoiceResultModel> get selectResults =>
      throw _privateConstructorUsedError;

  /// 记录结果
  List<RecordResultModel> get recordResults =>
      throw _privateConstructorUsedError;

  /// 上传结果
  @JsonKey(name: 'uploadResult')
  UploadResultModel? get uploadResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConservationInputModelCopyWith<ConservationInputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConservationInputModelCopyWith<$Res> {
  factory $ConservationInputModelCopyWith(ConservationInputModel value,
          $Res Function(ConservationInputModel) then) =
      _$ConservationInputModelCopyWithImpl<$Res, ConservationInputModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'itemName') String name,
      @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
      InputType type,
      @JsonKey(name: 'calculateDef') CalculateModel? calculate,
      @JsonKey(name: 'meteringDef') MeteringModel? metering,
      @JsonKey(name: 'radioOrSelectDefs') List<ChoiceModel> choice,
      @JsonKey(name: 'recordDef') RecordModel? record,
      List<CalculateResultModel> calculateResults,
      EvaluateResultModel? evaluateResult,
      FillinResultModel? fillinResult,
      List<MeteringResultModel> meteringResults,
      @JsonKey(name: 'radioResult') ChoiceResultModel? radioResult,
      List<ChoiceResultModel> selectResults,
      List<RecordResultModel> recordResults,
      @JsonKey(name: 'uploadResult') UploadResultModel? uploadResult});

  $CalculateModelCopyWith<$Res>? get calculate;
  $MeteringModelCopyWith<$Res>? get metering;
  $RecordModelCopyWith<$Res>? get record;
  $EvaluateResultModelCopyWith<$Res>? get evaluateResult;
  $FillinResultModelCopyWith<$Res>? get fillinResult;
  $ChoiceResultModelCopyWith<$Res>? get radioResult;
  $UploadResultModelCopyWith<$Res>? get uploadResult;
}

/// @nodoc
class _$ConservationInputModelCopyWithImpl<$Res,
        $Val extends ConservationInputModel>
    implements $ConservationInputModelCopyWith<$Res> {
  _$ConservationInputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? calculate = freezed,
    Object? metering = freezed,
    Object? choice = null,
    Object? record = freezed,
    Object? calculateResults = null,
    Object? evaluateResult = freezed,
    Object? fillinResult = freezed,
    Object? meteringResults = null,
    Object? radioResult = freezed,
    Object? selectResults = null,
    Object? recordResults = null,
    Object? uploadResult = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputType,
      calculate: freezed == calculate
          ? _value.calculate
          : calculate // ignore: cast_nullable_to_non_nullable
              as CalculateModel?,
      metering: freezed == metering
          ? _value.metering
          : metering // ignore: cast_nullable_to_non_nullable
              as MeteringModel?,
      choice: null == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
      calculateResults: null == calculateResults
          ? _value.calculateResults
          : calculateResults // ignore: cast_nullable_to_non_nullable
              as List<CalculateResultModel>,
      evaluateResult: freezed == evaluateResult
          ? _value.evaluateResult
          : evaluateResult // ignore: cast_nullable_to_non_nullable
              as EvaluateResultModel?,
      fillinResult: freezed == fillinResult
          ? _value.fillinResult
          : fillinResult // ignore: cast_nullable_to_non_nullable
              as FillinResultModel?,
      meteringResults: null == meteringResults
          ? _value.meteringResults
          : meteringResults // ignore: cast_nullable_to_non_nullable
              as List<MeteringResultModel>,
      radioResult: freezed == radioResult
          ? _value.radioResult
          : radioResult // ignore: cast_nullable_to_non_nullable
              as ChoiceResultModel?,
      selectResults: null == selectResults
          ? _value.selectResults
          : selectResults // ignore: cast_nullable_to_non_nullable
              as List<ChoiceResultModel>,
      recordResults: null == recordResults
          ? _value.recordResults
          : recordResults // ignore: cast_nullable_to_non_nullable
              as List<RecordResultModel>,
      uploadResult: freezed == uploadResult
          ? _value.uploadResult
          : uploadResult // ignore: cast_nullable_to_non_nullable
              as UploadResultModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CalculateModelCopyWith<$Res>? get calculate {
    if (_value.calculate == null) {
      return null;
    }

    return $CalculateModelCopyWith<$Res>(_value.calculate!, (value) {
      return _then(_value.copyWith(calculate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MeteringModelCopyWith<$Res>? get metering {
    if (_value.metering == null) {
      return null;
    }

    return $MeteringModelCopyWith<$Res>(_value.metering!, (value) {
      return _then(_value.copyWith(metering: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecordModelCopyWith<$Res>? get record {
    if (_value.record == null) {
      return null;
    }

    return $RecordModelCopyWith<$Res>(_value.record!, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EvaluateResultModelCopyWith<$Res>? get evaluateResult {
    if (_value.evaluateResult == null) {
      return null;
    }

    return $EvaluateResultModelCopyWith<$Res>(_value.evaluateResult!, (value) {
      return _then(_value.copyWith(evaluateResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FillinResultModelCopyWith<$Res>? get fillinResult {
    if (_value.fillinResult == null) {
      return null;
    }

    return $FillinResultModelCopyWith<$Res>(_value.fillinResult!, (value) {
      return _then(_value.copyWith(fillinResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChoiceResultModelCopyWith<$Res>? get radioResult {
    if (_value.radioResult == null) {
      return null;
    }

    return $ChoiceResultModelCopyWith<$Res>(_value.radioResult!, (value) {
      return _then(_value.copyWith(radioResult: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UploadResultModelCopyWith<$Res>? get uploadResult {
    if (_value.uploadResult == null) {
      return null;
    }

    return $UploadResultModelCopyWith<$Res>(_value.uploadResult!, (value) {
      return _then(_value.copyWith(uploadResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConservationInputModelImplCopyWith<$Res>
    implements $ConservationInputModelCopyWith<$Res> {
  factory _$$ConservationInputModelImplCopyWith(
          _$ConservationInputModelImpl value,
          $Res Function(_$ConservationInputModelImpl) then) =
      __$$ConservationInputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'itemName') String name,
      @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
      InputType type,
      @JsonKey(name: 'calculateDef') CalculateModel? calculate,
      @JsonKey(name: 'meteringDef') MeteringModel? metering,
      @JsonKey(name: 'radioOrSelectDefs') List<ChoiceModel> choice,
      @JsonKey(name: 'recordDef') RecordModel? record,
      List<CalculateResultModel> calculateResults,
      EvaluateResultModel? evaluateResult,
      FillinResultModel? fillinResult,
      List<MeteringResultModel> meteringResults,
      @JsonKey(name: 'radioResult') ChoiceResultModel? radioResult,
      List<ChoiceResultModel> selectResults,
      List<RecordResultModel> recordResults,
      @JsonKey(name: 'uploadResult') UploadResultModel? uploadResult});

  @override
  $CalculateModelCopyWith<$Res>? get calculate;
  @override
  $MeteringModelCopyWith<$Res>? get metering;
  @override
  $RecordModelCopyWith<$Res>? get record;
  @override
  $EvaluateResultModelCopyWith<$Res>? get evaluateResult;
  @override
  $FillinResultModelCopyWith<$Res>? get fillinResult;
  @override
  $ChoiceResultModelCopyWith<$Res>? get radioResult;
  @override
  $UploadResultModelCopyWith<$Res>? get uploadResult;
}

/// @nodoc
class __$$ConservationInputModelImplCopyWithImpl<$Res>
    extends _$ConservationInputModelCopyWithImpl<$Res,
        _$ConservationInputModelImpl>
    implements _$$ConservationInputModelImplCopyWith<$Res> {
  __$$ConservationInputModelImplCopyWithImpl(
      _$ConservationInputModelImpl _value,
      $Res Function(_$ConservationInputModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? calculate = freezed,
    Object? metering = freezed,
    Object? choice = null,
    Object? record = freezed,
    Object? calculateResults = null,
    Object? evaluateResult = freezed,
    Object? fillinResult = freezed,
    Object? meteringResults = null,
    Object? radioResult = freezed,
    Object? selectResults = null,
    Object? recordResults = null,
    Object? uploadResult = freezed,
  }) {
    return _then(_$ConservationInputModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InputType,
      calculate: freezed == calculate
          ? _value.calculate
          : calculate // ignore: cast_nullable_to_non_nullable
              as CalculateModel?,
      metering: freezed == metering
          ? _value.metering
          : metering // ignore: cast_nullable_to_non_nullable
              as MeteringModel?,
      choice: null == choice
          ? _value._choice
          : choice // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      record: freezed == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as RecordModel?,
      calculateResults: null == calculateResults
          ? _value._calculateResults
          : calculateResults // ignore: cast_nullable_to_non_nullable
              as List<CalculateResultModel>,
      evaluateResult: freezed == evaluateResult
          ? _value.evaluateResult
          : evaluateResult // ignore: cast_nullable_to_non_nullable
              as EvaluateResultModel?,
      fillinResult: freezed == fillinResult
          ? _value.fillinResult
          : fillinResult // ignore: cast_nullable_to_non_nullable
              as FillinResultModel?,
      meteringResults: null == meteringResults
          ? _value._meteringResults
          : meteringResults // ignore: cast_nullable_to_non_nullable
              as List<MeteringResultModel>,
      radioResult: freezed == radioResult
          ? _value.radioResult
          : radioResult // ignore: cast_nullable_to_non_nullable
              as ChoiceResultModel?,
      selectResults: null == selectResults
          ? _value._selectResults
          : selectResults // ignore: cast_nullable_to_non_nullable
              as List<ChoiceResultModel>,
      recordResults: null == recordResults
          ? _value._recordResults
          : recordResults // ignore: cast_nullable_to_non_nullable
              as List<RecordResultModel>,
      uploadResult: freezed == uploadResult
          ? _value.uploadResult
          : uploadResult // ignore: cast_nullable_to_non_nullable
              as UploadResultModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConservationInputModelImpl extends _ConservationInputModel {
  const _$ConservationInputModelImpl(
      {required this.id,
      @JsonKey(name: 'itemName') this.name = '',
      @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
      this.type = InputType.unknown,
      @JsonKey(name: 'calculateDef') this.calculate,
      @JsonKey(name: 'meteringDef') this.metering,
      @JsonKey(name: 'radioOrSelectDefs')
      final List<ChoiceModel> choice = const [],
      @JsonKey(name: 'recordDef') this.record,
      final List<CalculateResultModel> calculateResults = const [],
      this.evaluateResult,
      this.fillinResult,
      final List<MeteringResultModel> meteringResults = const [],
      @JsonKey(name: 'radioResult') this.radioResult,
      final List<ChoiceResultModel> selectResults = const [],
      final List<RecordResultModel> recordResults = const [],
      @JsonKey(name: 'uploadResult') this.uploadResult})
      : _choice = choice,
        _calculateResults = calculateResults,
        _meteringResults = meteringResults,
        _selectResults = selectResults,
        _recordResults = recordResults,
        super._();

  factory _$ConservationInputModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConservationInputModelImplFromJson(json);

  @override
  final int id;

  /// 保育项名称
  @override
  @JsonKey(name: 'itemName')
  final String name;

  /// 保育项类型
  @override
  @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
  final InputType type;

  /// 计数类型
  @override
  @JsonKey(name: 'calculateDef')
  final CalculateModel? calculate;

  /// 计量类型
  @override
  @JsonKey(name: 'meteringDef')
  final MeteringModel? metering;

  /// 单选 多选类型
  final List<ChoiceModel> _choice;

  /// 单选 多选类型
  @override
  @JsonKey(name: 'radioOrSelectDefs')
  List<ChoiceModel> get choice {
    if (_choice is EqualUnmodifiableListView) return _choice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choice);
  }

  /// 记录类型
  @override
  @JsonKey(name: 'recordDef')
  final RecordModel? record;

  /// 计数结果
  final List<CalculateResultModel> _calculateResults;

  /// 计数结果
  @override
  @JsonKey()
  List<CalculateResultModel> get calculateResults {
    if (_calculateResults is EqualUnmodifiableListView)
      return _calculateResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calculateResults);
  }

  /// 评价结果
  @override
  final EvaluateResultModel? evaluateResult;

  /// 填空结果
  @override
  final FillinResultModel? fillinResult;

  /// 计量结果
  final List<MeteringResultModel> _meteringResults;

  /// 计量结果
  @override
  @JsonKey()
  List<MeteringResultModel> get meteringResults {
    if (_meteringResults is EqualUnmodifiableListView) return _meteringResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meteringResults);
  }

  /// 单选结果
  @override
  @JsonKey(name: 'radioResult')
  final ChoiceResultModel? radioResult;

  /// 多选结果
  final List<ChoiceResultModel> _selectResults;

  /// 多选结果
  @override
  @JsonKey()
  List<ChoiceResultModel> get selectResults {
    if (_selectResults is EqualUnmodifiableListView) return _selectResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectResults);
  }

  /// 记录结果
  final List<RecordResultModel> _recordResults;

  /// 记录结果
  @override
  @JsonKey()
  List<RecordResultModel> get recordResults {
    if (_recordResults is EqualUnmodifiableListView) return _recordResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordResults);
  }

  /// 上传结果
  @override
  @JsonKey(name: 'uploadResult')
  final UploadResultModel? uploadResult;

  @override
  String toString() {
    return 'ConservationInputModel(id: $id, name: $name, type: $type, calculate: $calculate, metering: $metering, choice: $choice, record: $record, calculateResults: $calculateResults, evaluateResult: $evaluateResult, fillinResult: $fillinResult, meteringResults: $meteringResults, radioResult: $radioResult, selectResults: $selectResults, recordResults: $recordResults, uploadResult: $uploadResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConservationInputModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.calculate, calculate) ||
                other.calculate == calculate) &&
            (identical(other.metering, metering) ||
                other.metering == metering) &&
            const DeepCollectionEquality().equals(other._choice, _choice) &&
            (identical(other.record, record) || other.record == record) &&
            const DeepCollectionEquality()
                .equals(other._calculateResults, _calculateResults) &&
            (identical(other.evaluateResult, evaluateResult) ||
                other.evaluateResult == evaluateResult) &&
            (identical(other.fillinResult, fillinResult) ||
                other.fillinResult == fillinResult) &&
            const DeepCollectionEquality()
                .equals(other._meteringResults, _meteringResults) &&
            (identical(other.radioResult, radioResult) ||
                other.radioResult == radioResult) &&
            const DeepCollectionEquality()
                .equals(other._selectResults, _selectResults) &&
            const DeepCollectionEquality()
                .equals(other._recordResults, _recordResults) &&
            (identical(other.uploadResult, uploadResult) ||
                other.uploadResult == uploadResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      calculate,
      metering,
      const DeepCollectionEquality().hash(_choice),
      record,
      const DeepCollectionEquality().hash(_calculateResults),
      evaluateResult,
      fillinResult,
      const DeepCollectionEquality().hash(_meteringResults),
      radioResult,
      const DeepCollectionEquality().hash(_selectResults),
      const DeepCollectionEquality().hash(_recordResults),
      uploadResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConservationInputModelImplCopyWith<_$ConservationInputModelImpl>
      get copyWith => __$$ConservationInputModelImplCopyWithImpl<
          _$ConservationInputModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConservationInputModelImplToJson(
      this,
    );
  }
}

abstract class _ConservationInputModel extends ConservationInputModel {
  const factory _ConservationInputModel(
      {required final int id,
      @JsonKey(name: 'itemName') final String name,
      @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
      final InputType type,
      @JsonKey(name: 'calculateDef') final CalculateModel? calculate,
      @JsonKey(name: 'meteringDef') final MeteringModel? metering,
      @JsonKey(name: 'radioOrSelectDefs') final List<ChoiceModel> choice,
      @JsonKey(name: 'recordDef') final RecordModel? record,
      final List<CalculateResultModel> calculateResults,
      final EvaluateResultModel? evaluateResult,
      final FillinResultModel? fillinResult,
      final List<MeteringResultModel> meteringResults,
      @JsonKey(name: 'radioResult') final ChoiceResultModel? radioResult,
      final List<ChoiceResultModel> selectResults,
      final List<RecordResultModel> recordResults,
      @JsonKey(name: 'uploadResult')
      final UploadResultModel? uploadResult}) = _$ConservationInputModelImpl;
  const _ConservationInputModel._() : super._();

  factory _ConservationInputModel.fromJson(Map<String, dynamic> json) =
      _$ConservationInputModelImpl.fromJson;

  @override
  int get id;
  @override

  /// 保育项名称
  @JsonKey(name: 'itemName')
  String get name;
  @override

  /// 保育项类型
  @JsonKey(name: 'itemType', unknownEnumValue: InputType.unknown)
  InputType get type;
  @override

  /// 计数类型
  @JsonKey(name: 'calculateDef')
  CalculateModel? get calculate;
  @override

  /// 计量类型
  @JsonKey(name: 'meteringDef')
  MeteringModel? get metering;
  @override

  /// 单选 多选类型
  @JsonKey(name: 'radioOrSelectDefs')
  List<ChoiceModel> get choice;
  @override

  /// 记录类型
  @JsonKey(name: 'recordDef')
  RecordModel? get record;
  @override

  /// 计数结果
  List<CalculateResultModel> get calculateResults;
  @override

  /// 评价结果
  EvaluateResultModel? get evaluateResult;
  @override

  /// 填空结果
  FillinResultModel? get fillinResult;
  @override

  /// 计量结果
  List<MeteringResultModel> get meteringResults;
  @override

  /// 单选结果
  @JsonKey(name: 'radioResult')
  ChoiceResultModel? get radioResult;
  @override

  /// 多选结果
  List<ChoiceResultModel> get selectResults;
  @override

  /// 记录结果
  List<RecordResultModel> get recordResults;
  @override

  /// 上传结果
  @JsonKey(name: 'uploadResult')
  UploadResultModel? get uploadResult;
  @override
  @JsonKey(ignore: true)
  _$$ConservationInputModelImplCopyWith<_$ConservationInputModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SimpleDayLifeReq _$SimpleDayLifeReqFromJson(Map<String, dynamic> json) {
  return _SimpleDayLifeReq.fromJson(json);
}

/// @nodoc
mixin _$SimpleDayLifeReq {
  /// 学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 开始日期
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate => throw _privateConstructorUsedError;

  /// 结束日期
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleDayLifeReqCopyWith<SimpleDayLifeReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleDayLifeReqCopyWith<$Res> {
  factory $SimpleDayLifeReqCopyWith(
          SimpleDayLifeReq value, $Res Function(SimpleDayLifeReq) then) =
      _$SimpleDayLifeReqCopyWithImpl<$Res, SimpleDayLifeReq>;
  @useResult
  $Res call(
      {String studentCode,
      @SimpleDateTimeJsonConverter() DateTime? startDate,
      @SimpleDateTimeJsonConverter() DateTime? endDate});
}

/// @nodoc
class _$SimpleDayLifeReqCopyWithImpl<$Res, $Val extends SimpleDayLifeReq>
    implements $SimpleDayLifeReqCopyWith<$Res> {
  _$SimpleDayLifeReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleDayLifeReqImplCopyWith<$Res>
    implements $SimpleDayLifeReqCopyWith<$Res> {
  factory _$$SimpleDayLifeReqImplCopyWith(_$SimpleDayLifeReqImpl value,
          $Res Function(_$SimpleDayLifeReqImpl) then) =
      __$$SimpleDayLifeReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String studentCode,
      @SimpleDateTimeJsonConverter() DateTime? startDate,
      @SimpleDateTimeJsonConverter() DateTime? endDate});
}

/// @nodoc
class __$$SimpleDayLifeReqImplCopyWithImpl<$Res>
    extends _$SimpleDayLifeReqCopyWithImpl<$Res, _$SimpleDayLifeReqImpl>
    implements _$$SimpleDayLifeReqImplCopyWith<$Res> {
  __$$SimpleDayLifeReqImplCopyWithImpl(_$SimpleDayLifeReqImpl _value,
      $Res Function(_$SimpleDayLifeReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$SimpleDayLifeReqImpl(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleDayLifeReqImpl extends _SimpleDayLifeReq {
  const _$SimpleDayLifeReqImpl(
      {required this.studentCode,
      @SimpleDateTimeJsonConverter() this.startDate,
      @SimpleDateTimeJsonConverter() this.endDate})
      : super._();

  factory _$SimpleDayLifeReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleDayLifeReqImplFromJson(json);

  /// 学号
  @override
  final String studentCode;

  /// 开始日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? startDate;

  /// 结束日期
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? endDate;

  @override
  String toString() {
    return 'SimpleDayLifeReq(studentCode: $studentCode, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleDayLifeReqImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleDayLifeReqImplCopyWith<_$SimpleDayLifeReqImpl> get copyWith =>
      __$$SimpleDayLifeReqImplCopyWithImpl<_$SimpleDayLifeReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleDayLifeReqImplToJson(
      this,
    );
  }
}

abstract class _SimpleDayLifeReq extends SimpleDayLifeReq {
  const factory _SimpleDayLifeReq(
          {required final String studentCode,
          @SimpleDateTimeJsonConverter() final DateTime? startDate,
          @SimpleDateTimeJsonConverter() final DateTime? endDate}) =
      _$SimpleDayLifeReqImpl;
  const _SimpleDayLifeReq._() : super._();

  factory _SimpleDayLifeReq.fromJson(Map<String, dynamic> json) =
      _$SimpleDayLifeReqImpl.fromJson;

  @override

  /// 学号
  String get studentCode;
  @override

  /// 开始日期
  @SimpleDateTimeJsonConverter()
  DateTime? get startDate;
  @override

  /// 结束日期
  @SimpleDateTimeJsonConverter()
  DateTime? get endDate;
  @override
  @JsonKey(ignore: true)
  _$$SimpleDayLifeReqImplCopyWith<_$SimpleDayLifeReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimpleDayLifeModel _$SimpleDayLifeModelFromJson(Map<String, dynamic> json) {
  return _SimpleDayLifeModel.fromJson(json);
}

/// @nodoc
mixin _$SimpleDayLifeModel {
  @JsonKey(name: 'dateStr')
  @SimpleDateTimeJsonConverter()
  DateTime? get date => throw _privateConstructorUsedError;

  /// 入园天数
  @JsonKey(name: 'inSchoolDays')
  int get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SimpleDayLifeModelCopyWith<SimpleDayLifeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleDayLifeModelCopyWith<$Res> {
  factory $SimpleDayLifeModelCopyWith(
          SimpleDayLifeModel value, $Res Function(SimpleDayLifeModel) then) =
      _$SimpleDayLifeModelCopyWithImpl<$Res, SimpleDayLifeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dateStr') @SimpleDateTimeJsonConverter() DateTime? date,
      @JsonKey(name: 'inSchoolDays') int days});
}

/// @nodoc
class _$SimpleDayLifeModelCopyWithImpl<$Res, $Val extends SimpleDayLifeModel>
    implements $SimpleDayLifeModelCopyWith<$Res> {
  _$SimpleDayLifeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleDayLifeModelImplCopyWith<$Res>
    implements $SimpleDayLifeModelCopyWith<$Res> {
  factory _$$SimpleDayLifeModelImplCopyWith(_$SimpleDayLifeModelImpl value,
          $Res Function(_$SimpleDayLifeModelImpl) then) =
      __$$SimpleDayLifeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dateStr') @SimpleDateTimeJsonConverter() DateTime? date,
      @JsonKey(name: 'inSchoolDays') int days});
}

/// @nodoc
class __$$SimpleDayLifeModelImplCopyWithImpl<$Res>
    extends _$SimpleDayLifeModelCopyWithImpl<$Res, _$SimpleDayLifeModelImpl>
    implements _$$SimpleDayLifeModelImplCopyWith<$Res> {
  __$$SimpleDayLifeModelImplCopyWithImpl(_$SimpleDayLifeModelImpl _value,
      $Res Function(_$SimpleDayLifeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? days = null,
  }) {
    return _then(_$SimpleDayLifeModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleDayLifeModelImpl extends _SimpleDayLifeModel {
  const _$SimpleDayLifeModelImpl(
      {@JsonKey(name: 'dateStr') @SimpleDateTimeJsonConverter() this.date,
      @JsonKey(name: 'inSchoolDays') this.days = 0})
      : super._();

  factory _$SimpleDayLifeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleDayLifeModelImplFromJson(json);

  @override
  @JsonKey(name: 'dateStr')
  @SimpleDateTimeJsonConverter()
  final DateTime? date;

  /// 入园天数
  @override
  @JsonKey(name: 'inSchoolDays')
  final int days;

  @override
  String toString() {
    return 'SimpleDayLifeModel(date: $date, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleDayLifeModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.days, days) || other.days == days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, days);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleDayLifeModelImplCopyWith<_$SimpleDayLifeModelImpl> get copyWith =>
      __$$SimpleDayLifeModelImplCopyWithImpl<_$SimpleDayLifeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleDayLifeModelImplToJson(
      this,
    );
  }
}

abstract class _SimpleDayLifeModel extends SimpleDayLifeModel {
  const factory _SimpleDayLifeModel(
          {@JsonKey(name: 'dateStr')
          @SimpleDateTimeJsonConverter()
          final DateTime? date,
          @JsonKey(name: 'inSchoolDays') final int days}) =
      _$SimpleDayLifeModelImpl;
  const _SimpleDayLifeModel._() : super._();

  factory _SimpleDayLifeModel.fromJson(Map<String, dynamic> json) =
      _$SimpleDayLifeModelImpl.fromJson;

  @override
  @JsonKey(name: 'dateStr')
  @SimpleDateTimeJsonConverter()
  DateTime? get date;
  @override

  /// 入园天数
  @JsonKey(name: 'inSchoolDays')
  int get days;
  @override
  @JsonKey(ignore: true)
  _$$SimpleDayLifeModelImplCopyWith<_$SimpleDayLifeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
mixin _$ReportModel {
  int get id => throw _privateConstructorUsedError;

  /// 保育模块名称
  @JsonKey(name: 'conservationName')
  String get name => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 排序
  int get sortNo => throw _privateConstructorUsedError;

  ///	业务状态
  int? get status => throw _privateConstructorUsedError;

  /// 保育问卷选项及结果
  @JsonKey(name: 'itemAndResults')
  List<ConservationInputModel> get questionnaires =>
      throw _privateConstructorUsedError;

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get publishTime => throw _privateConstructorUsedError;

  /// 创建人
  String? get createUser => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) then) =
      _$ReportModelCopyWithImpl<$Res, ReportModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'conservationName') String name,
      @Int2BoolJsonConverter() bool isDeleted,
      int sortNo,
      int? status,
      @JsonKey(name: 'itemAndResults')
      List<ConservationInputModel> questionnaires,
      @DateTimeJsonConverter() DateTime? publishTime,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime});
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res, $Val extends ReportModel>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDeleted = null,
    Object? sortNo = null,
    Object? status = freezed,
    Object? questionnaires = null,
    Object? publishTime = freezed,
    Object? createUser = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      questionnaires: null == questionnaires
          ? _value.questionnaires
          : questionnaires // ignore: cast_nullable_to_non_nullable
              as List<ConservationInputModel>,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportModelImplCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$ReportModelImplCopyWith(
          _$ReportModelImpl value, $Res Function(_$ReportModelImpl) then) =
      __$$ReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'conservationName') String name,
      @Int2BoolJsonConverter() bool isDeleted,
      int sortNo,
      int? status,
      @JsonKey(name: 'itemAndResults')
      List<ConservationInputModel> questionnaires,
      @DateTimeJsonConverter() DateTime? publishTime,
      String? createUser,
      @DateTimeJsonConverter() DateTime? createTime});
}

/// @nodoc
class __$$ReportModelImplCopyWithImpl<$Res>
    extends _$ReportModelCopyWithImpl<$Res, _$ReportModelImpl>
    implements _$$ReportModelImplCopyWith<$Res> {
  __$$ReportModelImplCopyWithImpl(
      _$ReportModelImpl _value, $Res Function(_$ReportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDeleted = null,
    Object? sortNo = null,
    Object? status = freezed,
    Object? questionnaires = null,
    Object? publishTime = freezed,
    Object? createUser = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_$ReportModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sortNo: null == sortNo
          ? _value.sortNo
          : sortNo // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      questionnaires: null == questionnaires
          ? _value._questionnaires
          : questionnaires // ignore: cast_nullable_to_non_nullable
              as List<ConservationInputModel>,
      publishTime: freezed == publishTime
          ? _value.publishTime
          : publishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createUser: freezed == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportModelImpl extends _ReportModel {
  const _$ReportModelImpl(
      {required this.id,
      @JsonKey(name: 'conservationName') this.name = '',
      @Int2BoolJsonConverter() this.isDeleted = false,
      this.sortNo = 0,
      this.status,
      @JsonKey(name: 'itemAndResults')
      final List<ConservationInputModel> questionnaires = const [],
      @DateTimeJsonConverter() this.publishTime,
      this.createUser,
      @DateTimeJsonConverter() this.createTime})
      : _questionnaires = questionnaires,
        super._();

  factory _$ReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelImplFromJson(json);

  @override
  final int id;

  /// 保育模块名称
  @override
  @JsonKey(name: 'conservationName')
  final String name;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  /// 排序
  @override
  @JsonKey()
  final int sortNo;

  ///	业务状态
  @override
  final int? status;

  /// 保育问卷选项及结果
  final List<ConservationInputModel> _questionnaires;

  /// 保育问卷选项及结果
  @override
  @JsonKey(name: 'itemAndResults')
  List<ConservationInputModel> get questionnaires {
    if (_questionnaires is EqualUnmodifiableListView) return _questionnaires;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionnaires);
  }

  /// 发布时间
  @override
  @DateTimeJsonConverter()
  final DateTime? publishTime;

  /// 创建人
  @override
  final String? createUser;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  @override
  String toString() {
    return 'ReportModel(id: $id, name: $name, isDeleted: $isDeleted, sortNo: $sortNo, status: $status, questionnaires: $questionnaires, publishTime: $publishTime, createUser: $createUser, createTime: $createTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.sortNo, sortNo) || other.sortNo == sortNo) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._questionnaires, _questionnaires) &&
            (identical(other.publishTime, publishTime) ||
                other.publishTime == publishTime) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isDeleted,
      sortNo,
      status,
      const DeepCollectionEquality().hash(_questionnaires),
      publishTime,
      createUser,
      createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      __$$ReportModelImplCopyWithImpl<_$ReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportModelImplToJson(
      this,
    );
  }
}

abstract class _ReportModel extends ReportModel {
  const factory _ReportModel(
      {required final int id,
      @JsonKey(name: 'conservationName') final String name,
      @Int2BoolJsonConverter() final bool isDeleted,
      final int sortNo,
      final int? status,
      @JsonKey(name: 'itemAndResults')
      final List<ConservationInputModel> questionnaires,
      @DateTimeJsonConverter() final DateTime? publishTime,
      final String? createUser,
      @DateTimeJsonConverter() final DateTime? createTime}) = _$ReportModelImpl;
  const _ReportModel._() : super._();

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$ReportModelImpl.fromJson;

  @override
  int get id;
  @override

  /// 保育模块名称
  @JsonKey(name: 'conservationName')
  String get name;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override

  /// 排序
  int get sortNo;
  @override

  ///	业务状态
  int? get status;
  @override

  /// 保育问卷选项及结果
  @JsonKey(name: 'itemAndResults')
  List<ConservationInputModel> get questionnaires;
  @override

  /// 发布时间
  @DateTimeJsonConverter()
  DateTime? get publishTime;
  @override

  /// 创建人
  String? get createUser;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override
  @JsonKey(ignore: true)
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportReq _$ReportReqFromJson(Map<String, dynamic> json) {
  return _ReportReq.fromJson(json);
}

/// @nodoc
mixin _$ReportReq {
  String get studentCode => throw _privateConstructorUsedError;
  @SimpleDateTimeJsonConverter()
  @JsonKey(name: 'dateStr')
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportReqCopyWith<ReportReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportReqCopyWith<$Res> {
  factory $ReportReqCopyWith(ReportReq value, $Res Function(ReportReq) then) =
      _$ReportReqCopyWithImpl<$Res, ReportReq>;
  @useResult
  $Res call(
      {String studentCode,
      @SimpleDateTimeJsonConverter() @JsonKey(name: 'dateStr') DateTime? date});
}

/// @nodoc
class _$ReportReqCopyWithImpl<$Res, $Val extends ReportReq>
    implements $ReportReqCopyWith<$Res> {
  _$ReportReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportReqImplCopyWith<$Res>
    implements $ReportReqCopyWith<$Res> {
  factory _$$ReportReqImplCopyWith(
          _$ReportReqImpl value, $Res Function(_$ReportReqImpl) then) =
      __$$ReportReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String studentCode,
      @SimpleDateTimeJsonConverter() @JsonKey(name: 'dateStr') DateTime? date});
}

/// @nodoc
class __$$ReportReqImplCopyWithImpl<$Res>
    extends _$ReportReqCopyWithImpl<$Res, _$ReportReqImpl>
    implements _$$ReportReqImplCopyWith<$Res> {
  __$$ReportReqImplCopyWithImpl(
      _$ReportReqImpl _value, $Res Function(_$ReportReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? date = freezed,
  }) {
    return _then(_$ReportReqImpl(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportReqImpl extends _ReportReq {
  const _$ReportReqImpl(
      {required this.studentCode,
      @SimpleDateTimeJsonConverter() @JsonKey(name: 'dateStr') this.date})
      : super._();

  factory _$ReportReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportReqImplFromJson(json);

  @override
  final String studentCode;
  @override
  @SimpleDateTimeJsonConverter()
  @JsonKey(name: 'dateStr')
  final DateTime? date;

  @override
  String toString() {
    return 'ReportReq(studentCode: $studentCode, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportReqImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportReqImplCopyWith<_$ReportReqImpl> get copyWith =>
      __$$ReportReqImplCopyWithImpl<_$ReportReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportReqImplToJson(
      this,
    );
  }
}

abstract class _ReportReq extends ReportReq {
  const factory _ReportReq(
      {required final String studentCode,
      @SimpleDateTimeJsonConverter()
      @JsonKey(name: 'dateStr')
      final DateTime? date}) = _$ReportReqImpl;
  const _ReportReq._() : super._();

  factory _ReportReq.fromJson(Map<String, dynamic> json) =
      _$ReportReqImpl.fromJson;

  @override
  String get studentCode;
  @override
  @SimpleDateTimeJsonConverter()
  @JsonKey(name: 'dateStr')
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$ReportReqImplCopyWith<_$ReportReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConservationOtherParam _$ConservationOtherParamFromJson(
    Map<String, dynamic> json) {
  return _ConservationOtherParam.fromJson(json);
}

/// @nodoc
mixin _$ConservationOtherParam {
  /// 指定的保育日期
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConservationOtherParamCopyWith<ConservationOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConservationOtherParamCopyWith<$Res> {
  factory $ConservationOtherParamCopyWith(ConservationOtherParam value,
          $Res Function(ConservationOtherParam) then) =
      _$ConservationOtherParamCopyWithImpl<$Res, ConservationOtherParam>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class _$ConservationOtherParamCopyWithImpl<$Res,
        $Val extends ConservationOtherParam>
    implements $ConservationOtherParamCopyWith<$Res> {
  _$ConservationOtherParamCopyWithImpl(this._value, this._then);

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
abstract class _$$ConservationOtherParamImplCopyWith<$Res>
    implements $ConservationOtherParamCopyWith<$Res> {
  factory _$$ConservationOtherParamImplCopyWith(
          _$ConservationOtherParamImpl value,
          $Res Function(_$ConservationOtherParamImpl) then) =
      __$$ConservationOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$ConservationOtherParamImplCopyWithImpl<$Res>
    extends _$ConservationOtherParamCopyWithImpl<$Res,
        _$ConservationOtherParamImpl>
    implements _$$ConservationOtherParamImplCopyWith<$Res> {
  __$$ConservationOtherParamImplCopyWithImpl(
      _$ConservationOtherParamImpl _value,
      $Res Function(_$ConservationOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ConservationOtherParamImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConservationOtherParamImpl extends _ConservationOtherParam {
  const _$ConservationOtherParamImpl({this.date = ''}) : super._();

  factory _$ConservationOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConservationOtherParamImplFromJson(json);

  /// 指定的保育日期
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'ConservationOtherParam(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConservationOtherParamImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConservationOtherParamImplCopyWith<_$ConservationOtherParamImpl>
      get copyWith => __$$ConservationOtherParamImplCopyWithImpl<
          _$ConservationOtherParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConservationOtherParamImplToJson(
      this,
    );
  }
}

abstract class _ConservationOtherParam extends ConservationOtherParam {
  const factory _ConservationOtherParam({final String date}) =
      _$ConservationOtherParamImpl;
  const _ConservationOtherParam._() : super._();

  factory _ConservationOtherParam.fromJson(Map<String, dynamic> json) =
      _$ConservationOtherParamImpl.fromJson;

  @override

  /// 指定的保育日期
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$ConservationOtherParamImplCopyWith<_$ConservationOtherParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
