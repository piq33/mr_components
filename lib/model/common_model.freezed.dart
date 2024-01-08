// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  /// app h5页面地址
  @JsonKey(name: 'env.app.version')
  String get downloadUrl => throw _privateConstructorUsedError;

  /// h5地址前缀
  @JsonKey(name: 'env.app.kindh5.prefix')
  String get h5Prefix => throw _privateConstructorUsedError;

  /// app下载二维码地址
  @JsonKey(name: 'env.app.version.qrcode')
  String get qrCode => throw _privateConstructorUsedError;

  /// android下载地址
  @JsonKey(name: 'app.version.url')
  String get androidDownload => throw _privateConstructorUsedError;

  /// ios下载地址
  @JsonKey(name: 'app.ios.url')
  String get iosDownload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res, ConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'env.app.version') String downloadUrl,
      @JsonKey(name: 'env.app.kindh5.prefix') String h5Prefix,
      @JsonKey(name: 'env.app.version.qrcode') String qrCode,
      @JsonKey(name: 'app.version.url') String androidDownload,
      @JsonKey(name: 'app.ios.url') String iosDownload});
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res, $Val extends ConfigModel>
    implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? h5Prefix = null,
    Object? qrCode = null,
    Object? androidDownload = null,
    Object? iosDownload = null,
  }) {
    return _then(_value.copyWith(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      h5Prefix: null == h5Prefix
          ? _value.h5Prefix
          : h5Prefix // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      androidDownload: null == androidDownload
          ? _value.androidDownload
          : androidDownload // ignore: cast_nullable_to_non_nullable
              as String,
      iosDownload: null == iosDownload
          ? _value.iosDownload
          : iosDownload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigModelImplCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$ConfigModelImplCopyWith(
          _$ConfigModelImpl value, $Res Function(_$ConfigModelImpl) then) =
      __$$ConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'env.app.version') String downloadUrl,
      @JsonKey(name: 'env.app.kindh5.prefix') String h5Prefix,
      @JsonKey(name: 'env.app.version.qrcode') String qrCode,
      @JsonKey(name: 'app.version.url') String androidDownload,
      @JsonKey(name: 'app.ios.url') String iosDownload});
}

