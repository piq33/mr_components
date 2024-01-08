// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushAliasModel _$PushAliasModelFromJson(Map<String, dynamic> json) {
  return _PushAliasModel.fromJson(json);
}

/// @nodoc
mixin _$PushAliasModel {
  String get action => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get result => throw _privateConstructorUsedError;
  String get sn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushAliasModelCopyWith<PushAliasModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushAliasModelCopyWith<$Res> {
  factory $PushAliasModelCopyWith(
          PushAliasModel value, $Res Function(PushAliasModel) then) =
      _$PushAliasModelCopyWithImpl<$Res, PushAliasModel>;
  @useResult
  $Res call({String action, String error, bool result, String sn});
}

/// @nodoc
class _$PushAliasModelCopyWithImpl<$Res, $Val extends PushAliasModel>
    implements $PushAliasModelCopyWith<$Res> {
  _$PushAliasModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? error = null,
    Object? result = null,
    Object? sn = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushAliasModelImplCopyWith<$Res>
    implements $PushAliasModelCopyWith<$Res> {
  factory _$$PushAliasModelImplCopyWith(_$PushAliasModelImpl value,
          $Res Function(_$PushAliasModelImpl) then) =
      __$$PushAliasModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String action, String error, bool result, String sn});
}

