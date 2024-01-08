// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bsl_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmptyObjectData _$EmptyObjectDataFromJson(Map<String, dynamic> json) {
  return _EmptyObjectData.fromJson(json);
}

/// @nodoc
mixin _$EmptyObjectData {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyObjectDataCopyWith<$Res> {
  factory $EmptyObjectDataCopyWith(
          EmptyObjectData value, $Res Function(EmptyObjectData) then) =
      _$EmptyObjectDataCopyWithImpl<$Res, EmptyObjectData>;
}

/// @nodoc
class _$EmptyObjectDataCopyWithImpl<$Res, $Val extends EmptyObjectData>
    implements $EmptyObjectDataCopyWith<$Res> {
  _$EmptyObjectDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmptyObjectDataImplCopyWith<$Res> {
  factory _$$EmptyObjectDataImplCopyWith(_$EmptyObjectDataImpl value,
          $Res Function(_$EmptyObjectDataImpl) then) =
      __$$EmptyObjectDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyObjectDataImplCopyWithImpl<$Res>
    extends _$EmptyObjectDataCopyWithImpl<$Res, _$EmptyObjectDataImpl>
    implements _$$EmptyObjectDataImplCopyWith<$Res> {
  __$$EmptyObjectDataImplCopyWithImpl(
      _$EmptyObjectDataImpl _value, $Res Function(_$EmptyObjectDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$EmptyObjectDataImpl implements _EmptyObjectData {
  const _$EmptyObjectDataImpl();

  factory _$EmptyObjectDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmptyObjectDataImplFromJson(json);

  @override
  String toString() {
    return 'EmptyObjectData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyObjectDataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyObjectDataImplToJson(
      this,
    );
  }
}

abstract class _EmptyObjectData implements EmptyObjectData {
  const factory _EmptyObjectData() = _$EmptyObjectDataImpl;

  factory _EmptyObjectData.fromJson(Map<String, dynamic> json) =
      _$EmptyObjectDataImpl.fromJson;
}

BslResponse<T> _$BslResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return BslResponseData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BslResponse<T> {
  int get code => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BslResponseCopyWith<T, BslResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BslResponseCopyWith<T, $Res> {
  factory $BslResponseCopyWith(
          BslResponse<T> value, $Res Function(BslResponse<T>) then) =
      _$BslResponseCopyWithImpl<T, $Res, BslResponse<T>>;
  @useResult
  $Res call(
      {int code, T? data, T? result, @JsonKey(defaultValue: '') String msg});
}

/// @nodoc
class _$BslResponseCopyWithImpl<T, $Res, $Val extends BslResponse<T>>
    implements $BslResponseCopyWith<T, $Res> {
  _$BslResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = freezed,
    Object? result = freezed,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BslResponseDataImplCopyWith<T, $Res>
    implements $BslResponseCopyWith<T, $Res> {
  factory _$$BslResponseDataImplCopyWith(_$BslResponseDataImpl<T> value,
          $Res Function(_$BslResponseDataImpl<T>) then) =
      __$$BslResponseDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int code, T? data, T? result, @JsonKey(defaultValue: '') String msg});
}

/// @nodoc
class __$$BslResponseDataImplCopyWithImpl<T, $Res>
    extends _$BslResponseCopyWithImpl<T, $Res, _$BslResponseDataImpl<T>>
    implements _$$BslResponseDataImplCopyWith<T, $Res> {
  __$$BslResponseDataImplCopyWithImpl(_$BslResponseDataImpl<T> _value,
      $Res Function(_$BslResponseDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? data = freezed,
    Object? result = freezed,
    Object? msg = null,
  }) {
    return _then(_$BslResponseDataImpl<T>(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BslResponseDataImpl<T> extends BslResponseData<T> {
  const _$BslResponseDataImpl(
      this.code, this.data, this.result, @JsonKey(defaultValue: '') this.msg)
      : super._();

  factory _$BslResponseDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BslResponseDataImplFromJson(json, fromJsonT);

  @override
  final int code;
  @override
  final T? data;
  @override
  final T? result;
  @override
  @JsonKey(defaultValue: '')
  final String msg;

  @override
  String toString() {
    return 'BslResponse<$T>(code: $code, data: $data, result: $result, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BslResponseDataImpl<T> &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(result),
      msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BslResponseDataImplCopyWith<T, _$BslResponseDataImpl<T>> get copyWith =>
      __$$BslResponseDataImplCopyWithImpl<T, _$BslResponseDataImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BslResponseDataImplToJson<T>(this, toJsonT);
  }
}

abstract class BslResponseData<T> extends BslResponse<T> {
  const factory BslResponseData(final int code, final T? data, final T? result,
      @JsonKey(defaultValue: '') final String msg) = _$BslResponseDataImpl<T>;
  const BslResponseData._() : super._();

  factory BslResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BslResponseDataImpl<T>.fromJson;

  @override
  int get code;
  @override
  T? get data;
  @override
  T? get result;
  @override
  @JsonKey(defaultValue: '')
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$BslResponseDataImplCopyWith<T, _$BslResponseDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

BslPageResponse<T> _$BslPageResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return BslPageResponseData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BslPageResponse<T> {
  /// 总数量
  int get total => throw _privateConstructorUsedError;

  /// 总页数
  int get pages => throw _privateConstructorUsedError;

  /// 当前页大小
  int get size => throw _privateConstructorUsedError;

  /// 当前页数
  int get current => throw _privateConstructorUsedError;
  T? get records => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BslPageResponseCopyWith<T, BslPageResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BslPageResponseCopyWith<T, $Res> {
  factory $BslPageResponseCopyWith(
          BslPageResponse<T> value, $Res Function(BslPageResponse<T>) then) =
      _$BslPageResponseCopyWithImpl<T, $Res, BslPageResponse<T>>;
  @useResult
  $Res call(
      {int total,
      int pages,
      int size,
      int current,
      T? records,
      @JsonKey(defaultValue: '') String msg});
}

/// @nodoc
class _$BslPageResponseCopyWithImpl<T, $Res, $Val extends BslPageResponse<T>>
    implements $BslPageResponseCopyWith<T, $Res> {
  _$BslPageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? pages = null,
    Object? size = null,
    Object? current = null,
    Object? records = freezed,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      records: freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as T?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BslPageResponseDataImplCopyWith<T, $Res>
    implements $BslPageResponseCopyWith<T, $Res> {
  factory _$$BslPageResponseDataImplCopyWith(_$BslPageResponseDataImpl<T> value,
          $Res Function(_$BslPageResponseDataImpl<T>) then) =
      __$$BslPageResponseDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int pages,
      int size,
      int current,
      T? records,
      @JsonKey(defaultValue: '') String msg});
}

/// @nodoc
class __$$BslPageResponseDataImplCopyWithImpl<T, $Res>
    extends _$BslPageResponseCopyWithImpl<T, $Res, _$BslPageResponseDataImpl<T>>
    implements _$$BslPageResponseDataImplCopyWith<T, $Res> {
  __$$BslPageResponseDataImplCopyWithImpl(_$BslPageResponseDataImpl<T> _value,
      $Res Function(_$BslPageResponseDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? pages = null,
    Object? size = null,
    Object? current = null,
    Object? records = freezed,
    Object? msg = null,
  }) {
    return _then(_$BslPageResponseDataImpl<T>(
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as T?,
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BslPageResponseDataImpl<T> extends BslPageResponseData<T> {
  const _$BslPageResponseDataImpl(this.total, this.pages, this.size,
      this.current, this.records, @JsonKey(defaultValue: '') this.msg)
      : super._();

  factory _$BslPageResponseDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BslPageResponseDataImplFromJson(json, fromJsonT);

  /// 总数量
  @override
  final int total;

  /// 总页数
  @override
  final int pages;

  /// 当前页大小
  @override
  final int size;

  /// 当前页数
  @override
  final int current;
  @override
  final T? records;
  @override
  @JsonKey(defaultValue: '')
  final String msg;

  @override
  String toString() {
    return 'BslPageResponse<$T>(total: $total, pages: $pages, size: $size, current: $current, records: $records, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BslPageResponseDataImpl<T> &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other.records, records) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, pages, size, current,
      const DeepCollectionEquality().hash(records), msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BslPageResponseDataImplCopyWith<T, _$BslPageResponseDataImpl<T>>
      get copyWith => __$$BslPageResponseDataImplCopyWithImpl<T,
          _$BslPageResponseDataImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BslPageResponseDataImplToJson<T>(this, toJsonT);
  }
}

abstract class BslPageResponseData<T> extends BslPageResponse<T> {
  const factory BslPageResponseData(
          final int total,
          final int pages,
          final int size,
          final int current,
          final T? records,
          @JsonKey(defaultValue: '') final String msg) =
      _$BslPageResponseDataImpl<T>;
  const BslPageResponseData._() : super._();

  factory BslPageResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BslPageResponseDataImpl<T>.fromJson;

  @override

  /// 总数量
  int get total;
  @override

  /// 总页数
  int get pages;
  @override

  /// 当前页大小
  int get size;
  @override

  /// 当前页数
  int get current;
  @override
  T? get records;
  @override
  @JsonKey(defaultValue: '')
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$BslPageResponseDataImplCopyWith<T, _$BslPageResponseDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

UploadResponse _$UploadResponseFromJson(Map<String, dynamic> json) {
  return UploadResponseData.fromJson(json);
}

/// @nodoc
mixin _$UploadResponse {
  int get code => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get msg => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get newFileName => throw _privateConstructorUsedError;
  String get originalFilename => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadResponseCopyWith<UploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadResponseCopyWith<$Res> {
  factory $UploadResponseCopyWith(
          UploadResponse value, $Res Function(UploadResponse) then) =
      _$UploadResponseCopyWithImpl<$Res, UploadResponse>;
  @useResult
  $Res call(
      {int code,
      @JsonKey(defaultValue: '') String msg,
      String fileName,
      String newFileName,
      String originalFilename,
      String url});
}

/// @nodoc
class _$UploadResponseCopyWithImpl<$Res, $Val extends UploadResponse>
    implements $UploadResponseCopyWith<$Res> {
  _$UploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? fileName = null,
    Object? newFileName = null,
    Object? originalFilename = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      newFileName: null == newFileName
          ? _value.newFileName
          : newFileName // ignore: cast_nullable_to_non_nullable
              as String,
      originalFilename: null == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadResponseDataImplCopyWith<$Res>
    implements $UploadResponseCopyWith<$Res> {
  factory _$$UploadResponseDataImplCopyWith(_$UploadResponseDataImpl value,
          $Res Function(_$UploadResponseDataImpl) then) =
      __$$UploadResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      @JsonKey(defaultValue: '') String msg,
      String fileName,
      String newFileName,
      String originalFilename,
      String url});
}

/// @nodoc
class __$$UploadResponseDataImplCopyWithImpl<$Res>
    extends _$UploadResponseCopyWithImpl<$Res, _$UploadResponseDataImpl>
    implements _$$UploadResponseDataImplCopyWith<$Res> {
  __$$UploadResponseDataImplCopyWithImpl(_$UploadResponseDataImpl _value,
      $Res Function(_$UploadResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? fileName = null,
    Object? newFileName = null,
    Object? originalFilename = null,
    Object? url = null,
  }) {
    return _then(_$UploadResponseDataImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == newFileName
          ? _value.newFileName
          : newFileName // ignore: cast_nullable_to_non_nullable
              as String,
      null == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String,
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadResponseDataImpl extends UploadResponseData {
  const _$UploadResponseDataImpl(this.code, @JsonKey(defaultValue: '') this.msg,
      this.fileName, this.newFileName, this.originalFilename, this.url)
      : super._();

  factory _$UploadResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadResponseDataImplFromJson(json);

  @override
  final int code;
  @override
  @JsonKey(defaultValue: '')
  final String msg;
  @override
  final String fileName;
  @override
  final String newFileName;
  @override
  final String originalFilename;
  @override
  final String url;

  @override
  String toString() {
    return 'UploadResponse(code: $code, msg: $msg, fileName: $fileName, newFileName: $newFileName, originalFilename: $originalFilename, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadResponseDataImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.newFileName, newFileName) ||
                other.newFileName == newFileName) &&
            (identical(other.originalFilename, originalFilename) ||
                other.originalFilename == originalFilename) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, msg, fileName, newFileName, originalFilename, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadResponseDataImplCopyWith<_$UploadResponseDataImpl> get copyWith =>
      __$$UploadResponseDataImplCopyWithImpl<_$UploadResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadResponseDataImplToJson(
      this,
    );
  }
}

abstract class UploadResponseData extends UploadResponse {
  const factory UploadResponseData(
      final int code,
      @JsonKey(defaultValue: '') final String msg,
      final String fileName,
      final String newFileName,
      final String originalFilename,
      final String url) = _$UploadResponseDataImpl;
  const UploadResponseData._() : super._();

  factory UploadResponseData.fromJson(Map<String, dynamic> json) =
      _$UploadResponseDataImpl.fromJson;

  @override
  int get code;
  @override
  @JsonKey(defaultValue: '')
  String get msg;
  @override
  String get fileName;
  @override
  String get newFileName;
  @override
  String get originalFilename;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$UploadResponseDataImplCopyWith<_$UploadResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
