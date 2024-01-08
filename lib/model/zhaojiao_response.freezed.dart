// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zhaojiao_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZhaoJiaoRequest<T> _$ZhaoJiaoRequestFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return ZhaoJiaoRequestData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ZhaoJiaoRequest<T> {
  /// 当前页大小
  int get size => throw _privateConstructorUsedError;

  /// 当前页数
  int get current => throw _privateConstructorUsedError;
  T? get queryData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZhaoJiaoRequestCopyWith<T, ZhaoJiaoRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZhaoJiaoRequestCopyWith<T, $Res> {
  factory $ZhaoJiaoRequestCopyWith(
          ZhaoJiaoRequest<T> value, $Res Function(ZhaoJiaoRequest<T>) then) =
      _$ZhaoJiaoRequestCopyWithImpl<T, $Res, ZhaoJiaoRequest<T>>;
  @useResult
  $Res call({int size, int current, T? queryData});
}

/// @nodoc
class _$ZhaoJiaoRequestCopyWithImpl<T, $Res, $Val extends ZhaoJiaoRequest<T>>
    implements $ZhaoJiaoRequestCopyWith<T, $Res> {
  _$ZhaoJiaoRequestCopyWithImpl(this._value, this._then);

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
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZhaoJiaoRequestDataImplCopyWith<T, $Res>
    implements $ZhaoJiaoRequestCopyWith<T, $Res> {
  factory _$$ZhaoJiaoRequestDataImplCopyWith(_$ZhaoJiaoRequestDataImpl<T> value,
          $Res Function(_$ZhaoJiaoRequestDataImpl<T>) then) =
      __$$ZhaoJiaoRequestDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int size, int current, T? queryData});
}

