// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fothzo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FothzoOtherParam _$FothzoOtherParamFromJson(Map<String, dynamic> json) {
  return _FothzoOtherParam.fromJson(json);
}

/// @nodoc
mixin _$FothzoOtherParam {
  /// 激活标签页
  int get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FothzoOtherParamCopyWith<FothzoOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FothzoOtherParamCopyWith<$Res> {
  factory $FothzoOtherParamCopyWith(
          FothzoOtherParam value, $Res Function(FothzoOtherParam) then) =
      _$FothzoOtherParamCopyWithImpl<$Res, FothzoOtherParam>;
  @useResult
  $Res call({int active});
}

/// @nodoc
class _$FothzoOtherParamCopyWithImpl<$Res, $Val extends FothzoOtherParam>
    implements $FothzoOtherParamCopyWith<$Res> {
  _$FothzoOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
  }) {
    return _then(_value.copyWith(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FothzoOtherParamImplCopyWith<$Res>
    implements $FothzoOtherParamCopyWith<$Res> {
  factory _$$FothzoOtherParamImplCopyWith(_$FothzoOtherParamImpl value,
          $Res Function(_$FothzoOtherParamImpl) then) =
      __$$FothzoOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int active});
}

/// @nodoc
class __$$FothzoOtherParamImplCopyWithImpl<$Res>
    extends _$FothzoOtherParamCopyWithImpl<$Res, _$FothzoOtherParamImpl>
    implements _$$FothzoOtherParamImplCopyWith<$Res> {
  __$$FothzoOtherParamImplCopyWithImpl(_$FothzoOtherParamImpl _value,
      $Res Function(_$FothzoOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = null,
  }) {
    return _then(_$FothzoOtherParamImpl(
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FothzoOtherParamImpl extends _FothzoOtherParam {
  const _$FothzoOtherParamImpl({this.active = 1}) : super._();

  factory _$FothzoOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$FothzoOtherParamImplFromJson(json);

  /// 激活标签页
  @override
  @JsonKey()
  final int active;

  @override
  String toString() {
    return 'FothzoOtherParam(active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FothzoOtherParamImpl &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FothzoOtherParamImplCopyWith<_$FothzoOtherParamImpl> get copyWith =>
      __$$FothzoOtherParamImplCopyWithImpl<_$FothzoOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FothzoOtherParamImplToJson(
      this,
    );
  }
}

abstract class _FothzoOtherParam extends FothzoOtherParam {
  const factory _FothzoOtherParam({final int active}) = _$FothzoOtherParamImpl;
  const _FothzoOtherParam._() : super._();

  factory _FothzoOtherParam.fromJson(Map<String, dynamic> json) =
      _$FothzoOtherParamImpl.fromJson;

  @override

  /// 激活标签页
  int get active;
  @override
  @JsonKey(ignore: true)
  _$$FothzoOtherParamImplCopyWith<_$FothzoOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