/// @nodoc
class __$$ConfigModelImplCopyWithImpl<$Res>
    extends _$ConfigModelCopyWithImpl<$Res, _$ConfigModelImpl>
    implements _$$ConfigModelImplCopyWith<$Res> {
  __$$ConfigModelImplCopyWithImpl(
      _$ConfigModelImpl _value, $Res Function(_$ConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? h5Prefix = null,
    Object? qrCode = null,
    Object? androidDownload = null,
    Object? iosDownload = null,
  }) {
    return _then(_$ConfigModelImpl(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      h5Prefix: null == h5Prefix
          ? _value.h5Prefix
          : h5Prefix // ignore: cast_nullable_to_non_nullable
              as String,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      androidDownload: null == androidDownload
          ? _value.androidDownload
          : androidDownload // ignore: cast_nullable_to_non_nullable
              as String,
      iosDownload: null == iosDownload
          ? _value.iosDownload
          : iosDownload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigModelImpl extends _ConfigModel {
  const _$ConfigModelImpl(
      {@JsonKey(name: 'env.app.version') this.downloadUrl = '',
      @JsonKey(name: 'env.app.kindh5.prefix') this.h5Prefix = '',
      @JsonKey(name: 'env.app.version.qrcode') this.qrCode = '',
      @JsonKey(name: 'app.version.url') this.androidDownload = '',
      @JsonKey(name: 'app.ios.url') this.iosDownload = ''})
      : super._();

  factory _$ConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigModelImplFromJson(json);

  /// app h5页面地址
  @override
  @JsonKey(name: 'env.app.version')
  final String downloadUrl;

  /// h5地址前缀
  @override
  @JsonKey(name: 'env.app.kindh5.prefix')
  final String h5Prefix;

  /// app下载二维码地址
  @override
  @JsonKey(name: 'env.app.version.qrcode')
  final String qrCode;

  /// android下载地址
  @override
  @JsonKey(name: 'app.version.url')
  final String androidDownload;

  /// ios下载地址
  @override
  @JsonKey(name: 'app.ios.url')
  final String iosDownload;

  @override
  String toString() {
    return 'ConfigModel(downloadUrl: $downloadUrl, h5Prefix: $h5Prefix, qrCode: $qrCode, androidDownload: $androidDownload, iosDownload: $iosDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigModelImpl &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.h5Prefix, h5Prefix) ||
                other.h5Prefix == h5Prefix) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.androidDownload, androidDownload) ||
                other.androidDownload == androidDownload) &&
            (identical(other.iosDownload, iosDownload) ||
                other.iosDownload == iosDownload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, downloadUrl, h5Prefix, qrCode, androidDownload, iosDownload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigModelImplCopyWith<_$ConfigModelImpl> get copyWith =>
      __$$ConfigModelImplCopyWithImpl<_$ConfigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigModelImplToJson(
      this,
    );
  }
}

abstract class _ConfigModel extends ConfigModel {
  const factory _ConfigModel(
          {@JsonKey(name: 'env.app.version') final String downloadUrl,
          @JsonKey(name: 'env.app.kindh5.prefix') final String h5Prefix,
          @JsonKey(name: 'env.app.version.qrcode') final String qrCode,
          @JsonKey(name: 'app.version.url') final String androidDownload,
          @JsonKey(name: 'app.ios.url') final String iosDownload}) =
      _$ConfigModelImpl;
  const _ConfigModel._() : super._();

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$ConfigModelImpl.fromJson;

  @override

  /// app h5页面地址
  @JsonKey(name: 'env.app.version')
  String get downloadUrl;
  @override

  /// h5地址前缀
  @JsonKey(name: 'env.app.kindh5.prefix')
  String get h5Prefix;
  @override

  /// app下载二维码地址
  @JsonKey(name: 'env.app.version.qrcode')
  String get qrCode;
  @override

  /// android下载地址
  @JsonKey(name: 'app.version.url')
  String get androidDownload;
  @override

  /// ios下载地址
  @JsonKey(name: 'app.ios.url')
  String get iosDownload;
  @override
  @JsonKey(ignore: true)
  _$$ConfigModelImplCopyWith<_$ConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SafeAreaConfig _$SafeAreaConfigFromJson(Map<String, dynamic> json) {
  return _SafeAreaConfig.fromJson(json);
}

/// @nodoc
mixin _$SafeAreaConfig {
  double get left => throw _privateConstructorUsedError;
  double get top => throw _privateConstructorUsedError;
  double get right => throw _privateConstructorUsedError;
  double get bottom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SafeAreaConfigCopyWith<SafeAreaConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SafeAreaConfigCopyWith<$Res> {
  factory $SafeAreaConfigCopyWith(
          SafeAreaConfig value, $Res Function(SafeAreaConfig) then) =
      _$SafeAreaConfigCopyWithImpl<$Res, SafeAreaConfig>;
  @useResult
  $Res call({double left, double top, double right, double bottom});
}

/// @nodoc
class _$SafeAreaConfigCopyWithImpl<$Res, $Val extends SafeAreaConfig>
    implements $SafeAreaConfigCopyWith<$Res> {
  _$SafeAreaConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
  }) {
    return _then(_value.copyWith(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SafeAreaConfigImplCopyWith<$Res>
    implements $SafeAreaConfigCopyWith<$Res> {
  factory _$$SafeAreaConfigImplCopyWith(_$SafeAreaConfigImpl value,
          $Res Function(_$SafeAreaConfigImpl) then) =
      __$$SafeAreaConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double left, double top, double right, double bottom});
}

/// @nodoc
class __$$SafeAreaConfigImplCopyWithImpl<$Res>
    extends _$SafeAreaConfigCopyWithImpl<$Res, _$SafeAreaConfigImpl>
    implements _$$SafeAreaConfigImplCopyWith<$Res> {
  __$$SafeAreaConfigImplCopyWithImpl(
      _$SafeAreaConfigImpl _value, $Res Function(_$SafeAreaConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? top = null,
    Object? right = null,
    Object? bottom = null,
  }) {
    return _then(_$SafeAreaConfigImpl(
      left: null == left
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double,
      top: null == top
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double,
      right: null == right
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double,
      bottom: null == bottom
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SafeAreaConfigImpl extends _SafeAreaConfig {
  const _$SafeAreaConfigImpl(
      {this.left = 0, this.top = 0, this.right = 0, this.bottom = 0})
      : super._();

  factory _$SafeAreaConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$SafeAreaConfigImplFromJson(json);

  @override
  @JsonKey()
  final double left;
  @override
  @JsonKey()
  final double top;
  @override
  @JsonKey()
  final double right;
  @override
  @JsonKey()
  final double bottom;

  @override
  String toString() {
    return 'SafeAreaConfig(left: $left, top: $top, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SafeAreaConfigImpl &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SafeAreaConfigImplCopyWith<_$SafeAreaConfigImpl> get copyWith =>
      __$$SafeAreaConfigImplCopyWithImpl<_$SafeAreaConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SafeAreaConfigImplToJson(
      this,
    );
  }
}

abstract class _SafeAreaConfig extends SafeAreaConfig {
  const factory _SafeAreaConfig(
      {final double left,
      final double top,
      final double right,
      final double bottom}) = _$SafeAreaConfigImpl;
  const _SafeAreaConfig._() : super._();

  factory _SafeAreaConfig.fromJson(Map<String, dynamic> json) =
      _$SafeAreaConfigImpl.fromJson;

  @override
  double get left;
  @override
  double get top;
  @override
  double get right;
  @override
  double get bottom;
  @override
  @JsonKey(ignore: true)
  _$$SafeAreaConfigImplCopyWith<_$SafeAreaConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedRegion _$SelectedRegionFromJson(Map<String, dynamic> json) {
  return _SelectedRegion.fromJson(json);
}

/// @nodoc
mixin _$SelectedRegion {
  /// 省份
  RegionModel? get province => throw _privateConstructorUsedError;

  /// 城市
  RegionModel? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedRegionCopyWith<SelectedRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedRegionCopyWith<$Res> {
  factory $SelectedRegionCopyWith(
          SelectedRegion value, $Res Function(SelectedRegion) then) =
      _$SelectedRegionCopyWithImpl<$Res, SelectedRegion>;
  @useResult
  $Res call({RegionModel? province, RegionModel? city});

  $RegionModelCopyWith<$Res>? get province;
  $RegionModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$SelectedRegionCopyWithImpl<$Res, $Val extends SelectedRegion>
    implements $SelectedRegionCopyWith<$Res> {
  _$SelectedRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionModelCopyWith<$Res>? get province {
    if (_value.province == null) {
      return null;
    }

    return $RegionModelCopyWith<$Res>(_value.province!, (value) {
      return _then(_value.copyWith(province: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $RegionModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectedRegionImplCopyWith<$Res>
    implements $SelectedRegionCopyWith<$Res> {
  factory _$$SelectedRegionImplCopyWith(_$SelectedRegionImpl value,
          $Res Function(_$SelectedRegionImpl) then) =
      __$$SelectedRegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegionModel? province, RegionModel? city});

  @override
  $RegionModelCopyWith<$Res>? get province;
  @override
  $RegionModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$SelectedRegionImplCopyWithImpl<$Res>
    extends _$SelectedRegionCopyWithImpl<$Res, _$SelectedRegionImpl>
    implements _$$SelectedRegionImplCopyWith<$Res> {
  __$$SelectedRegionImplCopyWithImpl(
      _$SelectedRegionImpl _value, $Res Function(_$SelectedRegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_$SelectedRegionImpl(
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedRegionImpl extends _SelectedRegion {
  const _$SelectedRegionImpl({this.province, this.city}) : super._();

  factory _$SelectedRegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedRegionImplFromJson(json);

  /// 省份
  @override
  final RegionModel? province;

  /// 城市
  @override
  final RegionModel? city;

  @override
  String toString() {
    return 'SelectedRegion(province: $province, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedRegionImpl &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, province, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedRegionImplCopyWith<_$SelectedRegionImpl> get copyWith =>
      __$$SelectedRegionImplCopyWithImpl<_$SelectedRegionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedRegionImplToJson(
      this,
    );
  }
}

abstract class _SelectedRegion extends SelectedRegion {
  const factory _SelectedRegion(
      {final RegionModel? province,
      final RegionModel? city}) = _$SelectedRegionImpl;
  const _SelectedRegion._() : super._();

  factory _SelectedRegion.fromJson(Map<String, dynamic> json) =
      _$SelectedRegionImpl.fromJson;

  @override

  /// 省份
  RegionModel? get province;
  @override

  /// 城市
  RegionModel? get city;
  @override
  @JsonKey(ignore: true)
  _$$SelectedRegionImplCopyWith<_$SelectedRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegionModel _$RegionModelFromJson(Map<String, dynamic> json) {
  return _RegionModel.fromJson(json);
}

/// @nodoc
mixin _$RegionModel {
  /// 地区编码
  String? get code => throw _privateConstructorUsedError;

  /// 地区名称
  String? get name => throw _privateConstructorUsedError;

  /// 地区所属区域
  List<RegionModel> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionModelCopyWith<RegionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionModelCopyWith<$Res> {
  factory $RegionModelCopyWith(
          RegionModel value, $Res Function(RegionModel) then) =
      _$RegionModelCopyWithImpl<$Res, RegionModel>;
  @useResult
  $Res call({String? code, String? name, List<RegionModel> children});
}

/// @nodoc
class _$RegionModelCopyWithImpl<$Res, $Val extends RegionModel>
    implements $RegionModelCopyWith<$Res> {
  _$RegionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegionModelImplCopyWith<$Res>
    implements $RegionModelCopyWith<$Res> {
  factory _$$RegionModelImplCopyWith(
          _$RegionModelImpl value, $Res Function(_$RegionModelImpl) then) =
      __$$RegionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? name, List<RegionModel> children});
}

/// @nodoc
class __$$RegionModelImplCopyWithImpl<$Res>
    extends _$RegionModelCopyWithImpl<$Res, _$RegionModelImpl>
    implements _$$RegionModelImplCopyWith<$Res> {
  __$$RegionModelImplCopyWithImpl(
      _$RegionModelImpl _value, $Res Function(_$RegionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? children = null,
  }) {
    return _then(_$RegionModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<RegionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionModelImpl extends _RegionModel {
  const _$RegionModelImpl(
      {this.code, this.name, final List<RegionModel> children = const []})
      : _children = children,
        super._();

  factory _$RegionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionModelImplFromJson(json);

  /// 地区编码
  @override
  final String? code;

  /// 地区名称
  @override
  final String? name;

  /// 地区所属区域
  final List<RegionModel> _children;

  /// 地区所属区域
  @override
  @JsonKey()
  List<RegionModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'RegionModel(code: $code, name: $name, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionModelImplCopyWith<_$RegionModelImpl> get copyWith =>
      __$$RegionModelImplCopyWithImpl<_$RegionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionModelImplToJson(
      this,
    );
  }
}

abstract class _RegionModel extends RegionModel {
  const factory _RegionModel(
      {final String? code,
      final String? name,
      final List<RegionModel> children}) = _$RegionModelImpl;
  const _RegionModel._() : super._();

  factory _RegionModel.fromJson(Map<String, dynamic> json) =
      _$RegionModelImpl.fromJson;

  @override

  /// 地区编码
  String? get code;
  @override

  /// 地区名称
  String? get name;
  @override

  /// 地区所属区域
  List<RegionModel> get children;
  @override
  @JsonKey(ignore: true)
  _$$RegionModelImplCopyWith<_$RegionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DictModel _$DictModelFromJson(Map<String, dynamic> json) {
  return _DictModel.fromJson(json);
}

/// @nodoc
mixin _$DictModel {
  /// 字典数据id
  @JsonKey(name: 'dictDataId')
  @String2IntJsonConverter()
  int get id => throw _privateConstructorUsedError;

  /// 字典代码
  @JsonKey(name: 'dictDataCode')
  @String2IntJsonConverter()
  String get code => throw _privateConstructorUsedError;

  /// 字典中文名称
  @JsonKey(name: 'dictValue')
  String get value => throw _privateConstructorUsedError;

  /// 字典英文名称
  @JsonKey(name: 'dictEngValue')
  String get engValue => throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  /// 排序
  @String2IntJsonConverter()
  int get seq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictModelCopyWith<DictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictModelCopyWith<$Res> {
  factory $DictModelCopyWith(DictModel value, $Res Function(DictModel) then) =
      _$DictModelCopyWithImpl<$Res, DictModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dictDataId') @String2IntJsonConverter() int id,
      @JsonKey(name: 'dictDataCode') @String2IntJsonConverter() String code,
      @JsonKey(name: 'dictValue') String value,
      @JsonKey(name: 'dictEngValue') String engValue,
      String remark,
      @String2IntJsonConverter() int seq});
}

/// @nodoc
class _$DictModelCopyWithImpl<$Res, $Val extends DictModel>
    implements $DictModelCopyWith<$Res> {
  _$DictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? value = null,
    Object? engValue = null,
    Object? remark = null,
    Object? seq = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      engValue: null == engValue
          ? _value.engValue
          : engValue // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$DictModelImplCopyWith<$Res>
    implements $DictModelCopyWith<$Res> {
  factory _$$DictModelImplCopyWith(
          _$DictModelImpl value, $Res Function(_$DictModelImpl) then) =
      __$$DictModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dictDataId') @String2IntJsonConverter() int id,
      @JsonKey(name: 'dictDataCode') @String2IntJsonConverter() String code,
      @JsonKey(name: 'dictValue') String value,
      @JsonKey(name: 'dictEngValue') String engValue,
      String remark,
      @String2IntJsonConverter() int seq});
}

/// @nodoc
class __$$DictModelImplCopyWithImpl<$Res>
    extends _$DictModelCopyWithImpl<$Res, _$DictModelImpl>
    implements _$$DictModelImplCopyWith<$Res> {
  __$$DictModelImplCopyWithImpl(
      _$DictModelImpl _value, $Res Function(_$DictModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? value = null,
    Object? engValue = null,
    Object? remark = null,
    Object? seq = null,
  }) {
    return _then(_$DictModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      engValue: null == engValue
          ? _value.engValue
          : engValue // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$DictModelImpl extends _DictModel {
  const _$DictModelImpl(
      {@JsonKey(name: 'dictDataId') @String2IntJsonConverter() required this.id,
      @JsonKey(name: 'dictDataCode') @String2IntJsonConverter() this.code = '',
      @JsonKey(name: 'dictValue') this.value = '',
      @JsonKey(name: 'dictEngValue') this.engValue = '',
      this.remark = '',
      @String2IntJsonConverter() this.seq = 0})
      : super._();

  factory _$DictModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DictModelImplFromJson(json);

  /// 字典数据id
  @override
  @JsonKey(name: 'dictDataId')
  @String2IntJsonConverter()
  final int id;

  /// 字典代码
  @override
  @JsonKey(name: 'dictDataCode')
  @String2IntJsonConverter()
  final String code;

  /// 字典中文名称
  @override
  @JsonKey(name: 'dictValue')
  final String value;

  /// 字典英文名称
  @override
  @JsonKey(name: 'dictEngValue')
  final String engValue;

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
    return 'DictModel(id: $id, code: $code, value: $value, engValue: $engValue, remark: $remark, seq: $seq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.engValue, engValue) ||
                other.engValue == engValue) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.seq, seq) || other.seq == seq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, value, engValue, remark, seq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DictModelImplCopyWith<_$DictModelImpl> get copyWith =>
      __$$DictModelImplCopyWithImpl<_$DictModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DictModelImplToJson(
      this,
    );
  }
}

abstract class _DictModel extends DictModel {
  const factory _DictModel(
      {@JsonKey(name: 'dictDataId')
      @String2IntJsonConverter()
      required final int id,
      @JsonKey(name: 'dictDataCode')
      @String2IntJsonConverter()
      final String code,
      @JsonKey(name: 'dictValue') final String value,
      @JsonKey(name: 'dictEngValue') final String engValue,
      final String remark,
      @String2IntJsonConverter() final int seq}) = _$DictModelImpl;
  const _DictModel._() : super._();

  factory _DictModel.fromJson(Map<String, dynamic> json) =
      _$DictModelImpl.fromJson;

  @override

  /// 字典数据id
  @JsonKey(name: 'dictDataId')
  @String2IntJsonConverter()
  int get id;
  @override

  /// 字典代码
  @JsonKey(name: 'dictDataCode')
  @String2IntJsonConverter()
  String get code;
  @override

  /// 字典中文名称
  @JsonKey(name: 'dictValue')
  String get value;
  @override

  /// 字典英文名称
  @JsonKey(name: 'dictEngValue')
  String get engValue;
  @override

  /// 备注
  String get remark;
  @override

  /// 排序
  @String2IntJsonConverter()
  int get seq;
  @override
  @JsonKey(ignore: true)
  _$$DictModelImplCopyWith<_$DictModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KindergartenReq _$KindergartenReqFromJson(Map<String, dynamic> json) {
  return _KindergartenReq.fromJson(json);
}

/// @nodoc
mixin _$KindergartenReq {
  /// 省份
  String? get province => throw _privateConstructorUsedError;

  /// 城市
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KindergartenReqCopyWith<KindergartenReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindergartenReqCopyWith<$Res> {
  factory $KindergartenReqCopyWith(
          KindergartenReq value, $Res Function(KindergartenReq) then) =
      _$KindergartenReqCopyWithImpl<$Res, KindergartenReq>;
  @useResult
  $Res call({String? province, String? city});
}

/// @nodoc
class _$KindergartenReqCopyWithImpl<$Res, $Val extends KindergartenReq>
    implements $KindergartenReqCopyWith<$Res> {
  _$KindergartenReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KindergartenReqImplCopyWith<$Res>
    implements $KindergartenReqCopyWith<$Res> {
  factory _$$KindergartenReqImplCopyWith(_$KindergartenReqImpl value,
          $Res Function(_$KindergartenReqImpl) then) =
      __$$KindergartenReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? province, String? city});
}

/// @nodoc
class __$$KindergartenReqImplCopyWithImpl<$Res>
    extends _$KindergartenReqCopyWithImpl<$Res, _$KindergartenReqImpl>
    implements _$$KindergartenReqImplCopyWith<$Res> {
  __$$KindergartenReqImplCopyWithImpl(
      _$KindergartenReqImpl _value, $Res Function(_$KindergartenReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = freezed,
    Object? city = freezed,
  }) {
    return _then(_$KindergartenReqImpl(
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KindergartenReqImpl extends _KindergartenReq {
  const _$KindergartenReqImpl({this.province, this.city}) : super._();

  factory _$KindergartenReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$KindergartenReqImplFromJson(json);

  /// 省份
  @override
  final String? province;

  /// 城市
  @override
  final String? city;

  @override
  String toString() {
    return 'KindergartenReq(province: $province, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KindergartenReqImpl &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, province, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KindergartenReqImplCopyWith<_$KindergartenReqImpl> get copyWith =>
      __$$KindergartenReqImplCopyWithImpl<_$KindergartenReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KindergartenReqImplToJson(
      this,
    );
  }
}

abstract class _KindergartenReq extends KindergartenReq {
  const factory _KindergartenReq({final String? province, final String? city}) =
      _$KindergartenReqImpl;
  const _KindergartenReq._() : super._();

  factory _KindergartenReq.fromJson(Map<String, dynamic> json) =
      _$KindergartenReqImpl.fromJson;

  @override

  /// 省份
  String? get province;
  @override

  /// 城市
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$KindergartenReqImplCopyWith<_$KindergartenReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KindergartenWrapper _$KindergartenWrapperFromJson(Map<String, dynamic> json) {
  return _KindergartenWrapper.fromJson(json);
}

/// @nodoc
mixin _$KindergartenWrapper {
// 地区
  RegionModel get region => throw _privateConstructorUsedError; // 园所列表
  List<KindergartenModel> get schools => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KindergartenWrapperCopyWith<KindergartenWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindergartenWrapperCopyWith<$Res> {
  factory $KindergartenWrapperCopyWith(
          KindergartenWrapper value, $Res Function(KindergartenWrapper) then) =
      _$KindergartenWrapperCopyWithImpl<$Res, KindergartenWrapper>;
  @useResult
  $Res call({RegionModel region, List<KindergartenModel> schools});

  $RegionModelCopyWith<$Res> get region;
}

/// @nodoc
class _$KindergartenWrapperCopyWithImpl<$Res, $Val extends KindergartenWrapper>
    implements $KindergartenWrapperCopyWith<$Res> {
  _$KindergartenWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? schools = null,
  }) {
    return _then(_value.copyWith(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionModel,
      schools: null == schools
          ? _value.schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<KindergartenModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionModelCopyWith<$Res> get region {
    return $RegionModelCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KindergartenWrapperImplCopyWith<$Res>
    implements $KindergartenWrapperCopyWith<$Res> {
  factory _$$KindergartenWrapperImplCopyWith(_$KindergartenWrapperImpl value,
          $Res Function(_$KindergartenWrapperImpl) then) =
      __$$KindergartenWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegionModel region, List<KindergartenModel> schools});

  @override
  $RegionModelCopyWith<$Res> get region;
}

/// @nodoc
class __$$KindergartenWrapperImplCopyWithImpl<$Res>
    extends _$KindergartenWrapperCopyWithImpl<$Res, _$KindergartenWrapperImpl>
    implements _$$KindergartenWrapperImplCopyWith<$Res> {
  __$$KindergartenWrapperImplCopyWithImpl(_$KindergartenWrapperImpl _value,
      $Res Function(_$KindergartenWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? schools = null,
  }) {
    return _then(_$KindergartenWrapperImpl(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionModel,
      schools: null == schools
          ? _value._schools
          : schools // ignore: cast_nullable_to_non_nullable
              as List<KindergartenModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KindergartenWrapperImpl extends _KindergartenWrapper {
  const _$KindergartenWrapperImpl(
      {required this.region, required final List<KindergartenModel> schools})
      : _schools = schools,
        super._();

  factory _$KindergartenWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$KindergartenWrapperImplFromJson(json);

// 地区
  @override
  final RegionModel region;
// 园所列表
  final List<KindergartenModel> _schools;
// 园所列表
  @override
  List<KindergartenModel> get schools {
    if (_schools is EqualUnmodifiableListView) return _schools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schools);
  }

  @override
  String toString() {
    return 'KindergartenWrapper(region: $region, schools: $schools)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KindergartenWrapperImpl &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality().equals(other._schools, _schools));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, region, const DeepCollectionEquality().hash(_schools));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KindergartenWrapperImplCopyWith<_$KindergartenWrapperImpl> get copyWith =>
      __$$KindergartenWrapperImplCopyWithImpl<_$KindergartenWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KindergartenWrapperImplToJson(
      this,
    );
  }
}

abstract class _KindergartenWrapper extends KindergartenWrapper {
  const factory _KindergartenWrapper(
          {required final RegionModel region,
          required final List<KindergartenModel> schools}) =
      _$KindergartenWrapperImpl;
  const _KindergartenWrapper._() : super._();

  factory _KindergartenWrapper.fromJson(Map<String, dynamic> json) =
      _$KindergartenWrapperImpl.fromJson;

  @override // 地区
  RegionModel get region;
  @override // 园所列表
  List<KindergartenModel> get schools;
  @override
  @JsonKey(ignore: true)
  _$$KindergartenWrapperImplCopyWith<_$KindergartenWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KindergartenModel _$KindergartenModelFromJson(Map<String, dynamic> json) {
  return _KindergartenModel.fromJson(json);
}

/// @nodoc
mixin _$KindergartenModel {
  /// 园所名称
  String? get schoolName => throw _privateConstructorUsedError;

  /// 园所编码
  String? get schoolCode => throw _privateConstructorUsedError;

  /// 园所所在省份
  String? get province => throw _privateConstructorUsedError;

  /// 园所所在城市
  String? get city => throw _privateConstructorUsedError;

  /// 园所地址
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KindergartenModelCopyWith<KindergartenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindergartenModelCopyWith<$Res> {
  factory $KindergartenModelCopyWith(
          KindergartenModel value, $Res Function(KindergartenModel) then) =
      _$KindergartenModelCopyWithImpl<$Res, KindergartenModel>;
  @useResult
  $Res call(
      {String? schoolName,
      String? schoolCode,
      String? province,
      String? city,
      String? address});
}

/// @nodoc
class _$KindergartenModelCopyWithImpl<$Res, $Val extends KindergartenModel>
    implements $KindergartenModelCopyWith<$Res> {
  _$KindergartenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? schoolCode = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KindergartenModelImplCopyWith<$Res>
    implements $KindergartenModelCopyWith<$Res> {
  factory _$$KindergartenModelImplCopyWith(_$KindergartenModelImpl value,
          $Res Function(_$KindergartenModelImpl) then) =
      __$$KindergartenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? schoolName,
      String? schoolCode,
      String? province,
      String? city,
      String? address});
}

/// @nodoc
class __$$KindergartenModelImplCopyWithImpl<$Res>
    extends _$KindergartenModelCopyWithImpl<$Res, _$KindergartenModelImpl>
    implements _$$KindergartenModelImplCopyWith<$Res> {
  __$$KindergartenModelImplCopyWithImpl(_$KindergartenModelImpl _value,
      $Res Function(_$KindergartenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolName = freezed,
    Object? schoolCode = freezed,
    Object? province = freezed,
    Object? city = freezed,
    Object? address = freezed,
  }) {
    return _then(_$KindergartenModelImpl(
      schoolName: freezed == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KindergartenModelImpl extends _KindergartenModel {
  const _$KindergartenModelImpl(
      {this.schoolName,
      this.schoolCode,
      this.province,
      this.city,
      this.address})
      : super._();

  factory _$KindergartenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KindergartenModelImplFromJson(json);

  /// 园所名称
  @override
  final String? schoolName;

  /// 园所编码
  @override
  final String? schoolCode;

  /// 园所所在省份
  @override
  final String? province;

  /// 园所所在城市
  @override
  final String? city;

  /// 园所地址
  @override
  final String? address;

  @override
  String toString() {
    return 'KindergartenModel(schoolName: $schoolName, schoolCode: $schoolCode, province: $province, city: $city, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KindergartenModelImpl &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, schoolName, schoolCode, province, city, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KindergartenModelImplCopyWith<_$KindergartenModelImpl> get copyWith =>
      __$$KindergartenModelImplCopyWithImpl<_$KindergartenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KindergartenModelImplToJson(
      this,
    );
  }
}

abstract class _KindergartenModel extends KindergartenModel {
  const factory _KindergartenModel(
      {final String? schoolName,
      final String? schoolCode,
      final String? province,
      final String? city,
      final String? address}) = _$KindergartenModelImpl;
  const _KindergartenModel._() : super._();

  factory _KindergartenModel.fromJson(Map<String, dynamic> json) =
      _$KindergartenModelImpl.fromJson;

  @override

  /// 园所名称
  String? get schoolName;
  @override

  /// 园所编码
  String? get schoolCode;
  @override

  /// 园所所在省份
  String? get province;
  @override

  /// 园所所在城市
  String? get city;
  @override

  /// 园所地址
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$KindergartenModelImplCopyWith<_$KindergartenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PromotionModel _$PromotionModelFromJson(Map<String, dynamic> json) {
  return _PromotionModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionModel {
  /// 园所编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 园所名称
  String get schoolName => throw _privateConstructorUsedError;

  /// 园所所在省份
  String? get province => throw _privateConstructorUsedError;

  /// 园所所在城市
  String? get city => throw _privateConstructorUsedError;

  /// 园所地址
  String? get address => throw _privateConstructorUsedError;

  /// 内容方式
  @ContentTypeJsonConverter()
  ContentType get contentType => throw _privateConstructorUsedError;

  /// 图片链接(逗号隔开)
  @JsonKey(name: 'picture')
  String? get imgStr => throw _privateConstructorUsedError;

  /// 链接
  String? get url => throw _privateConstructorUsedError;

  /// 园所介绍
  String get introduce => throw _privateConstructorUsedError;

  /// 师资介绍
  String get teacherIntroduce => throw _privateConstructorUsedError;

  /// 备注
  String get remark => throw _privateConstructorUsedError;

  /// 最后一次修改人
  String? get updateUserName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionModelCopyWith<PromotionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionModelCopyWith<$Res> {
  factory $PromotionModelCopyWith(
          PromotionModel value, $Res Function(PromotionModel) then) =
      _$PromotionModelCopyWithImpl<$Res, PromotionModel>;
  @useResult
  $Res call(
      {String schoolCode,
      String schoolName,
      String? province,
      String? city,
      String? address,
      @ContentTypeJsonConverter() ContentType contentType,
      @JsonKey(name: 'picture') String? imgStr,
      String? url,
      String introduce,
      String teacherIntroduce,
      String remark,
      String? updateUserName});
}

/// @nodoc
class _$PromotionModelCopyWithImpl<$Res, $Val extends PromotionModel>
    implements $PromotionModelCopyWith<$Res> {
  _$PromotionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? schoolName = null,
    Object? province = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? contentType = null,
    Object? imgStr = freezed,
    Object? url = freezed,
    Object? introduce = null,
    Object? teacherIntroduce = null,
    Object? remark = null,
    Object? updateUserName = freezed,
  }) {
    return _then(_value.copyWith(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      imgStr: freezed == imgStr
          ? _value.imgStr
          : imgStr // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
      teacherIntroduce: null == teacherIntroduce
          ? _value.teacherIntroduce
          : teacherIntroduce // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      updateUserName: freezed == updateUserName
          ? _value.updateUserName
          : updateUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionModelImplCopyWith<$Res>
    implements $PromotionModelCopyWith<$Res> {
  factory _$$PromotionModelImplCopyWith(_$PromotionModelImpl value,
          $Res Function(_$PromotionModelImpl) then) =
      __$$PromotionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String schoolCode,
      String schoolName,
      String? province,
      String? city,
      String? address,
      @ContentTypeJsonConverter() ContentType contentType,
      @JsonKey(name: 'picture') String? imgStr,
      String? url,
      String introduce,
      String teacherIntroduce,
      String remark,
      String? updateUserName});
}

/// @nodoc
class __$$PromotionModelImplCopyWithImpl<$Res>
    extends _$PromotionModelCopyWithImpl<$Res, _$PromotionModelImpl>
    implements _$$PromotionModelImplCopyWith<$Res> {
  __$$PromotionModelImplCopyWithImpl(
      _$PromotionModelImpl _value, $Res Function(_$PromotionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolCode = null,
    Object? schoolName = null,
    Object? province = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? contentType = null,
    Object? imgStr = freezed,
    Object? url = freezed,
    Object? introduce = null,
    Object? teacherIntroduce = null,
    Object? remark = null,
    Object? updateUserName = freezed,
  }) {
    return _then(_$PromotionModelImpl(
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      schoolName: null == schoolName
          ? _value.schoolName
          : schoolName // ignore: cast_nullable_to_non_nullable
              as String,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      imgStr: freezed == imgStr
          ? _value.imgStr
          : imgStr // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      introduce: null == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String,
      teacherIntroduce: null == teacherIntroduce
          ? _value.teacherIntroduce
          : teacherIntroduce // ignore: cast_nullable_to_non_nullable
              as String,
      remark: null == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String,
      updateUserName: freezed == updateUserName
          ? _value.updateUserName
          : updateUserName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionModelImpl extends _PromotionModel {
  const _$PromotionModelImpl(
      {required this.schoolCode,
      this.schoolName = '',
      this.province,
      this.city,
      this.address,
      @ContentTypeJsonConverter() this.contentType = ContentType.unknown,
      @JsonKey(name: 'picture') this.imgStr,
      this.url,
      this.introduce = '',
      this.teacherIntroduce = '',
      this.remark = '',
      this.updateUserName})
      : super._();

  factory _$PromotionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionModelImplFromJson(json);

  /// 园所编码
  @override
  final String schoolCode;

  /// 园所名称
  @override
  @JsonKey()
  final String schoolName;

  /// 园所所在省份
  @override
  final String? province;

  /// 园所所在城市
  @override
  final String? city;

  /// 园所地址
  @override
  final String? address;

  /// 内容方式
  @override
  @JsonKey()
  @ContentTypeJsonConverter()
  final ContentType contentType;

  /// 图片链接(逗号隔开)
  @override
  @JsonKey(name: 'picture')
  final String? imgStr;

  /// 链接
  @override
  final String? url;

  /// 园所介绍
  @override
  @JsonKey()
  final String introduce;

  /// 师资介绍
  @override
  @JsonKey()
  final String teacherIntroduce;

  /// 备注
  @override
  @JsonKey()
  final String remark;

  /// 最后一次修改人
  @override
  final String? updateUserName;

  @override
  String toString() {
    return 'PromotionModel(schoolCode: $schoolCode, schoolName: $schoolName, province: $province, city: $city, address: $address, contentType: $contentType, imgStr: $imgStr, url: $url, introduce: $introduce, teacherIntroduce: $teacherIntroduce, remark: $remark, updateUserName: $updateUserName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionModelImpl &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.imgStr, imgStr) || other.imgStr == imgStr) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.introduce, introduce) ||
                other.introduce == introduce) &&
            (identical(other.teacherIntroduce, teacherIntroduce) ||
                other.teacherIntroduce == teacherIntroduce) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.updateUserName, updateUserName) ||
                other.updateUserName == updateUserName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      schoolCode,
      schoolName,
      province,
      city,
      address,
      contentType,
      imgStr,
      url,
      introduce,
      teacherIntroduce,
      remark,
      updateUserName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionModelImplCopyWith<_$PromotionModelImpl> get copyWith =>
      __$$PromotionModelImplCopyWithImpl<_$PromotionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionModelImplToJson(
      this,
    );
  }
}

abstract class _PromotionModel extends PromotionModel {
  const factory _PromotionModel(
      {required final String schoolCode,
      final String schoolName,
      final String? province,
      final String? city,
      final String? address,
      @ContentTypeJsonConverter() final ContentType contentType,
      @JsonKey(name: 'picture') final String? imgStr,
      final String? url,
      final String introduce,
      final String teacherIntroduce,
      final String remark,
      final String? updateUserName}) = _$PromotionModelImpl;
  const _PromotionModel._() : super._();

  factory _PromotionModel.fromJson(Map<String, dynamic> json) =
      _$PromotionModelImpl.fromJson;

  @override

  /// 园所编码
  String get schoolCode;
  @override

  /// 园所名称
  String get schoolName;
  @override

  /// 园所所在省份
  String? get province;
  @override

  /// 园所所在城市
  String? get city;
  @override

  /// 园所地址
  String? get address;
  @override

  /// 内容方式
  @ContentTypeJsonConverter()
  ContentType get contentType;
  @override

  /// 图片链接(逗号隔开)
  @JsonKey(name: 'picture')
  String? get imgStr;
  @override

  /// 链接
  String? get url;
  @override

  /// 园所介绍
  String get introduce;
  @override

  /// 师资介绍
  String get teacherIntroduce;
  @override

  /// 备注
  String get remark;
  @override

  /// 最后一次修改人
  String? get updateUserName;
  @override
  @JsonKey(ignore: true)
  _$$PromotionModelImplCopyWith<_$PromotionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendSmsCodeReq _$SendSmsCodeReqFromJson(Map<String, dynamic> json) {
  return _SendSmsCodeReq.fromJson(json);
}

/// @nodoc
mixin _$SendSmsCodeReq {
  /// 手机号码
  String get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendSmsCodeReqCopyWith<SendSmsCodeReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSmsCodeReqCopyWith<$Res> {
  factory $SendSmsCodeReqCopyWith(
          SendSmsCodeReq value, $Res Function(SendSmsCodeReq) then) =
      _$SendSmsCodeReqCopyWithImpl<$Res, SendSmsCodeReq>;
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class _$SendSmsCodeReqCopyWithImpl<$Res, $Val extends SendSmsCodeReq>
    implements $SendSmsCodeReqCopyWith<$Res> {
  _$SendSmsCodeReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_value.copyWith(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSmsCodeReqImplCopyWith<$Res>
    implements $SendSmsCodeReqCopyWith<$Res> {
  factory _$$SendSmsCodeReqImplCopyWith(_$SendSmsCodeReqImpl value,
          $Res Function(_$SendSmsCodeReqImpl) then) =
      __$$SendSmsCodeReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class __$$SendSmsCodeReqImplCopyWithImpl<$Res>
    extends _$SendSmsCodeReqCopyWithImpl<$Res, _$SendSmsCodeReqImpl>
    implements _$$SendSmsCodeReqImplCopyWith<$Res> {
  __$$SendSmsCodeReqImplCopyWithImpl(
      _$SendSmsCodeReqImpl _value, $Res Function(_$SendSmsCodeReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_$SendSmsCodeReqImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendSmsCodeReqImpl extends _SendSmsCodeReq {
  const _$SendSmsCodeReqImpl({required this.mobile}) : super._();

  factory _$SendSmsCodeReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendSmsCodeReqImplFromJson(json);

  /// 手机号码
  @override
  final String mobile;

  @override
  String toString() {
    return 'SendSmsCodeReq(mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSmsCodeReqImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSmsCodeReqImplCopyWith<_$SendSmsCodeReqImpl> get copyWith =>
      __$$SendSmsCodeReqImplCopyWithImpl<_$SendSmsCodeReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendSmsCodeReqImplToJson(
      this,
    );
  }
}

abstract class _SendSmsCodeReq extends SendSmsCodeReq {
  const factory _SendSmsCodeReq({required final String mobile}) =
      _$SendSmsCodeReqImpl;
  const _SendSmsCodeReq._() : super._();

  factory _SendSmsCodeReq.fromJson(Map<String, dynamic> json) =
      _$SendSmsCodeReqImpl.fromJson;

  @override

  /// 手机号码
  String get mobile;
  @override
  @JsonKey(ignore: true)
  _$$SendSmsCodeReqImplCopyWith<_$SendSmsCodeReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendSmsCodeModel _$SendSmsCodeModelFromJson(Map<String, dynamic> json) {
  return _SendSmsCodeModel.fromJson(json);
}

/// @nodoc
mixin _$SendSmsCodeModel {
  /// 手机号码
  String get mobile => throw _privateConstructorUsedError;

  /// 发送结果
  bool get sendResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendSmsCodeModelCopyWith<SendSmsCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSmsCodeModelCopyWith<$Res> {
  factory $SendSmsCodeModelCopyWith(
          SendSmsCodeModel value, $Res Function(SendSmsCodeModel) then) =
      _$SendSmsCodeModelCopyWithImpl<$Res, SendSmsCodeModel>;
  @useResult
  $Res call({String mobile, bool sendResult});
}

/// @nodoc
class _$SendSmsCodeModelCopyWithImpl<$Res, $Val extends SendSmsCodeModel>
    implements $SendSmsCodeModelCopyWith<$Res> {
  _$SendSmsCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? sendResult = null,
  }) {
    return _then(_value.copyWith(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      sendResult: null == sendResult
          ? _value.sendResult
          : sendResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSmsCodeModelImplCopyWith<$Res>
    implements $SendSmsCodeModelCopyWith<$Res> {
  factory _$$SendSmsCodeModelImplCopyWith(_$SendSmsCodeModelImpl value,
          $Res Function(_$SendSmsCodeModelImpl) then) =
      __$$SendSmsCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mobile, bool sendResult});
}

/// @nodoc
class __$$SendSmsCodeModelImplCopyWithImpl<$Res>
    extends _$SendSmsCodeModelCopyWithImpl<$Res, _$SendSmsCodeModelImpl>
    implements _$$SendSmsCodeModelImplCopyWith<$Res> {
  __$$SendSmsCodeModelImplCopyWithImpl(_$SendSmsCodeModelImpl _value,
      $Res Function(_$SendSmsCodeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? sendResult = null,
  }) {
    return _then(_$SendSmsCodeModelImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      sendResult: null == sendResult
          ? _value.sendResult
          : sendResult // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendSmsCodeModelImpl extends _SendSmsCodeModel {
  const _$SendSmsCodeModelImpl({required this.mobile, this.sendResult = false})
      : super._();

  factory _$SendSmsCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendSmsCodeModelImplFromJson(json);

  /// 手机号码
  @override
  final String mobile;

  /// 发送结果
  @override
  @JsonKey()
  final bool sendResult;

  @override
  String toString() {
    return 'SendSmsCodeModel(mobile: $mobile, sendResult: $sendResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSmsCodeModelImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.sendResult, sendResult) ||
                other.sendResult == sendResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobile, sendResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSmsCodeModelImplCopyWith<_$SendSmsCodeModelImpl> get copyWith =>
      __$$SendSmsCodeModelImplCopyWithImpl<_$SendSmsCodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendSmsCodeModelImplToJson(
      this,
    );
  }
}

abstract class _SendSmsCodeModel extends SendSmsCodeModel {
  const factory _SendSmsCodeModel(
      {required final String mobile,
      final bool sendResult}) = _$SendSmsCodeModelImpl;
  const _SendSmsCodeModel._() : super._();

  factory _SendSmsCodeModel.fromJson(Map<String, dynamic> json) =
      _$SendSmsCodeModelImpl.fromJson;

  @override

  /// 手机号码
  String get mobile;
  @override

  /// 发送结果
  bool get sendResult;
  @override
  @JsonKey(ignore: true)
  _$$SendSmsCodeModelImplCopyWith<_$SendSmsCodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadFile _$UploadFileFromJson(Map<String, dynamic> json) {
  return _UploadFile.fromJson(json);
}

/// @nodoc
mixin _$UploadFile {
  @JsonKey(includeToJson: false)
  String get local => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  set local(String value) => throw _privateConstructorUsedError;

  /// 本地资源(兼容AssetEntity)
  @JsonKey(includeToJson: false)
  @AssetEntityJsonConverter()
  AssetEntity? get asset => throw _privateConstructorUsedError;

  /// 本地资源(兼容AssetEntity)
  @JsonKey(includeToJson: false)
  @AssetEntityJsonConverter()
  set asset(AssetEntity? value) => throw _privateConstructorUsedError;

  /// 服务器地址
  String get remote => throw _privateConstructorUsedError;

  /// 服务器地址
  set remote(String value) => throw _privateConstructorUsedError;

  /// 是否缓存
  @JsonKey(includeToJson: false)
  bool get temp => throw _privateConstructorUsedError;

  /// 是否缓存
  @JsonKey(includeToJson: false)
  set temp(bool value) => throw _privateConstructorUsedError;

  /// 文件类型
  @JsonKey(includeToJson: false)
  FileType get type => throw _privateConstructorUsedError;

  /// 文件类型
  @JsonKey(includeToJson: false)
  set type(FileType value) => throw _privateConstructorUsedError;

  /// 是否已上传
  @JsonKey(includeToJson: false)
  dynamic get uploaded => throw _privateConstructorUsedError;

  /// 是否已上传
  @JsonKey(includeToJson: false)
  set uploaded(dynamic value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFileCopyWith<UploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileCopyWith<$Res> {
  factory $UploadFileCopyWith(
          UploadFile value, $Res Function(UploadFile) then) =
      _$UploadFileCopyWithImpl<$Res, UploadFile>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String local,
      @JsonKey(includeToJson: false)
      @AssetEntityJsonConverter()
      AssetEntity? asset,
      String remote,
      @JsonKey(includeToJson: false) bool temp,
      @JsonKey(includeToJson: false) FileType type,
      @JsonKey(includeToJson: false) dynamic uploaded});
}

/// @nodoc
class _$UploadFileCopyWithImpl<$Res, $Val extends UploadFile>
    implements $UploadFileCopyWith<$Res> {
  _$UploadFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? local = null,
    Object? asset = freezed,
    Object? remote = null,
    Object? temp = null,
    Object? type = null,
    Object? uploaded = freezed,
  }) {
    return _then(_value.copyWith(
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as String,
      asset: freezed == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      remote: null == remote
          ? _value.remote
          : remote // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
      uploaded: freezed == uploaded
          ? _value.uploaded
          : uploaded // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileImplCopyWith<$Res>
    implements $UploadFileCopyWith<$Res> {
  factory _$$UploadFileImplCopyWith(
          _$UploadFileImpl value, $Res Function(_$UploadFileImpl) then) =
      __$$UploadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String local,
      @JsonKey(includeToJson: false)
      @AssetEntityJsonConverter()
      AssetEntity? asset,
      String remote,
      @JsonKey(includeToJson: false) bool temp,
      @JsonKey(includeToJson: false) FileType type,
      @JsonKey(includeToJson: false) dynamic uploaded});
}

/// @nodoc
class __$$UploadFileImplCopyWithImpl<$Res>
    extends _$UploadFileCopyWithImpl<$Res, _$UploadFileImpl>
    implements _$$UploadFileImplCopyWith<$Res> {
  __$$UploadFileImplCopyWithImpl(
      _$UploadFileImpl _value, $Res Function(_$UploadFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? local = null,
    Object? asset = freezed,
    Object? remote = null,
    Object? temp = null,
    Object? type = null,
    Object? uploaded = freezed,
  }) {
    return _then(_$UploadFileImpl(
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as String,
      asset: freezed == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
      remote: null == remote
          ? _value.remote
          : remote // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
      uploaded: freezed == uploaded ? _value.uploaded! : uploaded,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileImpl extends _UploadFile {
  _$UploadFileImpl(
      {@JsonKey(includeToJson: false) this.local = '',
      @JsonKey(includeToJson: false) @AssetEntityJsonConverter() this.asset,
      this.remote = '',
      @JsonKey(includeToJson: false) this.temp = false,
      @JsonKey(includeToJson: false) this.type = FileType.none,
      @JsonKey(includeToJson: false) this.uploaded = false})
      : super._();

  factory _$UploadFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  String local;

  /// 本地资源(兼容AssetEntity)
  @override
  @JsonKey(includeToJson: false)
  @AssetEntityJsonConverter()
  AssetEntity? asset;

  /// 服务器地址
  @override
  @JsonKey()
  String remote;

  /// 是否缓存
  @override
  @JsonKey(includeToJson: false)
  bool temp;

  /// 文件类型
  @override
  @JsonKey(includeToJson: false)
  FileType type;

  /// 是否已上传
  @override
  @JsonKey(includeToJson: false)
  dynamic uploaded;

  @override
  String toString() {
    return 'UploadFile(local: $local, asset: $asset, remote: $remote, temp: $temp, type: $type, uploaded: $uploaded)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      __$$UploadFileImplCopyWithImpl<_$UploadFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileImplToJson(
      this,
    );
  }
}

abstract class _UploadFile extends UploadFile {
  factory _UploadFile(
      {@JsonKey(includeToJson: false) String local,
      @JsonKey(includeToJson: false)
      @AssetEntityJsonConverter()
      AssetEntity? asset,
      String remote,
      @JsonKey(includeToJson: false) bool temp,
      @JsonKey(includeToJson: false) FileType type,
      @JsonKey(includeToJson: false) dynamic uploaded}) = _$UploadFileImpl;
  _UploadFile._() : super._();

  factory _UploadFile.fromJson(Map<String, dynamic> json) =
      _$UploadFileImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get local;
  @JsonKey(includeToJson: false)
  set local(String value);
  @override

  /// 本地资源(兼容AssetEntity)
  @JsonKey(includeToJson: false)
  @AssetEntityJsonConverter()
  AssetEntity? get asset;

  /// 本地资源(兼容AssetEntity)
  @JsonKey(includeToJson: false)
  @AssetEntityJsonConverter()
  set asset(AssetEntity? value);
  @override

  /// 服务器地址
  String get remote;

  /// 服务器地址
  set remote(String value);
  @override

  /// 是否缓存
  @JsonKey(includeToJson: false)
  bool get temp;

  /// 是否缓存
  @JsonKey(includeToJson: false)
  set temp(bool value);
  @override

  /// 文件类型
  @JsonKey(includeToJson: false)
  FileType get type;

  /// 文件类型
  @JsonKey(includeToJson: false)
  set type(FileType value);
  @override

  /// 是否已上传
  @JsonKey(includeToJson: false)
  dynamic get uploaded;

  /// 是否已上传
  @JsonKey(includeToJson: false)
  set uploaded(dynamic value);
  @override
  @JsonKey(ignore: true)
  _$$UploadFileImplCopyWith<_$UploadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdsModel _$AdsModelFromJson(Map<String, dynamic> json) {
  return _AdsModel.fromJson(json);
}

/// @nodoc
mixin _$AdsModel {
  int get id => throw _privateConstructorUsedError;

  /// 图片链接
  String get imgUrl => throw _privateConstructorUsedError;

  /// 标题名称
  String get title => throw _privateConstructorUsedError;

  /// 展示顺序
  int get seq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdsModelCopyWith<AdsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsModelCopyWith<$Res> {
  factory $AdsModelCopyWith(AdsModel value, $Res Function(AdsModel) then) =
      _$AdsModelCopyWithImpl<$Res, AdsModel>;
  @useResult
  $Res call({int id, String imgUrl, String title, int seq});
}

/// @nodoc
class _$AdsModelCopyWithImpl<$Res, $Val extends AdsModel>
    implements $AdsModelCopyWith<$Res> {
  _$AdsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgUrl = null,
    Object? title = null,
    Object? seq = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      seq: null == seq
          ? _value.seq
          : seq // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsModelImplCopyWith<$Res>
    implements $AdsModelCopyWith<$Res> {
  factory _$$AdsModelImplCopyWith(
          _$AdsModelImpl value, $Res Function(_$AdsModelImpl) then) =
      __$$AdsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String imgUrl, String title, int seq});
}

/// @nodoc
class __$$AdsModelImplCopyWithImpl<$Res>
    extends _$AdsModelCopyWithImpl<$Res, _$AdsModelImpl>
    implements _$$AdsModelImplCopyWith<$Res> {
  __$$AdsModelImplCopyWithImpl(
      _$AdsModelImpl _value, $Res Function(_$AdsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imgUrl = null,
    Object? title = null,
    Object? seq = null,
  }) {
    return _then(_$AdsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$AdsModelImpl extends _AdsModel {
  const _$AdsModelImpl(
      {required this.id, required this.imgUrl, this.title = '', this.seq = 0})
      : super._();

  factory _$AdsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdsModelImplFromJson(json);

  @override
  final int id;

  /// 图片链接
  @override
  final String imgUrl;

  /// 标题名称
  @override
  @JsonKey()
  final String title;

  /// 展示顺序
  @override
  @JsonKey()
  final int seq;

  @override
  String toString() {
    return 'AdsModel(id: $id, imgUrl: $imgUrl, title: $title, seq: $seq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.seq, seq) || other.seq == seq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imgUrl, title, seq);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsModelImplCopyWith<_$AdsModelImpl> get copyWith =>
      __$$AdsModelImplCopyWithImpl<_$AdsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdsModelImplToJson(
      this,
    );
  }
}

abstract class _AdsModel extends AdsModel {
  const factory _AdsModel(
      {required final int id,
      required final String imgUrl,
      final String title,
      final int seq}) = _$AdsModelImpl;
  const _AdsModel._() : super._();

  factory _AdsModel.fromJson(Map<String, dynamic> json) =
      _$AdsModelImpl.fromJson;

  @override
  int get id;
  @override

  /// 图片链接
  String get imgUrl;
  @override

  /// 标题名称
  String get title;
  @override

  /// 展示顺序
  int get seq;
  @override
  @JsonKey(ignore: true)
  _$$AdsModelImplCopyWith<_$AdsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekdayRange _$WeekdayRangeFromJson(Map<String, dynamic> json) {
  return _WeekdayRange.fromJson(json);
}

/// @nodoc
mixin _$WeekdayRange {
  /// 起始日期
  DateTime get startDate => throw _privateConstructorUsedError;

  /// 结束日期
  DateTime get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekdayRangeCopyWith<WeekdayRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekdayRangeCopyWith<$Res> {
  factory $WeekdayRangeCopyWith(
          WeekdayRange value, $Res Function(WeekdayRange) then) =
      _$WeekdayRangeCopyWithImpl<$Res, WeekdayRange>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$WeekdayRangeCopyWithImpl<$Res, $Val extends WeekdayRange>
    implements $WeekdayRangeCopyWith<$Res> {
  _$WeekdayRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeekdayRangeImplCopyWith<$Res>
    implements $WeekdayRangeCopyWith<$Res> {
  factory _$$WeekdayRangeImplCopyWith(
          _$WeekdayRangeImpl value, $Res Function(_$WeekdayRangeImpl) then) =
      __$$WeekdayRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$WeekdayRangeImplCopyWithImpl<$Res>
    extends _$WeekdayRangeCopyWithImpl<$Res, _$WeekdayRangeImpl>
    implements _$$WeekdayRangeImplCopyWith<$Res> {
  __$$WeekdayRangeImplCopyWithImpl(
      _$WeekdayRangeImpl _value, $Res Function(_$WeekdayRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$WeekdayRangeImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekdayRangeImpl extends _WeekdayRange {
  const _$WeekdayRangeImpl({required this.startDate, required this.endDate})
      : super._();

  factory _$WeekdayRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekdayRangeImplFromJson(json);

  /// 起始日期
  @override
  final DateTime startDate;

  /// 结束日期
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'WeekdayRange(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekdayRangeImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekdayRangeImplCopyWith<_$WeekdayRangeImpl> get copyWith =>
      __$$WeekdayRangeImplCopyWithImpl<_$WeekdayRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekdayRangeImplToJson(
      this,
    );
  }
}

abstract class _WeekdayRange extends WeekdayRange {
  const factory _WeekdayRange(
      {required final DateTime startDate,
      required final DateTime endDate}) = _$WeekdayRangeImpl;
  const _WeekdayRange._() : super._();

  factory _WeekdayRange.fromJson(Map<String, dynamic> json) =
      _$WeekdayRangeImpl.fromJson;

  @override

  /// 起始日期
  DateTime get startDate;
  @override

  /// 结束日期
  DateTime get endDate;
  @override
  @JsonKey(ignore: true)
  _$$WeekdayRangeImplCopyWith<_$WeekdayRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResourceModel _$ResourceModelFromJson(Map<String, dynamic> json) {
  return _ResourceModel.fromJson(json);
}

/// @nodoc
mixin _$ResourceModel {
  /// 资源类型
  @String2ResourceTypeJsonConverter()
  FileType get type => throw _privateConstructorUsedError;

  /// 资源链接
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceModelCopyWith<ResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceModelCopyWith<$Res> {
  factory $ResourceModelCopyWith(
          ResourceModel value, $Res Function(ResourceModel) then) =
      _$ResourceModelCopyWithImpl<$Res, ResourceModel>;
  @useResult
  $Res call({@String2ResourceTypeJsonConverter() FileType type, String url});
}

/// @nodoc
class _$ResourceModelCopyWithImpl<$Res, $Val extends ResourceModel>
    implements $ResourceModelCopyWith<$Res> {
  _$ResourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceModelImplCopyWith<$Res>
    implements $ResourceModelCopyWith<$Res> {
  factory _$$ResourceModelImplCopyWith(
          _$ResourceModelImpl value, $Res Function(_$ResourceModelImpl) then) =
      __$$ResourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@String2ResourceTypeJsonConverter() FileType type, String url});
}

/// @nodoc
class __$$ResourceModelImplCopyWithImpl<$Res>
    extends _$ResourceModelCopyWithImpl<$Res, _$ResourceModelImpl>
    implements _$$ResourceModelImplCopyWith<$Res> {
  __$$ResourceModelImplCopyWithImpl(
      _$ResourceModelImpl _value, $Res Function(_$ResourceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$ResourceModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceModelImpl extends _ResourceModel {
  const _$ResourceModelImpl(
      {@String2ResourceTypeJsonConverter() this.type = FileType.none,
      this.url = ''})
      : super._();

  factory _$ResourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceModelImplFromJson(json);

  /// 资源类型
  @override
  @JsonKey()
  @String2ResourceTypeJsonConverter()
  final FileType type;

  /// 资源链接
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'ResourceModel(type: $type, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceModelImplCopyWith<_$ResourceModelImpl> get copyWith =>
      __$$ResourceModelImplCopyWithImpl<_$ResourceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceModelImplToJson(
      this,
    );
  }
}

abstract class _ResourceModel extends ResourceModel {
  const factory _ResourceModel(
      {@String2ResourceTypeJsonConverter() final FileType type,
      final String url}) = _$ResourceModelImpl;
  const _ResourceModel._() : super._();

  factory _ResourceModel.fromJson(Map<String, dynamic> json) =
      _$ResourceModelImpl.fromJson;

  @override

  /// 资源类型
  @String2ResourceTypeJsonConverter()
  FileType get type;
  @override

  /// 资源链接
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ResourceModelImplCopyWith<_$ResourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResourceWrapper _$ResourceWrapperFromJson(Map<String, dynamic> json) {
  return _ResourceWrapper.fromJson(json);
}

/// @nodoc
mixin _$ResourceWrapper {
  /// 资源url
  String get url => throw _privateConstructorUsedError;

  /// 是否视频文件
  bool get isVideo => throw _privateConstructorUsedError;
  String get heroTag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceWrapperCopyWith<ResourceWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceWrapperCopyWith<$Res> {
  factory $ResourceWrapperCopyWith(
          ResourceWrapper value, $Res Function(ResourceWrapper) then) =
      _$ResourceWrapperCopyWithImpl<$Res, ResourceWrapper>;
  @useResult
  $Res call({String url, bool isVideo, String heroTag});
}

/// @nodoc
class _$ResourceWrapperCopyWithImpl<$Res, $Val extends ResourceWrapper>
    implements $ResourceWrapperCopyWith<$Res> {
  _$ResourceWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? isVideo = null,
    Object? heroTag = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceWrapperImplCopyWith<$Res>
    implements $ResourceWrapperCopyWith<$Res> {
  factory _$$ResourceWrapperImplCopyWith(_$ResourceWrapperImpl value,
          $Res Function(_$ResourceWrapperImpl) then) =
      __$$ResourceWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, bool isVideo, String heroTag});
}

/// @nodoc
class __$$ResourceWrapperImplCopyWithImpl<$Res>
    extends _$ResourceWrapperCopyWithImpl<$Res, _$ResourceWrapperImpl>
    implements _$$ResourceWrapperImplCopyWith<$Res> {
  __$$ResourceWrapperImplCopyWithImpl(
      _$ResourceWrapperImpl _value, $Res Function(_$ResourceWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? isVideo = null,
    Object? heroTag = null,
  }) {
    return _then(_$ResourceWrapperImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResourceWrapperImpl extends _ResourceWrapper {
  const _$ResourceWrapperImpl(
      {required this.url, required this.isVideo, required this.heroTag})
      : super._();

  factory _$ResourceWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResourceWrapperImplFromJson(json);

  /// 资源url
  @override
  final String url;

  /// 是否视频文件
  @override
  final bool isVideo;
  @override
  final String heroTag;

  @override
  String toString() {
    return 'ResourceWrapper(url: $url, isVideo: $isVideo, heroTag: $heroTag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceWrapperImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, isVideo, heroTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceWrapperImplCopyWith<_$ResourceWrapperImpl> get copyWith =>
      __$$ResourceWrapperImplCopyWithImpl<_$ResourceWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResourceWrapperImplToJson(
      this,
    );
  }
}

abstract class _ResourceWrapper extends ResourceWrapper {
  const factory _ResourceWrapper(
      {required final String url,
      required final bool isVideo,
      required final String heroTag}) = _$ResourceWrapperImpl;
  const _ResourceWrapper._() : super._();

  factory _ResourceWrapper.fromJson(Map<String, dynamic> json) =
      _$ResourceWrapperImpl.fromJson;

  @override

  /// 资源url
  String get url;
  @override

  /// 是否视频文件
  bool get isVideo;
  @override
  String get heroTag;
  @override
  @JsonKey(ignore: true)
  _$$ResourceWrapperImplCopyWith<_$ResourceWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactReq _$ContactReqFromJson(Map<String, dynamic> json) {
  return _ContactReq.fromJson(json);
}

/// @nodoc
mixin _$ContactReq {
  /// 宝贝姓名
  String? get studentName => throw _privateConstructorUsedError;

  /// 家长姓名
  String? get parentName => throw _privateConstructorUsedError;

  /// 联系电话
  String? get contactNumber => throw _privateConstructorUsedError;

  /// 生日
  String? get studentBirthDate => throw _privateConstructorUsedError;

  /// 固定值 online_delivery
  String? get channelLv1 => throw _privateConstructorUsedError;

  /// 固定值 bo_xiao_sheng
  String? get channelLv2 => throw _privateConstructorUsedError;

  /// 学校编码
  String? get schoolCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactReqCopyWith<ContactReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactReqCopyWith<$Res> {
  factory $ContactReqCopyWith(
          ContactReq value, $Res Function(ContactReq) then) =
      _$ContactReqCopyWithImpl<$Res, ContactReq>;
  @useResult
  $Res call(
      {String? studentName,
      String? parentName,
      String? contactNumber,
      String? studentBirthDate,
      String? channelLv1,
      String? channelLv2,
      String? schoolCode});
}

/// @nodoc
class _$ContactReqCopyWithImpl<$Res, $Val extends ContactReq>
    implements $ContactReqCopyWith<$Res> {
  _$ContactReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentName = freezed,
    Object? parentName = freezed,
    Object? contactNumber = freezed,
    Object? studentBirthDate = freezed,
    Object? channelLv1 = freezed,
    Object? channelLv2 = freezed,
    Object? schoolCode = freezed,
  }) {
    return _then(_value.copyWith(
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      studentBirthDate: freezed == studentBirthDate
          ? _value.studentBirthDate
          : studentBirthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      channelLv1: freezed == channelLv1
          ? _value.channelLv1
          : channelLv1 // ignore: cast_nullable_to_non_nullable
              as String?,
      channelLv2: freezed == channelLv2
          ? _value.channelLv2
          : channelLv2 // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactReqImplCopyWith<$Res>
    implements $ContactReqCopyWith<$Res> {
  factory _$$ContactReqImplCopyWith(
          _$ContactReqImpl value, $Res Function(_$ContactReqImpl) then) =
      __$$ContactReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? studentName,
      String? parentName,
      String? contactNumber,
      String? studentBirthDate,
      String? channelLv1,
      String? channelLv2,
      String? schoolCode});
}

/// @nodoc
class __$$ContactReqImplCopyWithImpl<$Res>
    extends _$ContactReqCopyWithImpl<$Res, _$ContactReqImpl>
    implements _$$ContactReqImplCopyWith<$Res> {
  __$$ContactReqImplCopyWithImpl(
      _$ContactReqImpl _value, $Res Function(_$ContactReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentName = freezed,
    Object? parentName = freezed,
    Object? contactNumber = freezed,
    Object? studentBirthDate = freezed,
    Object? channelLv1 = freezed,
    Object? channelLv2 = freezed,
    Object? schoolCode = freezed,
  }) {
    return _then(_$ContactReqImpl(
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: freezed == contactNumber
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      studentBirthDate: freezed == studentBirthDate
          ? _value.studentBirthDate
          : studentBirthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      channelLv1: freezed == channelLv1
          ? _value.channelLv1
          : channelLv1 // ignore: cast_nullable_to_non_nullable
              as String?,
      channelLv2: freezed == channelLv2
          ? _value.channelLv2
          : channelLv2 // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolCode: freezed == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactReqImpl extends _ContactReq {
  const _$ContactReqImpl(
      {this.studentName,
      this.parentName,
      this.contactNumber,
      this.studentBirthDate,
      required this.channelLv1,
      required this.channelLv2,
      this.schoolCode})
      : super._();

  factory _$ContactReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactReqImplFromJson(json);

  /// 宝贝姓名
  @override
  final String? studentName;

  /// 家长姓名
  @override
  final String? parentName;

  /// 联系电话
  @override
  final String? contactNumber;

  /// 生日
  @override
  final String? studentBirthDate;

  /// 固定值 online_delivery
  @override
  final String? channelLv1;

  /// 固定值 bo_xiao_sheng
  @override
  final String? channelLv2;

  /// 学校编码
  @override
  final String? schoolCode;

  @override
  String toString() {
    return 'ContactReq(studentName: $studentName, parentName: $parentName, contactNumber: $contactNumber, studentBirthDate: $studentBirthDate, channelLv1: $channelLv1, channelLv2: $channelLv2, schoolCode: $schoolCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactReqImpl &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName) &&
            (identical(other.contactNumber, contactNumber) ||
                other.contactNumber == contactNumber) &&
            (identical(other.studentBirthDate, studentBirthDate) ||
                other.studentBirthDate == studentBirthDate) &&
            (identical(other.channelLv1, channelLv1) ||
                other.channelLv1 == channelLv1) &&
            (identical(other.channelLv2, channelLv2) ||
                other.channelLv2 == channelLv2) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentName, parentName,
      contactNumber, studentBirthDate, channelLv1, channelLv2, schoolCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactReqImplCopyWith<_$ContactReqImpl> get copyWith =>
      __$$ContactReqImplCopyWithImpl<_$ContactReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactReqImplToJson(
      this,
    );
  }
}

abstract class _ContactReq extends ContactReq {
  const factory _ContactReq(
      {final String? studentName,
      final String? parentName,
      final String? contactNumber,
      final String? studentBirthDate,
      required final String? channelLv1,
      required final String? channelLv2,
      final String? schoolCode}) = _$ContactReqImpl;
  const _ContactReq._() : super._();

  factory _ContactReq.fromJson(Map<String, dynamic> json) =
      _$ContactReqImpl.fromJson;

  @override

  /// 宝贝姓名
  String? get studentName;
  @override

  /// 家长姓名
  String? get parentName;
  @override

  /// 联系电话
  String? get contactNumber;
  @override

  /// 生日
  String? get studentBirthDate;
  @override

  /// 固定值 online_delivery
  String? get channelLv1;
  @override

  /// 固定值 bo_xiao_sheng
  String? get channelLv2;
  @override

  /// 学校编码
  String? get schoolCode;
  @override
  @JsonKey(ignore: true)
  _$$ContactReqImplCopyWith<_$ContactReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) {
  return _AppVersionModel.fromJson(json);
}

/// @nodoc
mixin _$AppVersionModel {
  /// 安卓版本下载地址
  String get downloadUrl => throw _privateConstructorUsedError;

  /// 是否强制更新
  @JsonKey(name: 'forceUpdateFlag')
  bool get forceUpdate => throw _privateConstructorUsedError;

  /// 是否有更新的版本
  bool get hasUpdate => throw _privateConstructorUsedError;

  /// 后台最新版本号
  @JsonKey(name: 'latestVersionNo')
  int get latestVersion => throw _privateConstructorUsedError;

  /// 上传时间
  @DateTimeJsonConverter()
  DateTime? get uploadTime => throw _privateConstructorUsedError;

  /// 更新描述
  String get versionDesc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppVersionModelCopyWith<AppVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionModelCopyWith<$Res> {
  factory $AppVersionModelCopyWith(
          AppVersionModel value, $Res Function(AppVersionModel) then) =
      _$AppVersionModelCopyWithImpl<$Res, AppVersionModel>;
  @useResult
  $Res call(
      {String downloadUrl,
      @JsonKey(name: 'forceUpdateFlag') bool forceUpdate,
      bool hasUpdate,
      @JsonKey(name: 'latestVersionNo') int latestVersion,
      @DateTimeJsonConverter() DateTime? uploadTime,
      String versionDesc});
}

/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res, $Val extends AppVersionModel>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? forceUpdate = null,
    Object? hasUpdate = null,
    Object? latestVersion = null,
    Object? uploadTime = freezed,
    Object? versionDesc = null,
  }) {
    return _then(_value.copyWith(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      hasUpdate: null == hasUpdate
          ? _value.hasUpdate
          : hasUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as int,
      uploadTime: freezed == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      versionDesc: null == versionDesc
          ? _value.versionDesc
          : versionDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppVersionModelImplCopyWith<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  factory _$$AppVersionModelImplCopyWith(_$AppVersionModelImpl value,
          $Res Function(_$AppVersionModelImpl) then) =
      __$$AppVersionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String downloadUrl,
      @JsonKey(name: 'forceUpdateFlag') bool forceUpdate,
      bool hasUpdate,
      @JsonKey(name: 'latestVersionNo') int latestVersion,
      @DateTimeJsonConverter() DateTime? uploadTime,
      String versionDesc});
}

/// @nodoc
class __$$AppVersionModelImplCopyWithImpl<$Res>
    extends _$AppVersionModelCopyWithImpl<$Res, _$AppVersionModelImpl>
    implements _$$AppVersionModelImplCopyWith<$Res> {
  __$$AppVersionModelImplCopyWithImpl(
      _$AppVersionModelImpl _value, $Res Function(_$AppVersionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? forceUpdate = null,
    Object? hasUpdate = null,
    Object? latestVersion = null,
    Object? uploadTime = freezed,
    Object? versionDesc = null,
  }) {
    return _then(_$AppVersionModelImpl(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      forceUpdate: null == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      hasUpdate: null == hasUpdate
          ? _value.hasUpdate
          : hasUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      latestVersion: null == latestVersion
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as int,
      uploadTime: freezed == uploadTime
          ? _value.uploadTime
          : uploadTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      versionDesc: null == versionDesc
          ? _value.versionDesc
          : versionDesc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppVersionModelImpl extends _AppVersionModel {
  const _$AppVersionModelImpl(
      {this.downloadUrl = '',
      @JsonKey(name: 'forceUpdateFlag') this.forceUpdate = false,
      this.hasUpdate = false,
      @JsonKey(name: 'latestVersionNo') this.latestVersion = 0,
      @DateTimeJsonConverter() this.uploadTime,
      this.versionDesc = ''})
      : super._();

  factory _$AppVersionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppVersionModelImplFromJson(json);

  /// 安卓版本下载地址
  @override
  @JsonKey()
  final String downloadUrl;

  /// 是否强制更新
  @override
  @JsonKey(name: 'forceUpdateFlag')
  final bool forceUpdate;

  /// 是否有更新的版本
  @override
  @JsonKey()
  final bool hasUpdate;

  /// 后台最新版本号
  @override
  @JsonKey(name: 'latestVersionNo')
  final int latestVersion;

  /// 上传时间
  @override
  @DateTimeJsonConverter()
  final DateTime? uploadTime;

  /// 更新描述
  @override
  @JsonKey()
  final String versionDesc;

  @override
  String toString() {
    return 'AppVersionModel(downloadUrl: $downloadUrl, forceUpdate: $forceUpdate, hasUpdate: $hasUpdate, latestVersion: $latestVersion, uploadTime: $uploadTime, versionDesc: $versionDesc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionModelImpl &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.hasUpdate, hasUpdate) ||
                other.hasUpdate == hasUpdate) &&
            (identical(other.latestVersion, latestVersion) ||
                other.latestVersion == latestVersion) &&
            (identical(other.uploadTime, uploadTime) ||
                other.uploadTime == uploadTime) &&
            (identical(other.versionDesc, versionDesc) ||
                other.versionDesc == versionDesc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, downloadUrl, forceUpdate,
      hasUpdate, latestVersion, uploadTime, versionDesc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionModelImplCopyWith<_$AppVersionModelImpl> get copyWith =>
      __$$AppVersionModelImplCopyWithImpl<_$AppVersionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppVersionModelImplToJson(
      this,
    );
  }
}

abstract class _AppVersionModel extends AppVersionModel {
  const factory _AppVersionModel(
      {final String downloadUrl,
      @JsonKey(name: 'forceUpdateFlag') final bool forceUpdate,
      final bool hasUpdate,
      @JsonKey(name: 'latestVersionNo') final int latestVersion,
      @DateTimeJsonConverter() final DateTime? uploadTime,
      final String versionDesc}) = _$AppVersionModelImpl;
  const _AppVersionModel._() : super._();

  factory _AppVersionModel.fromJson(Map<String, dynamic> json) =
      _$AppVersionModelImpl.fromJson;

  @override

  /// 安卓版本下载地址
  String get downloadUrl;
  @override

  /// 是否强制更新
  @JsonKey(name: 'forceUpdateFlag')
  bool get forceUpdate;
  @override

  /// 是否有更新的版本
  bool get hasUpdate;
  @override

  /// 后台最新版本号
  @JsonKey(name: 'latestVersionNo')
  int get latestVersion;
  @override

  /// 上传时间
  @DateTimeJsonConverter()
  DateTime? get uploadTime;
  @override

  /// 更新描述
  String get versionDesc;
  @override
  @JsonKey(ignore: true)
  _$$AppVersionModelImplCopyWith<_$AppVersionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

H5NativeRoute _$H5NativeRouteFromJson(Map<String, dynamic> json) {
  return _H5NativeRoute.fromJson(json);
}

/// @nodoc
mixin _$H5NativeRoute {
  /// 原生路径
  @JsonKey(name: 'page')
  String? get route => throw _privateConstructorUsedError;

  /// 退出当前页面
  bool get exit => throw _privateConstructorUsedError;

  /// 页面参数
  Map<String, dynamic>? get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $H5NativeRouteCopyWith<H5NativeRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $H5NativeRouteCopyWith<$Res> {
  factory $H5NativeRouteCopyWith(
          H5NativeRoute value, $Res Function(H5NativeRoute) then) =
      _$H5NativeRouteCopyWithImpl<$Res, H5NativeRoute>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') String? route,
      bool exit,
      Map<String, dynamic>? parameters});
}

/// @nodoc
class _$H5NativeRouteCopyWithImpl<$Res, $Val extends H5NativeRoute>
    implements $H5NativeRouteCopyWith<$Res> {
  _$H5NativeRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
    Object? exit = null,
    Object? parameters = freezed,
  }) {
    return _then(_value.copyWith(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      exit: null == exit
          ? _value.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as bool,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$H5NativeRouteImplCopyWith<$Res>
    implements $H5NativeRouteCopyWith<$Res> {
  factory _$$H5NativeRouteImplCopyWith(
          _$H5NativeRouteImpl value, $Res Function(_$H5NativeRouteImpl) then) =
      __$$H5NativeRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') String? route,
      bool exit,
      Map<String, dynamic>? parameters});
}

/// @nodoc
class __$$H5NativeRouteImplCopyWithImpl<$Res>
    extends _$H5NativeRouteCopyWithImpl<$Res, _$H5NativeRouteImpl>
    implements _$$H5NativeRouteImplCopyWith<$Res> {
  __$$H5NativeRouteImplCopyWithImpl(
      _$H5NativeRouteImpl _value, $Res Function(_$H5NativeRouteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
    Object? exit = null,
    Object? parameters = freezed,
  }) {
    return _then(_$H5NativeRouteImpl(
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      exit: null == exit
          ? _value.exit
          : exit // ignore: cast_nullable_to_non_nullable
              as bool,
      parameters: freezed == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$H5NativeRouteImpl extends _H5NativeRoute {
  const _$H5NativeRouteImpl(
      {@JsonKey(name: 'page') this.route,
      this.exit = false,
      final Map<String, dynamic>? parameters})
      : _parameters = parameters,
        super._();

  factory _$H5NativeRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$H5NativeRouteImplFromJson(json);

  /// 原生路径
  @override
  @JsonKey(name: 'page')
  final String? route;

  /// 退出当前页面
  @override
  @JsonKey()
  final bool exit;

  /// 页面参数
  final Map<String, dynamic>? _parameters;

  /// 页面参数
  @override
  Map<String, dynamic>? get parameters {
    final value = _parameters;
    if (value == null) return null;
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'H5NativeRoute(route: $route, exit: $exit, parameters: $parameters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$H5NativeRouteImpl &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.exit, exit) || other.exit == exit) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, route, exit,
      const DeepCollectionEquality().hash(_parameters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$H5NativeRouteImplCopyWith<_$H5NativeRouteImpl> get copyWith =>
      __$$H5NativeRouteImplCopyWithImpl<_$H5NativeRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$H5NativeRouteImplToJson(
      this,
    );
  }
}

abstract class _H5NativeRoute extends H5NativeRoute {
  const factory _H5NativeRoute(
      {@JsonKey(name: 'page') final String? route,
      final bool exit,
      final Map<String, dynamic>? parameters}) = _$H5NativeRouteImpl;
  const _H5NativeRoute._() : super._();

  factory _H5NativeRoute.fromJson(Map<String, dynamic> json) =
      _$H5NativeRouteImpl.fromJson;

  @override

  /// 原生路径
  @JsonKey(name: 'page')
  String? get route;
  @override

  /// 退出当前页面
  bool get exit;
  @override

  /// 页面参数
  Map<String, dynamic>? get parameters;
  @override
  @JsonKey(ignore: true)
  _$$H5NativeRouteImplCopyWith<_$H5NativeRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TencentCloudCredentials _$TencentCloudCredentialsFromJson(
    Map<String, dynamic> json) {
  return _TencentCloudCredentials.fromJson(json);
}

/// @nodoc
mixin _$TencentCloudCredentials {
  /// 临时密钥id
  String? get tmpSecretId => throw _privateConstructorUsedError;

  /// 临时密钥key
  String? get tmpSecretKey => throw _privateConstructorUsedError;

  /// 临时密钥token
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TencentCloudCredentialsCopyWith<TencentCloudCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TencentCloudCredentialsCopyWith<$Res> {
  factory $TencentCloudCredentialsCopyWith(TencentCloudCredentials value,
          $Res Function(TencentCloudCredentials) then) =
      _$TencentCloudCredentialsCopyWithImpl<$Res, TencentCloudCredentials>;
  @useResult
  $Res call({String? tmpSecretId, String? tmpSecretKey, String? token});
}

/// @nodoc
class _$TencentCloudCredentialsCopyWithImpl<$Res,
        $Val extends TencentCloudCredentials>
    implements $TencentCloudCredentialsCopyWith<$Res> {
  _$TencentCloudCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tmpSecretId = freezed,
    Object? tmpSecretKey = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      tmpSecretId: freezed == tmpSecretId
          ? _value.tmpSecretId
          : tmpSecretId // ignore: cast_nullable_to_non_nullable
              as String?,
      tmpSecretKey: freezed == tmpSecretKey
          ? _value.tmpSecretKey
          : tmpSecretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TencentCloudCredentialsImplCopyWith<$Res>
    implements $TencentCloudCredentialsCopyWith<$Res> {
  factory _$$TencentCloudCredentialsImplCopyWith(
          _$TencentCloudCredentialsImpl value,
          $Res Function(_$TencentCloudCredentialsImpl) then) =
      __$$TencentCloudCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tmpSecretId, String? tmpSecretKey, String? token});
}

/// @nodoc
class __$$TencentCloudCredentialsImplCopyWithImpl<$Res>
    extends _$TencentCloudCredentialsCopyWithImpl<$Res,
        _$TencentCloudCredentialsImpl>
    implements _$$TencentCloudCredentialsImplCopyWith<$Res> {
  __$$TencentCloudCredentialsImplCopyWithImpl(
      _$TencentCloudCredentialsImpl _value,
      $Res Function(_$TencentCloudCredentialsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tmpSecretId = freezed,
    Object? tmpSecretKey = freezed,
    Object? token = freezed,
  }) {
    return _then(_$TencentCloudCredentialsImpl(
      tmpSecretId: freezed == tmpSecretId
          ? _value.tmpSecretId
          : tmpSecretId // ignore: cast_nullable_to_non_nullable
              as String?,
      tmpSecretKey: freezed == tmpSecretKey
          ? _value.tmpSecretKey
          : tmpSecretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TencentCloudCredentialsImpl extends _TencentCloudCredentials {
  const _$TencentCloudCredentialsImpl(
      {this.tmpSecretId, this.tmpSecretKey, this.token})
      : super._();

  factory _$TencentCloudCredentialsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TencentCloudCredentialsImplFromJson(json);

  /// 临时密钥id
  @override
  final String? tmpSecretId;

  /// 临时密钥key
  @override
  final String? tmpSecretKey;

  /// 临时密钥token
  @override
  final String? token;

  @override
  String toString() {
    return 'TencentCloudCredentials(tmpSecretId: $tmpSecretId, tmpSecretKey: $tmpSecretKey, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TencentCloudCredentialsImpl &&
            (identical(other.tmpSecretId, tmpSecretId) ||
                other.tmpSecretId == tmpSecretId) &&
            (identical(other.tmpSecretKey, tmpSecretKey) ||
                other.tmpSecretKey == tmpSecretKey) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tmpSecretId, tmpSecretKey, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TencentCloudCredentialsImplCopyWith<_$TencentCloudCredentialsImpl>
      get copyWith => __$$TencentCloudCredentialsImplCopyWithImpl<
          _$TencentCloudCredentialsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TencentCloudCredentialsImplToJson(
      this,
    );
  }
}

abstract class _TencentCloudCredentials extends TencentCloudCredentials {
  const factory _TencentCloudCredentials(
      {final String? tmpSecretId,
      final String? tmpSecretKey,
      final String? token}) = _$TencentCloudCredentialsImpl;
  const _TencentCloudCredentials._() : super._();

  factory _TencentCloudCredentials.fromJson(Map<String, dynamic> json) =
      _$TencentCloudCredentialsImpl.fromJson;

  @override

  /// 临时密钥id
  String? get tmpSecretId;
  @override

  /// 临时密钥key
  String? get tmpSecretKey;
  @override

  /// 临时密钥token
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$TencentCloudCredentialsImplCopyWith<_$TencentCloudCredentialsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TencentCloudTempToken _$TencentCloudTempTokenFromJson(
    Map<String, dynamic> json) {
  return _TencentCloudTempToken.fromJson(json);
}

/// @nodoc
mixin _$TencentCloudTempToken {
  /// 到期时间字符串
  DateTime? get expiration => throw _privateConstructorUsedError;

  /// 到期时间
  int get expiredTime => throw _privateConstructorUsedError;

  /// 请求id
  String? get requestId => throw _privateConstructorUsedError;

  /// 密钥
  TencentCloudCredentials? get credentials =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TencentCloudTempTokenCopyWith<TencentCloudTempToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TencentCloudTempTokenCopyWith<$Res> {
  factory $TencentCloudTempTokenCopyWith(TencentCloudTempToken value,
          $Res Function(TencentCloudTempToken) then) =
      _$TencentCloudTempTokenCopyWithImpl<$Res, TencentCloudTempToken>;
  @useResult
  $Res call(
      {DateTime? expiration,
      int expiredTime,
      String? requestId,
      TencentCloudCredentials? credentials});

  $TencentCloudCredentialsCopyWith<$Res>? get credentials;
}

/// @nodoc
class _$TencentCloudTempTokenCopyWithImpl<$Res,
        $Val extends TencentCloudTempToken>
    implements $TencentCloudTempTokenCopyWith<$Res> {
  _$TencentCloudTempTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiration = freezed,
    Object? expiredTime = null,
    Object? requestId = freezed,
    Object? credentials = freezed,
  }) {
    return _then(_value.copyWith(
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredTime: null == expiredTime
          ? _value.expiredTime
          : expiredTime // ignore: cast_nullable_to_non_nullable
              as int,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentials: freezed == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as TencentCloudCredentials?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TencentCloudCredentialsCopyWith<$Res>? get credentials {
    if (_value.credentials == null) {
      return null;
    }

    return $TencentCloudCredentialsCopyWith<$Res>(_value.credentials!, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TencentCloudTempTokenImplCopyWith<$Res>
    implements $TencentCloudTempTokenCopyWith<$Res> {
  factory _$$TencentCloudTempTokenImplCopyWith(
          _$TencentCloudTempTokenImpl value,
          $Res Function(_$TencentCloudTempTokenImpl) then) =
      __$$TencentCloudTempTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? expiration,
      int expiredTime,
      String? requestId,
      TencentCloudCredentials? credentials});

  @override
  $TencentCloudCredentialsCopyWith<$Res>? get credentials;
}

/// @nodoc
class __$$TencentCloudTempTokenImplCopyWithImpl<$Res>
    extends _$TencentCloudTempTokenCopyWithImpl<$Res,
        _$TencentCloudTempTokenImpl>
    implements _$$TencentCloudTempTokenImplCopyWith<$Res> {
  __$$TencentCloudTempTokenImplCopyWithImpl(_$TencentCloudTempTokenImpl _value,
      $Res Function(_$TencentCloudTempTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expiration = freezed,
    Object? expiredTime = null,
    Object? requestId = freezed,
    Object? credentials = freezed,
  }) {
    return _then(_$TencentCloudTempTokenImpl(
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredTime: null == expiredTime
          ? _value.expiredTime
          : expiredTime // ignore: cast_nullable_to_non_nullable
              as int,
      requestId: freezed == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String?,
      credentials: freezed == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as TencentCloudCredentials?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TencentCloudTempTokenImpl extends _TencentCloudTempToken {
  const _$TencentCloudTempTokenImpl(
      {this.expiration, this.expiredTime = 0, this.requestId, this.credentials})
      : super._();

  factory _$TencentCloudTempTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TencentCloudTempTokenImplFromJson(json);

  /// 到期时间字符串
  @override
  final DateTime? expiration;

  /// 到期时间
  @override
  @JsonKey()
  final int expiredTime;

  /// 请求id
  @override
  final String? requestId;

  /// 密钥
  @override
  final TencentCloudCredentials? credentials;

  @override
  String toString() {
    return 'TencentCloudTempToken(expiration: $expiration, expiredTime: $expiredTime, requestId: $requestId, credentials: $credentials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TencentCloudTempTokenImpl &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.expiredTime, expiredTime) ||
                other.expiredTime == expiredTime) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, expiration, expiredTime, requestId, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TencentCloudTempTokenImplCopyWith<_$TencentCloudTempTokenImpl>
      get copyWith => __$$TencentCloudTempTokenImplCopyWithImpl<
          _$TencentCloudTempTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TencentCloudTempTokenImplToJson(
      this,
    );
  }
}

abstract class _TencentCloudTempToken extends TencentCloudTempToken {
  const factory _TencentCloudTempToken(
          {final DateTime? expiration,
          final int expiredTime,
          final String? requestId,
          final TencentCloudCredentials? credentials}) =
      _$TencentCloudTempTokenImpl;
  const _TencentCloudTempToken._() : super._();

  factory _TencentCloudTempToken.fromJson(Map<String, dynamic> json) =
      _$TencentCloudTempTokenImpl.fromJson;

  @override

  /// 到期时间字符串
  DateTime? get expiration;
  @override

  /// 到期时间
  int get expiredTime;
  @override

  /// 请求id
  String? get requestId;
  @override

  /// 密钥
  TencentCloudCredentials? get credentials;
  @override
  @JsonKey(ignore: true)
  _$$TencentCloudTempTokenImplCopyWith<_$TencentCloudTempTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}
