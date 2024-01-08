// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diy_json_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResourceValue _$ResourceValueFromJson(Map<String, dynamic> json) {
  switch (json['resourceType']) {
    case 'Default':
      return ResourceValueData.fromJson(json);
    case 'text':
      return ResourceTextValue.fromJson(json);
    case 'image':
      return ResourceImageValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'resourceType', 'ResourceValue',
          'Invalid union type "${json['resourceType']}"!');
  }
}

/// @nodoc
mixin _$ResourceValue {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)
        text,
    required TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)
        image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult? Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResourceValueData value) $default, {
    required TResult Function(ResourceTextValue value) text,
    required TResult Function(ResourceImageValue value) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ResourceValueData value)? $default, {
    TResult? Function(ResourceTextValue value)? text,
    TResult? Function(ResourceImageValue value)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResourceValueData value)? $default, {
    TResult Function(ResourceTextValue value)? text,
    TResult Function(ResourceImageValue value)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceValueCopyWith<$Res> {
  factory $ResourceValueCopyWith(
          ResourceValue value, $Res Function(ResourceValue) then) =
      _$ResourceValueCopyWithImpl<$Res, ResourceValue>;
}

/// @nodoc
class _$ResourceValueCopyWithImpl<$Res, $Val extends ResourceValue>
    implements $ResourceValueCopyWith<$Res> {
  _$ResourceValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResourceValueDataImplCopyWith<$Res> {
  factory _$$ResourceValueDataImplCopyWith(_$ResourceValueDataImpl value,
          $Res Function(_$ResourceValueDataImpl) then) =
      __$$ResourceValueDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResourceValueDataImplCopyWithImpl<$Res>
    extends _$ResourceValueCopyWithImpl<$Res, _$ResourceValueDataImpl>
    implements _$$ResourceValueDataImplCopyWith<$Res> {
  __$$ResourceValueDataImplCopyWithImpl(_$ResourceValueDataImpl _value,
      $Res Function(_$ResourceValueDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ResourceValueDataImpl extends ResourceValueData {
  _$ResourceValueDataImpl({final String? $type})
      : $type = $type ?? 'Default',
        super._();

  factory _$ResourceValueDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceValueDataImplFromJson(json);

  @JsonKey(name: 'resourceType')
  final String $type;

  @override
  String toString() {
    return 'ResourceValue()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)
        text,
    required TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)
        image,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult? Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResourceValueData value) $default, {
    required TResult Function(ResourceTextValue value) text,
    required TResult Function(ResourceImageValue value) image,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ResourceValueData value)? $default, {
    TResult? Function(ResourceTextValue value)? text,
    TResult? Function(ResourceImageValue value)? image,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResourceValueData value)? $default, {
    TResult Function(ResourceTextValue value)? text,
    TResult Function(ResourceImageValue value)? image,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceValueDataImplToJson(
      this,
    );
  }
}

abstract class ResourceValueData extends ResourceValue {
  factory ResourceValueData() = _$ResourceValueDataImpl;
  ResourceValueData._() : super._();

  factory ResourceValueData.fromJson(Map<String, dynamic> json) =
      _$ResourceValueDataImpl.fromJson;
}

/// @nodoc
abstract class _$$ResourceTextValueImplCopyWith<$Res> {
  factory _$$ResourceTextValueImplCopyWith(_$ResourceTextValueImpl value,
          $Res Function(_$ResourceTextValueImpl) then) =
      __$$ResourceTextValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? value,
      String? hint,
      @String2ColorJsonConverter() Color? hintColor,
      @String2ColorJsonConverter() Color? color,
      double? fontSize,
      double? fontWeight});
}

/// @nodoc
class __$$ResourceTextValueImplCopyWithImpl<$Res>
    extends _$ResourceValueCopyWithImpl<$Res, _$ResourceTextValueImpl>
    implements _$$ResourceTextValueImplCopyWith<$Res> {
  __$$ResourceTextValueImplCopyWithImpl(_$ResourceTextValueImpl _value,
      $Res Function(_$ResourceTextValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? hint = freezed,
    Object? hintColor = freezed,
    Object? color = freezed,
    Object? fontSize = freezed,
    Object? fontWeight = freezed,
  }) {
    return _then(_$ResourceTextValueImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      hintColor: freezed == hintColor
          ? _value.hintColor
          : hintColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      fontSize: freezed == fontSize
          ? _value.fontSize
          : fontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      fontWeight: freezed == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceTextValueImpl extends ResourceTextValue {
  _$ResourceTextValueImpl(
      {this.value,
      this.hint,
      @String2ColorJsonConverter() this.hintColor,
      @String2ColorJsonConverter() this.color,
      this.fontSize,
      this.fontWeight,
      final String? $type})
      : $type = $type ?? 'text',
        super._();

  factory _$ResourceTextValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceTextValueImplFromJson(json);

  @override
  String? value;
  @override
  String? hint;
  @override
  @String2ColorJsonConverter()
  Color? hintColor;
  @override
  @String2ColorJsonConverter()
  Color? color;
  @override
  double? fontSize;
  @override
  double? fontWeight;

  @JsonKey(name: 'resourceType')
  final String $type;

  @override
  String toString() {
    return 'ResourceValue.text(value: $value, hint: $hint, hintColor: $hintColor, color: $color, fontSize: $fontSize, fontWeight: $fontWeight)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceTextValueImplCopyWith<_$ResourceTextValueImpl> get copyWith =>
      __$$ResourceTextValueImplCopyWithImpl<_$ResourceTextValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)
        text,
    required TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)
        image,
  }) {
    return text(value, hint, hintColor, color, fontSize, fontWeight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult? Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
  }) {
    return text?.call(value, hint, hintColor, color, fontSize, fontWeight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(value, hint, hintColor, color, fontSize, fontWeight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResourceValueData value) $default, {
    required TResult Function(ResourceTextValue value) text,
    required TResult Function(ResourceImageValue value) image,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ResourceValueData value)? $default, {
    TResult? Function(ResourceTextValue value)? text,
    TResult? Function(ResourceImageValue value)? image,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResourceValueData value)? $default, {
    TResult Function(ResourceTextValue value)? text,
    TResult Function(ResourceImageValue value)? image,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceTextValueImplToJson(
      this,
    );
  }
}

abstract class ResourceTextValue extends ResourceValue {
  factory ResourceTextValue(
      {String? value,
      String? hint,
      @String2ColorJsonConverter() Color? hintColor,
      @String2ColorJsonConverter() Color? color,
      double? fontSize,
      double? fontWeight}) = _$ResourceTextValueImpl;
  ResourceTextValue._() : super._();

  factory ResourceTextValue.fromJson(Map<String, dynamic> json) =
      _$ResourceTextValueImpl.fromJson;

  String? get value;
  set value(String? value);
  String? get hint;
  set hint(String? value);
  @String2ColorJsonConverter()
  Color? get hintColor;
  @String2ColorJsonConverter()
  set hintColor(Color? value);
  @String2ColorJsonConverter()
  Color? get color;
  @String2ColorJsonConverter()
  set color(Color? value);
  double? get fontSize;
  set fontSize(double? value);
  double? get fontWeight;
  set fontWeight(double? value);
  @JsonKey(ignore: true)
  _$$ResourceTextValueImplCopyWith<_$ResourceTextValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceImageValueImplCopyWith<$Res> {
  factory _$$ResourceImageValueImplCopyWith(_$ResourceImageValueImpl value,
          $Res Function(_$ResourceImageValueImpl) then) =
      __$$ResourceImageValueImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double? width,
      double? height,
      @JsonKey(unknownEnumValue: ResourceValueType.unknown)
      ResourceValueType type,
      @String2BoxFitJsonConverter() BoxFit fit,
      String? value});
}

/// @nodoc
class __$$ResourceImageValueImplCopyWithImpl<$Res>
    extends _$ResourceValueCopyWithImpl<$Res, _$ResourceImageValueImpl>
    implements _$$ResourceImageValueImplCopyWith<$Res> {
  __$$ResourceImageValueImplCopyWithImpl(_$ResourceImageValueImpl _value,
      $Res Function(_$ResourceImageValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? type = null,
    Object? fit = null,
    Object? value = freezed,
  }) {
    return _then(_$ResourceImageValueImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResourceValueType,
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as BoxFit,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceImageValueImpl extends ResourceImageValue {
  _$ResourceImageValueImpl(
      {this.width,
      this.height,
      @JsonKey(unknownEnumValue: ResourceValueType.unknown)
      this.type = ResourceValueType.unknown,
      @String2BoxFitJsonConverter() this.fit = BoxFit.cover,
      this.value,
      final String? $type})
      : $type = $type ?? 'image',
        super._();

  factory _$ResourceImageValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceImageValueImplFromJson(json);

  @override
  double? width;
  @override
  double? height;
  @override
  @JsonKey(unknownEnumValue: ResourceValueType.unknown)
  ResourceValueType type;
  @override
  @JsonKey()
  @String2BoxFitJsonConverter()
  BoxFit fit;
  @override
  String? value;

  @JsonKey(name: 'resourceType')
  final String $type;

  @override
  String toString() {
    return 'ResourceValue.image(width: $width, height: $height, type: $type, fit: $fit, value: $value)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImageValueImplCopyWith<_$ResourceImageValueImpl> get copyWith =>
      __$$ResourceImageValueImplCopyWithImpl<_$ResourceImageValueImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)
        text,
    required TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)
        image,
  }) {
    return image(width, height, type, fit, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult? Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
  }) {
    return image?.call(width, height, type, fit, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(
            String? value,
            String? hint,
            @String2ColorJsonConverter() Color? hintColor,
            @String2ColorJsonConverter() Color? color,
            double? fontSize,
            double? fontWeight)?
        text,
    TResult Function(
            double? width,
            double? height,
            @JsonKey(unknownEnumValue: ResourceValueType.unknown)
            ResourceValueType type,
            @String2BoxFitJsonConverter() BoxFit fit,
            String? value)?
        image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(width, height, type, fit, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ResourceValueData value) $default, {
    required TResult Function(ResourceTextValue value) text,
    required TResult Function(ResourceImageValue value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ResourceValueData value)? $default, {
    TResult? Function(ResourceTextValue value)? text,
    TResult? Function(ResourceImageValue value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ResourceValueData value)? $default, {
    TResult Function(ResourceTextValue value)? text,
    TResult Function(ResourceImageValue value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceImageValueImplToJson(
      this,
    );
  }
}

abstract class ResourceImageValue extends ResourceValue {
  factory ResourceImageValue(
      {double? width,
      double? height,
      @JsonKey(unknownEnumValue: ResourceValueType.unknown)
      ResourceValueType type,
      @String2BoxFitJsonConverter() BoxFit fit,
      String? value}) = _$ResourceImageValueImpl;
  ResourceImageValue._() : super._();

  factory ResourceImageValue.fromJson(Map<String, dynamic> json) =
      _$ResourceImageValueImpl.fromJson;

  double? get width;
  set width(double? value);
  double? get height;
  set height(double? value);
  @JsonKey(unknownEnumValue: ResourceValueType.unknown)
  ResourceValueType get type;
  @JsonKey(unknownEnumValue: ResourceValueType.unknown)
  set type(ResourceValueType value);
  @String2BoxFitJsonConverter()
  BoxFit get fit;
  @String2BoxFitJsonConverter()
  set fit(BoxFit value);
  String? get value;
  set value(String? value);
  @JsonKey(ignore: true)
  _$$ResourceImageValueImplCopyWith<_$ResourceImageValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageBox _$PageBoxFromJson(Map<String, dynamic> json) {
  return _PageBox.fromJson(json);
}

/// @nodoc
mixin _$PageBox {
  @String2ColorJsonConverter()
  Color? get borderColor => throw _privateConstructorUsedError;
  double get borderWidth => throw _privateConstructorUsedError;
  double get borderRadius => throw _privateConstructorUsedError;
  BoxBorderType get borderType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageBoxCopyWith<PageBox> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageBoxCopyWith<$Res> {
  factory $PageBoxCopyWith(PageBox value, $Res Function(PageBox) then) =
      _$PageBoxCopyWithImpl<$Res, PageBox>;
  @useResult
  $Res call(
      {@String2ColorJsonConverter() Color? borderColor,
      double borderWidth,
      double borderRadius,
      BoxBorderType borderType});
}

/// @nodoc
class _$PageBoxCopyWithImpl<$Res, $Val extends PageBox>
    implements $PageBoxCopyWith<$Res> {
  _$PageBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderColor = freezed,
    Object? borderWidth = null,
    Object? borderRadius = null,
    Object? borderType = null,
  }) {
    return _then(_value.copyWith(
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      borderWidth: null == borderWidth
          ? _value.borderWidth
          : borderWidth // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      borderType: null == borderType
          ? _value.borderType
          : borderType // ignore: cast_nullable_to_non_nullable
              as BoxBorderType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageBoxImplCopyWith<$Res> implements $PageBoxCopyWith<$Res> {
  factory _$$PageBoxImplCopyWith(
          _$PageBoxImpl value, $Res Function(_$PageBoxImpl) then) =
      __$$PageBoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2ColorJsonConverter() Color? borderColor,
      double borderWidth,
      double borderRadius,
      BoxBorderType borderType});
}

/// @nodoc
class __$$PageBoxImplCopyWithImpl<$Res>
    extends _$PageBoxCopyWithImpl<$Res, _$PageBoxImpl>
    implements _$$PageBoxImplCopyWith<$Res> {
  __$$PageBoxImplCopyWithImpl(
      _$PageBoxImpl _value, $Res Function(_$PageBoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? borderColor = freezed,
    Object? borderWidth = null,
    Object? borderRadius = null,
    Object? borderType = null,
  }) {
    return _then(_$PageBoxImpl(
      borderColor: freezed == borderColor
          ? _value.borderColor
          : borderColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      borderWidth: null == borderWidth
          ? _value.borderWidth
          : borderWidth // ignore: cast_nullable_to_non_nullable
              as double,
      borderRadius: null == borderRadius
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as double,
      borderType: null == borderType
          ? _value.borderType
          : borderType // ignore: cast_nullable_to_non_nullable
              as BoxBorderType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageBoxImpl extends _PageBox {
  const _$PageBoxImpl(
      {@String2ColorJsonConverter() this.borderColor,
      this.borderWidth = 0.0,
      this.borderRadius = 0.0,
      this.borderType = BoxBorderType.line})
      : super._();

  factory _$PageBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageBoxImplFromJson(json);

  @override
  @String2ColorJsonConverter()
  final Color? borderColor;
  @override
  @JsonKey()
  final double borderWidth;
  @override
  @JsonKey()
  final double borderRadius;
  @override
  @JsonKey()
  final BoxBorderType borderType;

  @override
  String toString() {
    return 'PageBox(borderColor: $borderColor, borderWidth: $borderWidth, borderRadius: $borderRadius, borderType: $borderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageBoxImpl &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor) &&
            (identical(other.borderWidth, borderWidth) ||
                other.borderWidth == borderWidth) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            (identical(other.borderType, borderType) ||
                other.borderType == borderType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, borderColor, borderWidth, borderRadius, borderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageBoxImplCopyWith<_$PageBoxImpl> get copyWith =>
      __$$PageBoxImplCopyWithImpl<_$PageBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageBoxImplToJson(
      this,
    );
  }
}

abstract class _PageBox extends PageBox {
  const factory _PageBox(
      {@String2ColorJsonConverter() final Color? borderColor,
      final double borderWidth,
      final double borderRadius,
      final BoxBorderType borderType}) = _$PageBoxImpl;
  const _PageBox._() : super._();

  factory _PageBox.fromJson(Map<String, dynamic> json) = _$PageBoxImpl.fromJson;

  @override
  @String2ColorJsonConverter()
  Color? get borderColor;
  @override
  double get borderWidth;
  @override
  double get borderRadius;
  @override
  BoxBorderType get borderType;
  @override
  @JsonKey(ignore: true)
  _$$PageBoxImplCopyWith<_$PageBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageResource _$PageResourceFromJson(Map<String, dynamic> json) {
  return _PageResource.fromJson(json);
}

/// @nodoc
mixin _$PageResource {
  /// 元素顺序
  int get index => throw _privateConstructorUsedError;

  /// 元素顺序
  set index(int value) => throw _privateConstructorUsedError;

  /// 元素宽度
  double? get width => throw _privateConstructorUsedError;

  /// 元素宽度
  set width(double? value) => throw _privateConstructorUsedError;

  /// 元素高度
  double? get height => throw _privateConstructorUsedError;

  /// 元素高度
  set height(double? value) => throw _privateConstructorUsedError;

  /// 元素对齐位置
  @String2AlignJsonConverter()
  Alignment get align => throw _privateConstructorUsedError;

  /// 元素对齐位置
  @String2AlignJsonConverter()
  set align(Alignment value) => throw _privateConstructorUsedError;

  /// 元素外边距
  @List2EdgeInsetsJsonConverter()
  EdgeInsets get margin => throw _privateConstructorUsedError;

  /// 元素外边距
  @List2EdgeInsetsJsonConverter()
  set margin(EdgeInsets value) => throw _privateConstructorUsedError;

  /// 元素内边距
  @List2EdgeInsetsJsonConverter()
  EdgeInsets get padding => throw _privateConstructorUsedError;

  /// 元素内边距
  @List2EdgeInsetsJsonConverter()
  set padding(EdgeInsets value) => throw _privateConstructorUsedError;

  /// 元素背景色
  ResourceValue? get background => throw _privateConstructorUsedError;

  /// 元素背景色
  set background(ResourceValue? value) => throw _privateConstructorUsedError;

  /// 元素位置类型
  @JsonKey(unknownEnumValue: PositionType.value)
  PositionType get positionType => throw _privateConstructorUsedError;

  /// 元素位置类型
  @JsonKey(unknownEnumValue: PositionType.value)
  set positionType(PositionType value) => throw _privateConstructorUsedError;

  /// 元素位置x坐标
  double get x => throw _privateConstructorUsedError;

  /// 元素位置x坐标
  set x(double value) => throw _privateConstructorUsedError;

  /// 元素位置y坐标
  double get y => throw _privateConstructorUsedError;

  /// 元素位置y坐标
  set y(double value) => throw _privateConstructorUsedError;

  /// 元素旋转角度
  double get rotate => throw _privateConstructorUsedError;

  /// 元素旋转角度
  set rotate(double value) => throw _privateConstructorUsedError;

  /// 元素盒子
  PageBox? get box => throw _privateConstructorUsedError;

  /// 元素盒子
  set box(PageBox? value) => throw _privateConstructorUsedError;

  /// 元素值
  ResourceValue? get data => throw _privateConstructorUsedError;

  /// 元素值
  set data(ResourceValue? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageResourceCopyWith<PageResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageResourceCopyWith<$Res> {
  factory $PageResourceCopyWith(
          PageResource value, $Res Function(PageResource) then) =
      _$PageResourceCopyWithImpl<$Res, PageResource>;
  @useResult
  $Res call(
      {int index,
      double? width,
      double? height,
      @String2AlignJsonConverter() Alignment align,
      @List2EdgeInsetsJsonConverter() EdgeInsets margin,
      @List2EdgeInsetsJsonConverter() EdgeInsets padding,
      ResourceValue? background,
      @JsonKey(unknownEnumValue: PositionType.value) PositionType positionType,
      double x,
      double y,
      double rotate,
      PageBox? box,
      ResourceValue? data});

  $ResourceValueCopyWith<$Res>? get background;
  $PageBoxCopyWith<$Res>? get box;
  $ResourceValueCopyWith<$Res>? get data;
}

/// @nodoc
class _$PageResourceCopyWithImpl<$Res, $Val extends PageResource>
    implements $PageResourceCopyWith<$Res> {
  _$PageResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? width = freezed,
    Object? height = freezed,
    Object? align = null,
    Object? margin = null,
    Object? padding = null,
    Object? background = freezed,
    Object? positionType = null,
    Object? x = null,
    Object? y = null,
    Object? rotate = null,
    Object? box = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as Alignment,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as ResourceValue?,
      positionType: null == positionType
          ? _value.positionType
          : positionType // ignore: cast_nullable_to_non_nullable
              as PositionType,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      rotate: null == rotate
          ? _value.rotate
          : rotate // ignore: cast_nullable_to_non_nullable
              as double,
      box: freezed == box
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as PageBox?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResourceValue?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceValueCopyWith<$Res>? get background {
    if (_value.background == null) {
      return null;
    }

    return $ResourceValueCopyWith<$Res>(_value.background!, (value) {
      return _then(_value.copyWith(background: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PageBoxCopyWith<$Res>? get box {
    if (_value.box == null) {
      return null;
    }

    return $PageBoxCopyWith<$Res>(_value.box!, (value) {
      return _then(_value.copyWith(box: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceValueCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ResourceValueCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageResourceImplCopyWith<$Res>
    implements $PageResourceCopyWith<$Res> {
  factory _$$PageResourceImplCopyWith(
          _$PageResourceImpl value, $Res Function(_$PageResourceImpl) then) =
      __$$PageResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      double? width,
      double? height,
      @String2AlignJsonConverter() Alignment align,
      @List2EdgeInsetsJsonConverter() EdgeInsets margin,
      @List2EdgeInsetsJsonConverter() EdgeInsets padding,
      ResourceValue? background,
      @JsonKey(unknownEnumValue: PositionType.value) PositionType positionType,
      double x,
      double y,
      double rotate,
      PageBox? box,
      ResourceValue? data});

  @override
  $ResourceValueCopyWith<$Res>? get background;
  @override
  $PageBoxCopyWith<$Res>? get box;
  @override
  $ResourceValueCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PageResourceImplCopyWithImpl<$Res>
    extends _$PageResourceCopyWithImpl<$Res, _$PageResourceImpl>
    implements _$$PageResourceImplCopyWith<$Res> {
  __$$PageResourceImplCopyWithImpl(
      _$PageResourceImpl _value, $Res Function(_$PageResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? width = freezed,
    Object? height = freezed,
    Object? align = null,
    Object? margin = null,
    Object? padding = null,
    Object? background = freezed,
    Object? positionType = null,
    Object? x = null,
    Object? y = null,
    Object? rotate = null,
    Object? box = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PageResourceImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      align: null == align
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as Alignment,
      margin: null == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      padding: null == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as ResourceValue?,
      positionType: null == positionType
          ? _value.positionType
          : positionType // ignore: cast_nullable_to_non_nullable
              as PositionType,
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      rotate: null == rotate
          ? _value.rotate
          : rotate // ignore: cast_nullable_to_non_nullable
              as double,
      box: freezed == box
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as PageBox?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResourceValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageResourceImpl extends _PageResource {
  _$PageResourceImpl(
      {this.index = 0,
      this.width,
      this.height,
      @String2AlignJsonConverter() this.align = Alignment.center,
      @List2EdgeInsetsJsonConverter() this.margin = EdgeInsets.zero,
      @List2EdgeInsetsJsonConverter() this.padding = EdgeInsets.zero,
      this.background,
      @JsonKey(unknownEnumValue: PositionType.value)
      this.positionType = PositionType.value,
      this.x = 0.0,
      this.y = 0.0,
      this.rotate = 0.0,
      this.box,
      this.data})
      : super._();

  factory _$PageResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageResourceImplFromJson(json);

  /// 元素顺序
  @override
  @JsonKey()
  int index;

  /// 元素宽度
  @override
  double? width;

  /// 元素高度
  @override
  double? height;

  /// 元素对齐位置
  @override
  @JsonKey()
  @String2AlignJsonConverter()
  Alignment align;

  /// 元素外边距
  @override
  @JsonKey()
  @List2EdgeInsetsJsonConverter()
  EdgeInsets margin;

  /// 元素内边距
  @override
  @JsonKey()
  @List2EdgeInsetsJsonConverter()
  EdgeInsets padding;

  /// 元素背景色
  @override
  ResourceValue? background;

  /// 元素位置类型
  @override
  @JsonKey(unknownEnumValue: PositionType.value)
  PositionType positionType;

  /// 元素位置x坐标
  @override
  @JsonKey()
  double x;

  /// 元素位置y坐标
  @override
  @JsonKey()
  double y;

  /// 元素旋转角度
  @override
  @JsonKey()
  double rotate;

  /// 元素盒子
  @override
  PageBox? box;

  /// 元素值
  @override
  ResourceValue? data;

  @override
  String toString() {
    return 'PageResource(index: $index, width: $width, height: $height, align: $align, margin: $margin, padding: $padding, background: $background, positionType: $positionType, x: $x, y: $y, rotate: $rotate, box: $box, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageResourceImplCopyWith<_$PageResourceImpl> get copyWith =>
      __$$PageResourceImplCopyWithImpl<_$PageResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageResourceImplToJson(
      this,
    );
  }
}

abstract class _PageResource extends PageResource {
  factory _PageResource(
      {int index,
      double? width,
      double? height,
      @String2AlignJsonConverter() Alignment align,
      @List2EdgeInsetsJsonConverter() EdgeInsets margin,
      @List2EdgeInsetsJsonConverter() EdgeInsets padding,
      ResourceValue? background,
      @JsonKey(unknownEnumValue: PositionType.value) PositionType positionType,
      double x,
      double y,
      double rotate,
      PageBox? box,
      ResourceValue? data}) = _$PageResourceImpl;
  _PageResource._() : super._();

  factory _PageResource.fromJson(Map<String, dynamic> json) =
      _$PageResourceImpl.fromJson;

  @override

  /// 元素顺序
  int get index;

  /// 元素顺序
  set index(int value);
  @override

  /// 元素宽度
  double? get width;

  /// 元素宽度
  set width(double? value);
  @override

  /// 元素高度
  double? get height;

  /// 元素高度
  set height(double? value);
  @override

  /// 元素对齐位置
  @String2AlignJsonConverter()
  Alignment get align;

  /// 元素对齐位置
  @String2AlignJsonConverter()
  set align(Alignment value);
  @override

  /// 元素外边距
  @List2EdgeInsetsJsonConverter()
  EdgeInsets get margin;

  /// 元素外边距
  @List2EdgeInsetsJsonConverter()
  set margin(EdgeInsets value);
  @override

  /// 元素内边距
  @List2EdgeInsetsJsonConverter()
  EdgeInsets get padding;

  /// 元素内边距
  @List2EdgeInsetsJsonConverter()
  set padding(EdgeInsets value);
  @override

  /// 元素背景色
  ResourceValue? get background;

  /// 元素背景色
  set background(ResourceValue? value);
  @override

  /// 元素位置类型
  @JsonKey(unknownEnumValue: PositionType.value)
  PositionType get positionType;

  /// 元素位置类型
  @JsonKey(unknownEnumValue: PositionType.value)
  set positionType(PositionType value);
  @override

  /// 元素位置x坐标
  double get x;

  /// 元素位置x坐标
  set x(double value);
  @override

  /// 元素位置y坐标
  double get y;

  /// 元素位置y坐标
  set y(double value);
  @override

  /// 元素旋转角度
  double get rotate;

  /// 元素旋转角度
  set rotate(double value);
  @override

  /// 元素盒子
  PageBox? get box;

  /// 元素盒子
  set box(PageBox? value);
  @override

  /// 元素值
  ResourceValue? get data;

  /// 元素值
  set data(ResourceValue? value);
  @override
  @JsonKey(ignore: true)
  _$$PageResourceImplCopyWith<_$PageResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageJsonModel _$PageJsonModelFromJson(Map<String, dynamic> json) {
  return _PageJsonModel.fromJson(json);
}

/// @nodoc
mixin _$PageJsonModel {
  String get pageId => throw _privateConstructorUsedError;

  /// 页面类型, 与[defaultPages]中的索引对应
  /// 该值用于后端区分页面
  int get pageIndex => throw _privateConstructorUsedError;

  /// 页面背景
  ResourceValue? get background => throw _privateConstructorUsedError;

  /// 页面元素
  List<PageResource> get resources => throw _privateConstructorUsedError;

  /// 是否首页
  bool get homePage => throw _privateConstructorUsedError;

  /// 首页主色调
  @String2ColorJsonConverter()
  Color? get mainColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageJsonModelCopyWith<PageJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageJsonModelCopyWith<$Res> {
  factory $PageJsonModelCopyWith(
          PageJsonModel value, $Res Function(PageJsonModel) then) =
      _$PageJsonModelCopyWithImpl<$Res, PageJsonModel>;
  @useResult
  $Res call(
      {String pageId,
      int pageIndex,
      ResourceValue? background,
      List<PageResource> resources,
      bool homePage,
      @String2ColorJsonConverter() Color? mainColor});

  $ResourceValueCopyWith<$Res>? get background;
}

/// @nodoc
class _$PageJsonModelCopyWithImpl<$Res, $Val extends PageJsonModel>
    implements $PageJsonModelCopyWith<$Res> {
  _$PageJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = null,
    Object? pageIndex = null,
    Object? background = freezed,
    Object? resources = null,
    Object? homePage = null,
    Object? mainColor = freezed,
  }) {
    return _then(_value.copyWith(
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as ResourceValue?,
      resources: null == resources
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<PageResource>,
      homePage: null == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as bool,
      mainColor: freezed == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResourceValueCopyWith<$Res>? get background {
    if (_value.background == null) {
      return null;
    }

    return $ResourceValueCopyWith<$Res>(_value.background!, (value) {
      return _then(_value.copyWith(background: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PageJsonModelImplCopyWith<$Res>
    implements $PageJsonModelCopyWith<$Res> {
  factory _$$PageJsonModelImplCopyWith(
          _$PageJsonModelImpl value, $Res Function(_$PageJsonModelImpl) then) =
      __$$PageJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pageId,
      int pageIndex,
      ResourceValue? background,
      List<PageResource> resources,
      bool homePage,
      @String2ColorJsonConverter() Color? mainColor});

  @override
  $ResourceValueCopyWith<$Res>? get background;
}

/// @nodoc
class __$$PageJsonModelImplCopyWithImpl<$Res>
    extends _$PageJsonModelCopyWithImpl<$Res, _$PageJsonModelImpl>
    implements _$$PageJsonModelImplCopyWith<$Res> {
  __$$PageJsonModelImplCopyWithImpl(
      _$PageJsonModelImpl _value, $Res Function(_$PageJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = null,
    Object? pageIndex = null,
    Object? background = freezed,
    Object? resources = null,
    Object? homePage = null,
    Object? mainColor = freezed,
  }) {
    return _then(_$PageJsonModelImpl(
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as ResourceValue?,
      resources: null == resources
          ? _value._resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<PageResource>,
      homePage: null == homePage
          ? _value.homePage
          : homePage // ignore: cast_nullable_to_non_nullable
              as bool,
      mainColor: freezed == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as Color?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageJsonModelImpl extends _PageJsonModel {
  const _$PageJsonModelImpl(
      {this.pageId = '-1',
      this.pageIndex = -1,
      this.background,
      final List<PageResource> resources = const [],
      this.homePage = false,
      @String2ColorJsonConverter() this.mainColor})
      : _resources = resources,
        super._();

  factory _$PageJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageJsonModelImplFromJson(json);

  @override
  @JsonKey()
  final String pageId;

  /// 页面类型, 与[defaultPages]中的索引对应
  /// 该值用于后端区分页面
  @override
  @JsonKey()
  final int pageIndex;

  /// 页面背景
  @override
  final ResourceValue? background;

  /// 页面元素
  final List<PageResource> _resources;

  /// 页面元素
  @override
  @JsonKey()
  List<PageResource> get resources {
    if (_resources is EqualUnmodifiableListView) return _resources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resources);
  }

  /// 是否首页
  @override
  @JsonKey()
  final bool homePage;

  /// 首页主色调
  @override
  @String2ColorJsonConverter()
  final Color? mainColor;

  @override
  String toString() {
    return 'PageJsonModel(pageId: $pageId, pageIndex: $pageIndex, background: $background, resources: $resources, homePage: $homePage, mainColor: $mainColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageJsonModelImpl &&
            (identical(other.pageId, pageId) || other.pageId == pageId) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.background, background) ||
                other.background == background) &&
            const DeepCollectionEquality()
                .equals(other._resources, _resources) &&
            (identical(other.homePage, homePage) ||
                other.homePage == homePage) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageId, pageIndex, background,
      const DeepCollectionEquality().hash(_resources), homePage, mainColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageJsonModelImplCopyWith<_$PageJsonModelImpl> get copyWith =>
      __$$PageJsonModelImplCopyWithImpl<_$PageJsonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageJsonModelImplToJson(
      this,
    );
  }
}

abstract class _PageJsonModel extends PageJsonModel {
  const factory _PageJsonModel(
          {final String pageId,
          final int pageIndex,
          final ResourceValue? background,
          final List<PageResource> resources,
          final bool homePage,
          @String2ColorJsonConverter() final Color? mainColor}) =
      _$PageJsonModelImpl;
  const _PageJsonModel._() : super._();

  factory _PageJsonModel.fromJson(Map<String, dynamic> json) =
      _$PageJsonModelImpl.fromJson;

  @override
  String get pageId;
  @override

  /// 页面类型, 与[defaultPages]中的索引对应
  /// 该值用于后端区分页面
  int get pageIndex;
  @override

  /// 页面背景
  ResourceValue? get background;
  @override

  /// 页面元素
  List<PageResource> get resources;
  @override

  /// 是否首页
  bool get homePage;
  @override

  /// 首页主色调
  @String2ColorJsonConverter()
  Color? get mainColor;
  @override
  @JsonKey(ignore: true)
  _$$PageJsonModelImplCopyWith<_$PageJsonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TemplateJsonModel _$TemplateJsonModelFromJson(Map<String, dynamic> json) {
  return _TemplateJsonModel.fromJson(json);
}

/// @nodoc
mixin _$TemplateJsonModel {
  String? get templateId => throw _privateConstructorUsedError;

  /// 相册翻页样式
  PageTransitionType get transition => throw _privateConstructorUsedError;

  /// 相册页面
  List<PageJsonModel> get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateJsonModelCopyWith<TemplateJsonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateJsonModelCopyWith<$Res> {
  factory $TemplateJsonModelCopyWith(
          TemplateJsonModel value, $Res Function(TemplateJsonModel) then) =
      _$TemplateJsonModelCopyWithImpl<$Res, TemplateJsonModel>;
  @useResult
  $Res call(
      {String? templateId,
      PageTransitionType transition,
      List<PageJsonModel> pages});
}

/// @nodoc
class _$TemplateJsonModelCopyWithImpl<$Res, $Val extends TemplateJsonModel>
    implements $TemplateJsonModelCopyWith<$Res> {
  _$TemplateJsonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? transition = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      transition: null == transition
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as PageTransitionType,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageJsonModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateJsonModelImplCopyWith<$Res>
    implements $TemplateJsonModelCopyWith<$Res> {
  factory _$$TemplateJsonModelImplCopyWith(_$TemplateJsonModelImpl value,
          $Res Function(_$TemplateJsonModelImpl) then) =
      __$$TemplateJsonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? templateId,
      PageTransitionType transition,
      List<PageJsonModel> pages});
}

/// @nodoc
class __$$TemplateJsonModelImplCopyWithImpl<$Res>
    extends _$TemplateJsonModelCopyWithImpl<$Res, _$TemplateJsonModelImpl>
    implements _$$TemplateJsonModelImplCopyWith<$Res> {
  __$$TemplateJsonModelImplCopyWithImpl(_$TemplateJsonModelImpl _value,
      $Res Function(_$TemplateJsonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = freezed,
    Object? transition = null,
    Object? pages = null,
  }) {
    return _then(_$TemplateJsonModelImpl(
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String?,
      transition: null == transition
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as PageTransitionType,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageJsonModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateJsonModelImpl extends _TemplateJsonModel {
  const _$TemplateJsonModelImpl(
      {this.templateId,
      this.transition = PageTransitionType.flip,
      final List<PageJsonModel> pages = const []})
      : _pages = pages,
        super._();

  factory _$TemplateJsonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateJsonModelImplFromJson(json);

  @override
  final String? templateId;

  /// 相册翻页样式
  @override
  @JsonKey()
  final PageTransitionType transition;

  /// 相册页面
  final List<PageJsonModel> _pages;

  /// 相册页面
  @override
  @JsonKey()
  List<PageJsonModel> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'TemplateJsonModel(templateId: $templateId, transition: $transition, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateJsonModelImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.transition, transition) ||
                other.transition == transition) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, templateId, transition,
      const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateJsonModelImplCopyWith<_$TemplateJsonModelImpl> get copyWith =>
      __$$TemplateJsonModelImplCopyWithImpl<_$TemplateJsonModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateJsonModelImplToJson(
      this,
    );
  }
}

abstract class _TemplateJsonModel extends TemplateJsonModel {
  const factory _TemplateJsonModel(
      {final String? templateId,
      final PageTransitionType transition,
      final List<PageJsonModel> pages}) = _$TemplateJsonModelImpl;
  const _TemplateJsonModel._() : super._();

  factory _TemplateJsonModel.fromJson(Map<String, dynamic> json) =
      _$TemplateJsonModelImpl.fromJson;

  @override
  String? get templateId;
  @override

  /// 相册翻页样式
  PageTransitionType get transition;
  @override

  /// 相册页面
  List<PageJsonModel> get pages;
  @override
  @JsonKey(ignore: true)
  _$$TemplateJsonModelImplCopyWith<_$TemplateJsonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