/// @nodoc
class __$$PushAliasModelImplCopyWithImpl<$Res>
    extends _$PushAliasModelCopyWithImpl<$Res, _$PushAliasModelImpl>
    implements _$$PushAliasModelImplCopyWith<$Res> {
  __$$PushAliasModelImplCopyWithImpl(
      _$PushAliasModelImpl _value, $Res Function(_$PushAliasModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? error = null,
    Object? result = null,
    Object? sn = null,
  }) {
    return _then(_$PushAliasModelImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as bool,
      sn: null == sn
          ? _value.sn
          : sn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PushAliasModelImpl implements _PushAliasModel {
  const _$PushAliasModelImpl(
      {this.action = '',
      this.error = '',
      required this.result,
      required this.sn});

  factory _$PushAliasModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PushAliasModelImplFromJson(json);

  @override
  @JsonKey()
  final String action;
  @override
  @JsonKey()
  final String error;
  @override
  final bool result;
  @override
  final String sn;

  @override
  String toString() {
    return 'PushAliasModel(action: $action, error: $error, result: $result, sn: $sn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushAliasModelImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.sn, sn) || other.sn == sn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, error, result, sn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushAliasModelImplCopyWith<_$PushAliasModelImpl> get copyWith =>
      __$$PushAliasModelImplCopyWithImpl<_$PushAliasModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PushAliasModelImplToJson(
      this,
    );
  }
}

abstract class _PushAliasModel implements PushAliasModel {
  const factory _PushAliasModel(
      {final String action,
      final String error,
      required final bool result,
      required final String sn}) = _$PushAliasModelImpl;

  factory _PushAliasModel.fromJson(Map<String, dynamic> json) =
      _$PushAliasModelImpl.fromJson;

  @override
  String get action;
  @override
  String get error;
  @override
  bool get result;
  @override
  String get sn;
  @override
  @JsonKey(ignore: true)
  _$$PushAliasModelImplCopyWith<_$PushAliasModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetuiPushPayload _$GetuiPushPayloadFromJson(Map<String, dynamic> json) {
  return _GetuiPushPayload.fromJson(json);
}

/// @nodoc
mixin _$GetuiPushPayload {
  /// 业务id
  String get bizId => throw _privateConstructorUsedError;

  /// 业务id
  set bizId(String value) => throw _privateConstructorUsedError;

  /// 消息id
  int? get messageId => throw _privateConstructorUsedError;

  /// 消息id
  set messageId(int? value) => throw _privateConstructorUsedError;

  /// 类型
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  PushType get pushType => throw _privateConstructorUsedError;

  /// 类型
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  set pushType(PushType value) => throw _privateConstructorUsedError;

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode get code => throw _privateConstructorUsedError;

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  set code(PushCode value) => throw _privateConstructorUsedError;

  /// 标题
  String get title => throw _privateConstructorUsedError;

  /// 标题
  set title(String value) => throw _privateConstructorUsedError;

  /// 发送系统编码
  String get senderCode => throw _privateConstructorUsedError;

  /// 发送系统编码
  set senderCode(String value) => throw _privateConstructorUsedError;

  /// 内容
  String get content => throw _privateConstructorUsedError;

  /// 内容
  set content(String value) => throw _privateConstructorUsedError;

  /// 其余参数
  String get otherParam => throw _privateConstructorUsedError;

  /// 其余参数
  set otherParam(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetuiPushPayloadCopyWith<GetuiPushPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetuiPushPayloadCopyWith<$Res> {
  factory $GetuiPushPayloadCopyWith(
          GetuiPushPayload value, $Res Function(GetuiPushPayload) then) =
      _$GetuiPushPayloadCopyWithImpl<$Res, GetuiPushPayload>;
  @useResult
  $Res call(
      {String bizId,
      int? messageId,
      @JsonKey(name: 'noticeType') @PushTypeJsonConverter() PushType pushType,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode code,
      String title,
      String senderCode,
      String content,
      String otherParam});
}

/// @nodoc
class _$GetuiPushPayloadCopyWithImpl<$Res, $Val extends GetuiPushPayload>
    implements $GetuiPushPayloadCopyWith<$Res> {
  _$GetuiPushPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizId = null,
    Object? messageId = freezed,
    Object? pushType = null,
    Object? code = null,
    Object? title = null,
    Object? senderCode = null,
    Object? content = null,
    Object? otherParam = null,
  }) {
    return _then(_value.copyWith(
      bizId: null == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      pushType: null == pushType
          ? _value.pushType
          : pushType // ignore: cast_nullable_to_non_nullable
              as PushType,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as PushCode,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      senderCode: null == senderCode
          ? _value.senderCode
          : senderCode // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      otherParam: null == otherParam
          ? _value.otherParam
          : otherParam // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetuiPushPayloadImplCopyWith<$Res>
    implements $GetuiPushPayloadCopyWith<$Res> {
  factory _$$GetuiPushPayloadImplCopyWith(_$GetuiPushPayloadImpl value,
          $Res Function(_$GetuiPushPayloadImpl) then) =
      __$$GetuiPushPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bizId,
      int? messageId,
      @JsonKey(name: 'noticeType') @PushTypeJsonConverter() PushType pushType,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode code,
      String title,
      String senderCode,
      String content,
      String otherParam});
}

/// @nodoc
class __$$GetuiPushPayloadImplCopyWithImpl<$Res>
    extends _$GetuiPushPayloadCopyWithImpl<$Res, _$GetuiPushPayloadImpl>
    implements _$$GetuiPushPayloadImplCopyWith<$Res> {
  __$$GetuiPushPayloadImplCopyWithImpl(_$GetuiPushPayloadImpl _value,
      $Res Function(_$GetuiPushPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizId = null,
    Object? messageId = freezed,
    Object? pushType = null,
    Object? code = null,
    Object? title = null,
    Object? senderCode = null,
    Object? content = null,
    Object? otherParam = null,
  }) {
    return _then(_$GetuiPushPayloadImpl(
      bizId: null == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      pushType: null == pushType
          ? _value.pushType
          : pushType // ignore: cast_nullable_to_non_nullable
              as PushType,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as PushCode,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      senderCode: null == senderCode
          ? _value.senderCode
          : senderCode // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      otherParam: null == otherParam
          ? _value.otherParam
          : otherParam // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetuiPushPayloadImpl extends _GetuiPushPayload {
  _$GetuiPushPayloadImpl(
      {this.bizId = '',
      this.messageId,
      @JsonKey(name: 'noticeType')
      @PushTypeJsonConverter()
      this.pushType = PushType.unknown,
      @SceneJsonConverter()
      @JsonKey(name: 'sceneCode')
      this.code = PushCode.unknown,
      this.title = '',
      this.senderCode = '',
      this.content = '',
      this.otherParam = ''})
      : super._();

  factory _$GetuiPushPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetuiPushPayloadImplFromJson(json);

  /// 业务id
  @override
  @JsonKey()
  String bizId;

  /// 消息id
  @override
  int? messageId;

  /// 类型
  @override
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  PushType pushType;

  /// 场景码
  @override
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode code;

  /// 标题
  @override
  @JsonKey()
  String title;

  /// 发送系统编码
  @override
  @JsonKey()
  String senderCode;

  /// 内容
  @override
  @JsonKey()
  String content;

  /// 其余参数
  @override
  @JsonKey()
  String otherParam;

  @override
  String toString() {
    return 'GetuiPushPayload(bizId: $bizId, messageId: $messageId, pushType: $pushType, code: $code, title: $title, senderCode: $senderCode, content: $content, otherParam: $otherParam)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetuiPushPayloadImplCopyWith<_$GetuiPushPayloadImpl> get copyWith =>
      __$$GetuiPushPayloadImplCopyWithImpl<_$GetuiPushPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetuiPushPayloadImplToJson(
      this,
    );
  }
}

abstract class _GetuiPushPayload extends GetuiPushPayload {
  factory _GetuiPushPayload(
      {String bizId,
      int? messageId,
      @JsonKey(name: 'noticeType') @PushTypeJsonConverter() PushType pushType,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode code,
      String title,
      String senderCode,
      String content,
      String otherParam}) = _$GetuiPushPayloadImpl;
  _GetuiPushPayload._() : super._();

  factory _GetuiPushPayload.fromJson(Map<String, dynamic> json) =
      _$GetuiPushPayloadImpl.fromJson;

  @override

  /// 业务id
  String get bizId;

  /// 业务id
  set bizId(String value);
  @override

  /// 消息id
  int? get messageId;

  /// 消息id
  set messageId(int? value);
  @override

  /// 类型
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  PushType get pushType;

  /// 类型
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  set pushType(PushType value);
  @override

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode get code;

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  set code(PushCode value);
  @override

  /// 标题
  String get title;

  /// 标题
  set title(String value);
  @override

  /// 发送系统编码
  String get senderCode;

  /// 发送系统编码
  set senderCode(String value);
  @override

  /// 内容
  String get content;

  /// 内容
  set content(String value);
  @override

  /// 其余参数
  String get otherParam;

  /// 其余参数
  set otherParam(String value);
  @override
  @JsonKey(ignore: true)
  _$$GetuiPushPayloadImplCopyWith<_$GetuiPushPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetuiPushModel {
  /// 消息id
  String? get messageId => throw _privateConstructorUsedError;

  /// 任务id
  String? get taskId => throw _privateConstructorUsedError;

  /// 携带信息
  @JsonKey(name: 'payloadMsg')
  GetuiPushPayload? get payload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetuiPushModelCopyWith<GetuiPushModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetuiPushModelCopyWith<$Res> {
  factory $GetuiPushModelCopyWith(
          GetuiPushModel value, $Res Function(GetuiPushModel) then) =
      _$GetuiPushModelCopyWithImpl<$Res, GetuiPushModel>;
  @useResult
  $Res call(
      {String? messageId,
      String? taskId,
      @JsonKey(name: 'payloadMsg') GetuiPushPayload? payload});

  $GetuiPushPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$GetuiPushModelCopyWithImpl<$Res, $Val extends GetuiPushModel>
    implements $GetuiPushModelCopyWith<$Res> {
  _$GetuiPushModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = freezed,
    Object? taskId = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetuiPushPayload?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetuiPushPayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $GetuiPushPayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetuiPushModelImplCopyWith<$Res>
    implements $GetuiPushModelCopyWith<$Res> {
  factory _$$GetuiPushModelImplCopyWith(_$GetuiPushModelImpl value,
          $Res Function(_$GetuiPushModelImpl) then) =
      __$$GetuiPushModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? messageId,
      String? taskId,
      @JsonKey(name: 'payloadMsg') GetuiPushPayload? payload});

  @override
  $GetuiPushPayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$GetuiPushModelImplCopyWithImpl<$Res>
    extends _$GetuiPushModelCopyWithImpl<$Res, _$GetuiPushModelImpl>
    implements _$$GetuiPushModelImplCopyWith<$Res> {
  __$$GetuiPushModelImplCopyWithImpl(
      _$GetuiPushModelImpl _value, $Res Function(_$GetuiPushModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = freezed,
    Object? taskId = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$GetuiPushModelImpl(
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as GetuiPushPayload?,
    ));
  }
}

/// @nodoc

class _$GetuiPushModelImpl implements _GetuiPushModel {
  const _$GetuiPushModelImpl(
      {this.messageId, this.taskId, @JsonKey(name: 'payloadMsg') this.payload});

  /// 消息id
  @override
  final String? messageId;

  /// 任务id
  @override
  final String? taskId;

  /// 携带信息
  @override
  @JsonKey(name: 'payloadMsg')
  final GetuiPushPayload? payload;

  @override
  String toString() {
    return 'GetuiPushModel(messageId: $messageId, taskId: $taskId, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetuiPushModelImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, taskId, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetuiPushModelImplCopyWith<_$GetuiPushModelImpl> get copyWith =>
      __$$GetuiPushModelImplCopyWithImpl<_$GetuiPushModelImpl>(
          this, _$identity);
}

abstract class _GetuiPushModel implements GetuiPushModel {
  const factory _GetuiPushModel(
          {final String? messageId,
          final String? taskId,
          @JsonKey(name: 'payloadMsg') final GetuiPushPayload? payload}) =
      _$GetuiPushModelImpl;

  @override

  /// 消息id
  String? get messageId;
  @override

  /// 任务id
  String? get taskId;
  @override

  /// 携带信息
  @JsonKey(name: 'payloadMsg')
  GetuiPushPayload? get payload;
  @override
  @JsonKey(ignore: true)
  _$$GetuiPushModelImplCopyWith<_$GetuiPushModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