/// @nodoc
class __$$ZhaoJiaoRequestDataImplCopyWithImpl<T, $Res>
    extends _$ZhaoJiaoRequestCopyWithImpl<T, $Res, _$ZhaoJiaoRequestDataImpl<T>>
    implements _$$ZhaoJiaoRequestDataImplCopyWith<T, $Res> {
  __$$ZhaoJiaoRequestDataImplCopyWithImpl(_$ZhaoJiaoRequestDataImpl<T> _value,
      $Res Function(_$ZhaoJiaoRequestDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? current = null,
    Object? queryData = freezed,
  }) {
    return _then(_$ZhaoJiaoRequestDataImpl<T>(
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
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ZhaoJiaoRequestDataImpl<T> extends ZhaoJiaoRequestData<T> {
  const _$ZhaoJiaoRequestDataImpl(
      {required this.size, required this.current, this.queryData})
      : super._();

  factory _$ZhaoJiaoRequestDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ZhaoJiaoRequestDataImplFromJson(json, fromJsonT);

  /// 当前页大小
  @override
  final int size;

  /// 当前页数
  @override
  final int current;
  @override
  final T? queryData;

  @override
  String toString() {
    return 'ZhaoJiaoRequest<$T>(size: $size, current: $current, queryData: $queryData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZhaoJiaoRequestDataImpl<T> &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other.queryData, queryData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size, current,
      const DeepCollectionEquality().hash(queryData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZhaoJiaoRequestDataImplCopyWith<T, _$ZhaoJiaoRequestDataImpl<T>>
      get copyWith => __$$ZhaoJiaoRequestDataImplCopyWithImpl<T,
          _$ZhaoJiaoRequestDataImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ZhaoJiaoRequestDataImplToJson<T>(this, toJsonT);
  }
}

abstract class ZhaoJiaoRequestData<T> extends ZhaoJiaoRequest<T> {
  const factory ZhaoJiaoRequestData(
      {required final int size,
      required final int current,
      final T? queryData}) = _$ZhaoJiaoRequestDataImpl<T>;
  const ZhaoJiaoRequestData._() : super._();

  factory ZhaoJiaoRequestData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ZhaoJiaoRequestDataImpl<T>.fromJson;

  @override

  /// 当前页大小
  int get size;
  @override

  /// 当前页数
  int get current;
  @override
  T? get queryData;
  @override
  @JsonKey(ignore: true)
  _$$ZhaoJiaoRequestDataImplCopyWith<T, _$ZhaoJiaoRequestDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

ZhaoJiaoResponseHead _$ZhaoJiaoResponseHeadFromJson(Map<String, dynamic> json) {
  return _ZhaoJiaoResponseHead.fromJson(json);
}

/// @nodoc
mixin _$ZhaoJiaoResponseHead {
  /// 响应码
  String get respCode => throw _privateConstructorUsedError;

  /// 响应描述
  String get respDesc => throw _privateConstructorUsedError;

  /// 响应状态
  String get respStatus => throw _privateConstructorUsedError;

  /// 是否成功
  bool get success => throw _privateConstructorUsedError;

  /// 跟踪id
  String? get traceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZhaoJiaoResponseHeadCopyWith<ZhaoJiaoResponseHead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZhaoJiaoResponseHeadCopyWith<$Res> {
  factory $ZhaoJiaoResponseHeadCopyWith(ZhaoJiaoResponseHead value,
          $Res Function(ZhaoJiaoResponseHead) then) =
      _$ZhaoJiaoResponseHeadCopyWithImpl<$Res, ZhaoJiaoResponseHead>;
  @useResult
  $Res call(
      {String respCode,
      String respDesc,
      String respStatus,
      bool success,
      String? traceId});
}

/// @nodoc
class _$ZhaoJiaoResponseHeadCopyWithImpl<$Res,
        $Val extends ZhaoJiaoResponseHead>
    implements $ZhaoJiaoResponseHeadCopyWith<$Res> {
  _$ZhaoJiaoResponseHeadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? respCode = null,
    Object? respDesc = null,
    Object? respStatus = null,
    Object? success = null,
    Object? traceId = freezed,
  }) {
    return _then(_value.copyWith(
      respCode: null == respCode
          ? _value.respCode
          : respCode // ignore: cast_nullable_to_non_nullable
              as String,
      respDesc: null == respDesc
          ? _value.respDesc
          : respDesc // ignore: cast_nullable_to_non_nullable
              as String,
      respStatus: null == respStatus
          ? _value.respStatus
          : respStatus // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      traceId: freezed == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZhaoJiaoResponseHeadImplCopyWith<$Res>
    implements $ZhaoJiaoResponseHeadCopyWith<$Res> {
  factory _$$ZhaoJiaoResponseHeadImplCopyWith(_$ZhaoJiaoResponseHeadImpl value,
          $Res Function(_$ZhaoJiaoResponseHeadImpl) then) =
      __$$ZhaoJiaoResponseHeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String respCode,
      String respDesc,
      String respStatus,
      bool success,
      String? traceId});
}

/// @nodoc
class __$$ZhaoJiaoResponseHeadImplCopyWithImpl<$Res>
    extends _$ZhaoJiaoResponseHeadCopyWithImpl<$Res, _$ZhaoJiaoResponseHeadImpl>
    implements _$$ZhaoJiaoResponseHeadImplCopyWith<$Res> {
  __$$ZhaoJiaoResponseHeadImplCopyWithImpl(_$ZhaoJiaoResponseHeadImpl _value,
      $Res Function(_$ZhaoJiaoResponseHeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? respCode = null,
    Object? respDesc = null,
    Object? respStatus = null,
    Object? success = null,
    Object? traceId = freezed,
  }) {
    return _then(_$ZhaoJiaoResponseHeadImpl(
      respCode: null == respCode
          ? _value.respCode
          : respCode // ignore: cast_nullable_to_non_nullable
              as String,
      respDesc: null == respDesc
          ? _value.respDesc
          : respDesc // ignore: cast_nullable_to_non_nullable
              as String,
      respStatus: null == respStatus
          ? _value.respStatus
          : respStatus // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      traceId: freezed == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZhaoJiaoResponseHeadImpl extends _ZhaoJiaoResponseHead {
  const _$ZhaoJiaoResponseHeadImpl(
      {this.respCode = '',
      this.respDesc = '',
      this.respStatus = '01',
      this.success = false,
      this.traceId})
      : super._();

  factory _$ZhaoJiaoResponseHeadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZhaoJiaoResponseHeadImplFromJson(json);

  /// 响应码
  @override
  @JsonKey()
  final String respCode;

  /// 响应描述
  @override
  @JsonKey()
  final String respDesc;

  /// 响应状态
  @override
  @JsonKey()
  final String respStatus;

  /// 是否成功
  @override
  @JsonKey()
  final bool success;

  /// 跟踪id
  @override
  final String? traceId;

  @override
  String toString() {
    return 'ZhaoJiaoResponseHead(respCode: $respCode, respDesc: $respDesc, respStatus: $respStatus, success: $success, traceId: $traceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZhaoJiaoResponseHeadImpl &&
            (identical(other.respCode, respCode) ||
                other.respCode == respCode) &&
            (identical(other.respDesc, respDesc) ||
                other.respDesc == respDesc) &&
            (identical(other.respStatus, respStatus) ||
                other.respStatus == respStatus) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.traceId, traceId) || other.traceId == traceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, respCode, respDesc, respStatus, success, traceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZhaoJiaoResponseHeadImplCopyWith<_$ZhaoJiaoResponseHeadImpl>
      get copyWith =>
          __$$ZhaoJiaoResponseHeadImplCopyWithImpl<_$ZhaoJiaoResponseHeadImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZhaoJiaoResponseHeadImplToJson(
      this,
    );
  }
}

abstract class _ZhaoJiaoResponseHead extends ZhaoJiaoResponseHead {
  const factory _ZhaoJiaoResponseHead(
      {final String respCode,
      final String respDesc,
      final String respStatus,
      final bool success,
      final String? traceId}) = _$ZhaoJiaoResponseHeadImpl;
  const _ZhaoJiaoResponseHead._() : super._();

  factory _ZhaoJiaoResponseHead.fromJson(Map<String, dynamic> json) =
      _$ZhaoJiaoResponseHeadImpl.fromJson;

  @override

  /// 响应码
  String get respCode;
  @override

  /// 响应描述
  String get respDesc;
  @override

  /// 响应状态
  String get respStatus;
  @override

  /// 是否成功
  bool get success;
  @override

  /// 跟踪id
  String? get traceId;
  @override
  @JsonKey(ignore: true)
  _$$ZhaoJiaoResponseHeadImplCopyWith<_$ZhaoJiaoResponseHeadImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ZhaoJiaoResponse<T> _$ZhaoJiaoResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return ZhaoJiaoResponseData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ZhaoJiaoResponse<T> {
  T? get data => throw _privateConstructorUsedError;
  ZhaoJiaoResponseHead get head => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZhaoJiaoResponseCopyWith<T, ZhaoJiaoResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZhaoJiaoResponseCopyWith<T, $Res> {
  factory $ZhaoJiaoResponseCopyWith(
          ZhaoJiaoResponse<T> value, $Res Function(ZhaoJiaoResponse<T>) then) =
      _$ZhaoJiaoResponseCopyWithImpl<T, $Res, ZhaoJiaoResponse<T>>;
  @useResult
  $Res call({T? data, ZhaoJiaoResponseHead head, int code});

  $ZhaoJiaoResponseHeadCopyWith<$Res> get head;
}

/// @nodoc
class _$ZhaoJiaoResponseCopyWithImpl<T, $Res, $Val extends ZhaoJiaoResponse<T>>
    implements $ZhaoJiaoResponseCopyWith<T, $Res> {
  _$ZhaoJiaoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? head = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as ZhaoJiaoResponseHead,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZhaoJiaoResponseHeadCopyWith<$Res> get head {
    return $ZhaoJiaoResponseHeadCopyWith<$Res>(_value.head, (value) {
      return _then(_value.copyWith(head: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ZhaoJiaoResponseDataImplCopyWith<T, $Res>
    implements $ZhaoJiaoResponseCopyWith<T, $Res> {
  factory _$$ZhaoJiaoResponseDataImplCopyWith(
          _$ZhaoJiaoResponseDataImpl<T> value,
          $Res Function(_$ZhaoJiaoResponseDataImpl<T>) then) =
      __$$ZhaoJiaoResponseDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? data, ZhaoJiaoResponseHead head, int code});

  @override
  $ZhaoJiaoResponseHeadCopyWith<$Res> get head;
}

/// @nodoc
class __$$ZhaoJiaoResponseDataImplCopyWithImpl<T, $Res>
    extends _$ZhaoJiaoResponseCopyWithImpl<T, $Res,
        _$ZhaoJiaoResponseDataImpl<T>>
    implements _$$ZhaoJiaoResponseDataImplCopyWith<T, $Res> {
  __$$ZhaoJiaoResponseDataImplCopyWithImpl(_$ZhaoJiaoResponseDataImpl<T> _value,
      $Res Function(_$ZhaoJiaoResponseDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? head = null,
    Object? code = null,
  }) {
    return _then(_$ZhaoJiaoResponseDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as ZhaoJiaoResponseHead,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ZhaoJiaoResponseDataImpl<T> extends ZhaoJiaoResponseData<T> {
  const _$ZhaoJiaoResponseDataImpl(this.data, this.head, this.code) : super._();

  factory _$ZhaoJiaoResponseDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ZhaoJiaoResponseDataImplFromJson(json, fromJsonT);

  @override
  final T? data;
  @override
  final ZhaoJiaoResponseHead head;
  @override
  final int code;

  @override
  String toString() {
    return 'ZhaoJiaoResponse<$T>(data: $data, head: $head, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZhaoJiaoResponseDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.head, head) || other.head == head) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), head, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZhaoJiaoResponseDataImplCopyWith<T, _$ZhaoJiaoResponseDataImpl<T>>
      get copyWith => __$$ZhaoJiaoResponseDataImplCopyWithImpl<T,
          _$ZhaoJiaoResponseDataImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ZhaoJiaoResponseDataImplToJson<T>(this, toJsonT);
  }
}

abstract class ZhaoJiaoResponseData<T> extends ZhaoJiaoResponse<T> {
  const factory ZhaoJiaoResponseData(
          final T? data, final ZhaoJiaoResponseHead head, final int code) =
      _$ZhaoJiaoResponseDataImpl<T>;
  const ZhaoJiaoResponseData._() : super._();

  factory ZhaoJiaoResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ZhaoJiaoResponseDataImpl<T>.fromJson;

  @override
  T? get data;
  @override
  ZhaoJiaoResponseHead get head;
  @override
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$ZhaoJiaoResponseDataImplCopyWith<T, _$ZhaoJiaoResponseDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

ZhaoJiaoPageResponse<T> _$ZhaoJiaoPageResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return ZhaoJiaoPageResponseData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ZhaoJiaoPageResponse<T> {
  /// 总数量
  @String2IntJsonConverter()
  int get total => throw _privateConstructorUsedError;

  /// 当前页大小
  @String2IntJsonConverter()
  int get size => throw _privateConstructorUsedError;

  /// 当前页数
  @String2IntJsonConverter()
  int get current => throw _privateConstructorUsedError;
  T? get rows => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZhaoJiaoPageResponseCopyWith<T, ZhaoJiaoPageResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZhaoJiaoPageResponseCopyWith<T, $Res> {
  factory $ZhaoJiaoPageResponseCopyWith(ZhaoJiaoPageResponse<T> value,
          $Res Function(ZhaoJiaoPageResponse<T>) then) =
      _$ZhaoJiaoPageResponseCopyWithImpl<T, $Res, ZhaoJiaoPageResponse<T>>;
  @useResult
  $Res call(
      {@String2IntJsonConverter() int total,
      @String2IntJsonConverter() int size,
      @String2IntJsonConverter() int current,
      T? rows,
      @JsonKey(defaultValue: '') String msg});
}

/// @nodoc
class _$ZhaoJiaoPageResponseCopyWithImpl<T, $Res,
        $Val extends ZhaoJiaoPageResponse<T>>
    implements $ZhaoJiaoPageResponseCopyWith<T, $Res> {
  _$ZhaoJiaoPageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? rows = freezed,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as T?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZhaoJiaoPageResponseDataImplCopyWith<T, $Res>
    implements $ZhaoJiaoPageResponseCopyWith<T, $Res> {
  factory _$$ZhaoJiaoPageResponseDataImplCopyWith(
          _$ZhaoJiaoPageResponseDataImpl<T> value,
          $Res Function(_$ZhaoJiaoPageResponseDataImpl<T>) then) =
      __$$ZhaoJiaoPageResponseDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@String2IntJsonConverter() int total,
      @String2IntJsonConverter() int size,
      @String2IntJsonConverter() int current,
      T? rows,
      @JsonKey(defaultValue: '') String msg});
}

/// @nodoc
class __$$ZhaoJiaoPageResponseDataImplCopyWithImpl<T, $Res>
    extends _$ZhaoJiaoPageResponseCopyWithImpl<T, $Res,
        _$ZhaoJiaoPageResponseDataImpl<T>>
    implements _$$ZhaoJiaoPageResponseDataImplCopyWith<T, $Res> {
  __$$ZhaoJiaoPageResponseDataImplCopyWithImpl(
      _$ZhaoJiaoPageResponseDataImpl<T> _value,
      $Res Function(_$ZhaoJiaoPageResponseDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? size = null,
    Object? current = null,
    Object? rows = freezed,
    Object? msg = null,
  }) {
    return _then(_$ZhaoJiaoPageResponseDataImpl<T>(
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
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
class _$ZhaoJiaoPageResponseDataImpl<T> extends ZhaoJiaoPageResponseData<T> {
  const _$ZhaoJiaoPageResponseDataImpl(
      @String2IntJsonConverter() this.total,
      @String2IntJsonConverter() this.size,
      @String2IntJsonConverter() this.current,
      this.rows,
      @JsonKey(defaultValue: '') this.msg)
      : super._();

  factory _$ZhaoJiaoPageResponseDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ZhaoJiaoPageResponseDataImplFromJson(json, fromJsonT);

  /// 总数量
  @override
  @String2IntJsonConverter()
  final int total;

  /// 当前页大小
  @override
  @String2IntJsonConverter()
  final int size;

  /// 当前页数
  @override
  @String2IntJsonConverter()
  final int current;
  @override
  final T? rows;
  @override
  @JsonKey(defaultValue: '')
  final String msg;

  @override
  String toString() {
    return 'ZhaoJiaoPageResponse<$T>(total: $total, size: $size, current: $current, rows: $rows, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZhaoJiaoPageResponseDataImpl<T> &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other.rows, rows) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, size, current,
      const DeepCollectionEquality().hash(rows), msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZhaoJiaoPageResponseDataImplCopyWith<T, _$ZhaoJiaoPageResponseDataImpl<T>>
      get copyWith => __$$ZhaoJiaoPageResponseDataImplCopyWithImpl<T,
          _$ZhaoJiaoPageResponseDataImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ZhaoJiaoPageResponseDataImplToJson<T>(this, toJsonT);
  }
}

abstract class ZhaoJiaoPageResponseData<T> extends ZhaoJiaoPageResponse<T> {
  const factory ZhaoJiaoPageResponseData(
          @String2IntJsonConverter() final int total,
          @String2IntJsonConverter() final int size,
          @String2IntJsonConverter() final int current,
          final T? rows,
          @JsonKey(defaultValue: '') final String msg) =
      _$ZhaoJiaoPageResponseDataImpl<T>;
  const ZhaoJiaoPageResponseData._() : super._();

  factory ZhaoJiaoPageResponseData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ZhaoJiaoPageResponseDataImpl<T>.fromJson;

  @override

  /// 总数量
  @String2IntJsonConverter()
  int get total;
  @override

  /// 当前页大小
  @String2IntJsonConverter()
  int get size;
  @override

  /// 当前页数
  @String2IntJsonConverter()
  int get current;
  @override
  T? get rows;
  @override
  @JsonKey(defaultValue: '')
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$ZhaoJiaoPageResponseDataImplCopyWith<T, _$ZhaoJiaoPageResponseDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
