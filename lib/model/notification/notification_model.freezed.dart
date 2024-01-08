// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationCategoryModel _$NotificationCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationCategoryModel {
  /// 业务类型
  @MessageTypeJsonConverter()
  MessageType get messageType => throw _privateConstructorUsedError;

  /// 业务类型名称
  String get messageTypeName => throw _privateConstructorUsedError;

  /// 消息数量
  int get countNum => throw _privateConstructorUsedError;

  /// 是否有新消息
  @JsonKey(name: 'hasMsgFlg')
  bool get hasMsg => throw _privateConstructorUsedError;

  /// 最新一条消息
  NotificationModel? get messageInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCategoryModelCopyWith<NotificationCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCategoryModelCopyWith<$Res> {
  factory $NotificationCategoryModelCopyWith(NotificationCategoryModel value,
          $Res Function(NotificationCategoryModel) then) =
      _$NotificationCategoryModelCopyWithImpl<$Res, NotificationCategoryModel>;
  @useResult
  $Res call(
      {@MessageTypeJsonConverter() MessageType messageType,
      String messageTypeName,
      int countNum,
      @JsonKey(name: 'hasMsgFlg') bool hasMsg,
      NotificationModel? messageInfo});

  $NotificationModelCopyWith<$Res>? get messageInfo;
}

/// @nodoc
class _$NotificationCategoryModelCopyWithImpl<$Res,
        $Val extends NotificationCategoryModel>
    implements $NotificationCategoryModelCopyWith<$Res> {
  _$NotificationCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = null,
    Object? messageTypeName = null,
    Object? countNum = null,
    Object? hasMsg = null,
    Object? messageInfo = freezed,
  }) {
    return _then(_value.copyWith(
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      messageTypeName: null == messageTypeName
          ? _value.messageTypeName
          : messageTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      countNum: null == countNum
          ? _value.countNum
          : countNum // ignore: cast_nullable_to_non_nullable
              as int,
      hasMsg: null == hasMsg
          ? _value.hasMsg
          : hasMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      messageInfo: freezed == messageInfo
          ? _value.messageInfo
          : messageInfo // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationModelCopyWith<$Res>? get messageInfo {
    if (_value.messageInfo == null) {
      return null;
    }

    return $NotificationModelCopyWith<$Res>(_value.messageInfo!, (value) {
      return _then(_value.copyWith(messageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationCategoryModelImplCopyWith<$Res>
    implements $NotificationCategoryModelCopyWith<$Res> {
  factory _$$NotificationCategoryModelImplCopyWith(
          _$NotificationCategoryModelImpl value,
          $Res Function(_$NotificationCategoryModelImpl) then) =
      __$$NotificationCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@MessageTypeJsonConverter() MessageType messageType,
      String messageTypeName,
      int countNum,
      @JsonKey(name: 'hasMsgFlg') bool hasMsg,
      NotificationModel? messageInfo});

  @override
  $NotificationModelCopyWith<$Res>? get messageInfo;
}

/// @nodoc
class __$$NotificationCategoryModelImplCopyWithImpl<$Res>
    extends _$NotificationCategoryModelCopyWithImpl<$Res,
        _$NotificationCategoryModelImpl>
    implements _$$NotificationCategoryModelImplCopyWith<$Res> {
  __$$NotificationCategoryModelImplCopyWithImpl(
      _$NotificationCategoryModelImpl _value,
      $Res Function(_$NotificationCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageType = null,
    Object? messageTypeName = null,
    Object? countNum = null,
    Object? hasMsg = null,
    Object? messageInfo = freezed,
  }) {
    return _then(_$NotificationCategoryModelImpl(
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      messageTypeName: null == messageTypeName
          ? _value.messageTypeName
          : messageTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      countNum: null == countNum
          ? _value.countNum
          : countNum // ignore: cast_nullable_to_non_nullable
              as int,
      hasMsg: null == hasMsg
          ? _value.hasMsg
          : hasMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      messageInfo: freezed == messageInfo
          ? _value.messageInfo
          : messageInfo // ignore: cast_nullable_to_non_nullable
              as NotificationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationCategoryModelImpl extends _NotificationCategoryModel {
  const _$NotificationCategoryModelImpl(
      {@MessageTypeJsonConverter() this.messageType = MessageType.all,
      this.messageTypeName = '',
      this.countNum = 0,
      @JsonKey(name: 'hasMsgFlg') this.hasMsg = false,
      this.messageInfo})
      : super._();

  factory _$NotificationCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationCategoryModelImplFromJson(json);

  /// 业务类型
  @override
  @JsonKey()
  @MessageTypeJsonConverter()
  final MessageType messageType;

  /// 业务类型名称
  @override
  @JsonKey()
  final String messageTypeName;

  /// 消息数量
  @override
  @JsonKey()
  final int countNum;

  /// 是否有新消息
  @override
  @JsonKey(name: 'hasMsgFlg')
  final bool hasMsg;

  /// 最新一条消息
  @override
  final NotificationModel? messageInfo;

  @override
  String toString() {
    return 'NotificationCategoryModel(messageType: $messageType, messageTypeName: $messageTypeName, countNum: $countNum, hasMsg: $hasMsg, messageInfo: $messageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationCategoryModelImpl &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.messageTypeName, messageTypeName) ||
                other.messageTypeName == messageTypeName) &&
            (identical(other.countNum, countNum) ||
                other.countNum == countNum) &&
            (identical(other.hasMsg, hasMsg) || other.hasMsg == hasMsg) &&
            (identical(other.messageInfo, messageInfo) ||
                other.messageInfo == messageInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, messageType, messageTypeName, countNum, hasMsg, messageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationCategoryModelImplCopyWith<_$NotificationCategoryModelImpl>
      get copyWith => __$$NotificationCategoryModelImplCopyWithImpl<
          _$NotificationCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationCategoryModel extends NotificationCategoryModel {
  const factory _NotificationCategoryModel(
      {@MessageTypeJsonConverter() final MessageType messageType,
      final String messageTypeName,
      final int countNum,
      @JsonKey(name: 'hasMsgFlg') final bool hasMsg,
      final NotificationModel? messageInfo}) = _$NotificationCategoryModelImpl;
  const _NotificationCategoryModel._() : super._();

  factory _NotificationCategoryModel.fromJson(Map<String, dynamic> json) =
      _$NotificationCategoryModelImpl.fromJson;

  @override

  /// 业务类型
  @MessageTypeJsonConverter()
  MessageType get messageType;
  @override

  /// 业务类型名称
  String get messageTypeName;
  @override

  /// 消息数量
  int get countNum;
  @override

  /// 是否有新消息
  @JsonKey(name: 'hasMsgFlg')
  bool get hasMsg;
  @override

  /// 最新一条消息
  NotificationModel? get messageInfo;
  @override
  @JsonKey(ignore: true)
  _$$NotificationCategoryModelImplCopyWith<_$NotificationCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  /// 业务id
  @String2IntNullableJsonConverter()
  int? get bizId => throw _privateConstructorUsedError;

  /// 业务id
  @String2IntNullableJsonConverter()
  set bizId(int? value) => throw _privateConstructorUsedError;

  /// 业务类型
  String get bizType => throw _privateConstructorUsedError;

  /// 业务类型
  set bizType(String value) => throw _privateConstructorUsedError;

  /// 业务id
  String? get sendCid => throw _privateConstructorUsedError;

  /// 业务id
  set sendCid(String? value) => throw _privateConstructorUsedError;

  /// 消息id
  int? get messageId => throw _privateConstructorUsedError;

  /// 消息id
  set messageId(int? value) => throw _privateConstructorUsedError;

  /// 业务类型
  @MessageTypeJsonConverter()
  MessageType get messageType => throw _privateConstructorUsedError;

  /// 业务类型
  @MessageTypeJsonConverter()
  set messageType(MessageType value) => throw _privateConstructorUsedError;

  /// 标题
  String get title => throw _privateConstructorUsedError;

  /// 标题
  set title(String value) => throw _privateConstructorUsedError;

  /// 封面
  @JsonKey(name: 'imaUrl')
  String? get image => throw _privateConstructorUsedError;

  /// 封面
  @JsonKey(name: 'imaUrl')
  set image(String? value) => throw _privateConstructorUsedError;

  /// 内容
  String get content => throw _privateConstructorUsedError;

  /// 内容
  set content(String value) => throw _privateConstructorUsedError;

  /// 其余参数
  String get otherParam => throw _privateConstructorUsedError;

  /// 其余参数
  set otherParam(String value) => throw _privateConstructorUsedError;

  /// 推送范围类型
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  PushRange get range => throw _privateConstructorUsedError;

  /// 推送范围类型
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  set range(PushRange value) => throw _privateConstructorUsedError;

  /// 已读标记
  bool get readFlag => throw _privateConstructorUsedError;

  /// 已读标记
  set readFlag(bool value) => throw _privateConstructorUsedError;

  /// 已读时间
  @DateTimeJsonConverter()
  DateTime? get readTime => throw _privateConstructorUsedError;

  /// 已读时间
  @DateTimeJsonConverter()
  set readTime(DateTime? value) => throw _privateConstructorUsedError;

  /// 发送系统编码
  String get senderCode => throw _privateConstructorUsedError;

  /// 发送系统编码
  set senderCode(String value) => throw _privateConstructorUsedError;

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode get scene => throw _privateConstructorUsedError;

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  set scene(PushCode value) => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 学校编码
  set schoolCode(String value) => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 班级编码
  set classCode(String value) => throw _privateConstructorUsedError;

  /// 状态
  NotificationStatus get status => throw _privateConstructorUsedError;

  /// 状态
  set status(NotificationStatus value) => throw _privateConstructorUsedError;

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  UrgentType get urgentType => throw _privateConstructorUsedError;

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  set urgentType(UrgentType value) => throw _privateConstructorUsedError;

  /// 消息作业(发布人)
  @JsonKey(name: 'attribute')
  String get author => throw _privateConstructorUsedError;

  /// 消息作业(发布人)
  @JsonKey(name: 'attribute')
  set author(String value) => throw _privateConstructorUsedError;

  /// 创建人
  String get createUser => throw _privateConstructorUsedError;

  /// 创建人
  set createUser(String value) => throw _privateConstructorUsedError;

  /// 创建时间
  @JsonKey(name: 'createTime')
  @DateTimeJsonConverter()
  DateTime? get createDate => throw _privateConstructorUsedError;

  /// 创建时间
  @JsonKey(name: 'createTime')
  @DateTimeJsonConverter()
  set createDate(DateTime? value) => throw _privateConstructorUsedError;

  /// 更新人
  String get updateUser => throw _privateConstructorUsedError;

  /// 更新人
  set updateUser(String value) => throw _privateConstructorUsedError;

  /// 更新时间
  @JsonKey(name: 'updateTime')
  @DateTimeJsonConverter()
  DateTime? get updateDate => throw _privateConstructorUsedError;

  /// 更新时间
  @JsonKey(name: 'updateTime')
  @DateTimeJsonConverter()
  set updateDate(DateTime? value) => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  set isDeleted(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? bizId,
      String bizType,
      String? sendCid,
      int? messageId,
      @MessageTypeJsonConverter() MessageType messageType,
      String title,
      @JsonKey(name: 'imaUrl') String? image,
      String content,
      String otherParam,
      @JsonKey(name: 'pushType') @PushRangeJsonConverter() PushRange range,
      bool readFlag,
      @DateTimeJsonConverter() DateTime? readTime,
      String senderCode,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode scene,
      String schoolCode,
      String classCode,
      NotificationStatus status,
      UrgentType urgentType,
      @JsonKey(name: 'attribute') String author,
      String createUser,
      @JsonKey(name: 'createTime')
      @DateTimeJsonConverter()
      DateTime? createDate,
      String updateUser,
      @JsonKey(name: 'updateTime')
      @DateTimeJsonConverter()
      DateTime? updateDate,
      @Int2BoolJsonConverter() bool isDeleted});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizId = freezed,
    Object? bizType = null,
    Object? sendCid = freezed,
    Object? messageId = freezed,
    Object? messageType = null,
    Object? title = null,
    Object? image = freezed,
    Object? content = null,
    Object? otherParam = null,
    Object? range = null,
    Object? readFlag = null,
    Object? readTime = freezed,
    Object? senderCode = null,
    Object? scene = null,
    Object? schoolCode = null,
    Object? classCode = null,
    Object? status = null,
    Object? urgentType = null,
    Object? author = null,
    Object? createUser = null,
    Object? createDate = freezed,
    Object? updateUser = null,
    Object? updateDate = freezed,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      bizId: freezed == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as int?,
      bizType: null == bizType
          ? _value.bizType
          : bizType // ignore: cast_nullable_to_non_nullable
              as String,
      sendCid: freezed == sendCid
          ? _value.sendCid
          : sendCid // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      otherParam: null == otherParam
          ? _value.otherParam
          : otherParam // ignore: cast_nullable_to_non_nullable
              as String,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as PushRange,
      readFlag: null == readFlag
          ? _value.readFlag
          : readFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      readTime: freezed == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      senderCode: null == senderCode
          ? _value.senderCode
          : senderCode // ignore: cast_nullable_to_non_nullable
              as String,
      scene: null == scene
          ? _value.scene
          : scene // ignore: cast_nullable_to_non_nullable
              as PushCode,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
      urgentType: null == urgentType
          ? _value.urgentType
          : urgentType // ignore: cast_nullable_to_non_nullable
              as UrgentType,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      createUser: null == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: null == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: freezed == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@String2IntNullableJsonConverter() int? bizId,
      String bizType,
      String? sendCid,
      int? messageId,
      @MessageTypeJsonConverter() MessageType messageType,
      String title,
      @JsonKey(name: 'imaUrl') String? image,
      String content,
      String otherParam,
      @JsonKey(name: 'pushType') @PushRangeJsonConverter() PushRange range,
      bool readFlag,
      @DateTimeJsonConverter() DateTime? readTime,
      String senderCode,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode scene,
      String schoolCode,
      String classCode,
      NotificationStatus status,
      UrgentType urgentType,
      @JsonKey(name: 'attribute') String author,
      String createUser,
      @JsonKey(name: 'createTime')
      @DateTimeJsonConverter()
      DateTime? createDate,
      String updateUser,
      @JsonKey(name: 'updateTime')
      @DateTimeJsonConverter()
      DateTime? updateDate,
      @Int2BoolJsonConverter() bool isDeleted});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizId = freezed,
    Object? bizType = null,
    Object? sendCid = freezed,
    Object? messageId = freezed,
    Object? messageType = null,
    Object? title = null,
    Object? image = freezed,
    Object? content = null,
    Object? otherParam = null,
    Object? range = null,
    Object? readFlag = null,
    Object? readTime = freezed,
    Object? senderCode = null,
    Object? scene = null,
    Object? schoolCode = null,
    Object? classCode = null,
    Object? status = null,
    Object? urgentType = null,
    Object? author = null,
    Object? createUser = null,
    Object? createDate = freezed,
    Object? updateUser = null,
    Object? updateDate = freezed,
    Object? isDeleted = null,
  }) {
    return _then(_$NotificationModelImpl(
      bizId: freezed == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as int?,
      bizType: null == bizType
          ? _value.bizType
          : bizType // ignore: cast_nullable_to_non_nullable
              as String,
      sendCid: freezed == sendCid
          ? _value.sendCid
          : sendCid // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as MessageType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      otherParam: null == otherParam
          ? _value.otherParam
          : otherParam // ignore: cast_nullable_to_non_nullable
              as String,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as PushRange,
      readFlag: null == readFlag
          ? _value.readFlag
          : readFlag // ignore: cast_nullable_to_non_nullable
              as bool,
      readTime: freezed == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      senderCode: null == senderCode
          ? _value.senderCode
          : senderCode // ignore: cast_nullable_to_non_nullable
              as String,
      scene: null == scene
          ? _value.scene
          : scene // ignore: cast_nullable_to_non_nullable
              as PushCode,
      schoolCode: null == schoolCode
          ? _value.schoolCode
          : schoolCode // ignore: cast_nullable_to_non_nullable
              as String,
      classCode: null == classCode
          ? _value.classCode
          : classCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
      urgentType: null == urgentType
          ? _value.urgentType
          : urgentType // ignore: cast_nullable_to_non_nullable
              as UrgentType,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      createUser: null == createUser
          ? _value.createUser
          : createUser // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: freezed == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateUser: null == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as String,
      updateDate: freezed == updateDate
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl extends _NotificationModel {
  _$NotificationModelImpl(
      {@String2IntNullableJsonConverter() this.bizId,
      this.bizType = '',
      this.sendCid,
      this.messageId,
      @MessageTypeJsonConverter() this.messageType = MessageType.all,
      this.title = '',
      @JsonKey(name: 'imaUrl') this.image,
      this.content = '',
      this.otherParam = '',
      @JsonKey(name: 'pushType')
      @PushRangeJsonConverter()
      this.range = PushRange.unknown,
      this.readFlag = false,
      @DateTimeJsonConverter() this.readTime,
      this.senderCode = '',
      @SceneJsonConverter()
      @JsonKey(name: 'sceneCode')
      this.scene = PushCode.unknown,
      this.schoolCode = '',
      this.classCode = '',
      this.status = NotificationStatus.enable,
      this.urgentType = UrgentType.medium,
      @JsonKey(name: 'attribute') this.author = '',
      this.createUser = '',
      @JsonKey(name: 'createTime') @DateTimeJsonConverter() this.createDate,
      this.updateUser = '',
      @JsonKey(name: 'updateTime') @DateTimeJsonConverter() this.updateDate,
      @Int2BoolJsonConverter() this.isDeleted = false})
      : super._();

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  /// 业务id
  @override
  @String2IntNullableJsonConverter()
  int? bizId;

  /// 业务类型
  @override
  @JsonKey()
  String bizType;

  /// 业务id
  @override
  String? sendCid;

  /// 消息id
  @override
  int? messageId;

  /// 业务类型
  @override
  @JsonKey()
  @MessageTypeJsonConverter()
  MessageType messageType;

  /// 标题
  @override
  @JsonKey()
  String title;

  /// 封面
  @override
  @JsonKey(name: 'imaUrl')
  String? image;

  /// 内容
  @override
  @JsonKey()
  String content;

  /// 其余参数
  @override
  @JsonKey()
  String otherParam;

  /// 推送范围类型
  @override
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  PushRange range;

  /// 已读标记
  @override
  @JsonKey()
  bool readFlag;

  /// 已读时间
  @override
  @DateTimeJsonConverter()
  DateTime? readTime;

  /// 发送系统编码
  @override
  @JsonKey()
  String senderCode;

  /// 场景码
  @override
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode scene;

  /// 学校编码
  @override
  @JsonKey()
  String schoolCode;

  /// 班级编码
  @override
  @JsonKey()
  String classCode;

  /// 状态
  @override
  @JsonKey()
  NotificationStatus status;

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  @override
  @JsonKey()
  UrgentType urgentType;

  /// 消息作业(发布人)
  @override
  @JsonKey(name: 'attribute')
  String author;

  /// 创建人
  @override
  @JsonKey()
  String createUser;

  /// 创建时间
  @override
  @JsonKey(name: 'createTime')
  @DateTimeJsonConverter()
  DateTime? createDate;

  /// 更新人
  @override
  @JsonKey()
  String updateUser;

  /// 更新时间
  @override
  @JsonKey(name: 'updateTime')
  @DateTimeJsonConverter()
  DateTime? updateDate;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  bool isDeleted;

  @override
  String toString() {
    return 'NotificationModel(bizId: $bizId, bizType: $bizType, sendCid: $sendCid, messageId: $messageId, messageType: $messageType, title: $title, image: $image, content: $content, otherParam: $otherParam, range: $range, readFlag: $readFlag, readTime: $readTime, senderCode: $senderCode, scene: $scene, schoolCode: $schoolCode, classCode: $classCode, status: $status, urgentType: $urgentType, author: $author, createUser: $createUser, createDate: $createDate, updateUser: $updateUser, updateDate: $updateDate, isDeleted: $isDeleted)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  factory _NotificationModel(
      {@String2IntNullableJsonConverter() int? bizId,
      String bizType,
      String? sendCid,
      int? messageId,
      @MessageTypeJsonConverter() MessageType messageType,
      String title,
      @JsonKey(name: 'imaUrl') String? image,
      String content,
      String otherParam,
      @JsonKey(name: 'pushType') @PushRangeJsonConverter() PushRange range,
      bool readFlag,
      @DateTimeJsonConverter() DateTime? readTime,
      String senderCode,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode scene,
      String schoolCode,
      String classCode,
      NotificationStatus status,
      UrgentType urgentType,
      @JsonKey(name: 'attribute') String author,
      String createUser,
      @JsonKey(name: 'createTime')
      @DateTimeJsonConverter()
      DateTime? createDate,
      String updateUser,
      @JsonKey(name: 'updateTime')
      @DateTimeJsonConverter()
      DateTime? updateDate,
      @Int2BoolJsonConverter() bool isDeleted}) = _$NotificationModelImpl;
  _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override

  /// 业务id
  @String2IntNullableJsonConverter()
  int? get bizId;

  /// 业务id
  @String2IntNullableJsonConverter()
  set bizId(int? value);
  @override

  /// 业务类型
  String get bizType;

  /// 业务类型
  set bizType(String value);
  @override

  /// 业务id
  String? get sendCid;

  /// 业务id
  set sendCid(String? value);
  @override

  /// 消息id
  int? get messageId;

  /// 消息id
  set messageId(int? value);
  @override

  /// 业务类型
  @MessageTypeJsonConverter()
  MessageType get messageType;

  /// 业务类型
  @MessageTypeJsonConverter()
  set messageType(MessageType value);
  @override

  /// 标题
  String get title;

  /// 标题
  set title(String value);
  @override

  /// 封面
  @JsonKey(name: 'imaUrl')
  String? get image;

  /// 封面
  @JsonKey(name: 'imaUrl')
  set image(String? value);
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

  /// 推送范围类型
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  PushRange get range;

  /// 推送范围类型
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  set range(PushRange value);
  @override

  /// 已读标记
  bool get readFlag;

  /// 已读标记
  set readFlag(bool value);
  @override

  /// 已读时间
  @DateTimeJsonConverter()
  DateTime? get readTime;

  /// 已读时间
  @DateTimeJsonConverter()
  set readTime(DateTime? value);
  @override

  /// 发送系统编码
  String get senderCode;

  /// 发送系统编码
  set senderCode(String value);
  @override

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode get scene;

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  set scene(PushCode value);
  @override

  /// 学校编码
  String get schoolCode;

  /// 学校编码
  set schoolCode(String value);
  @override

  /// 班级编码
  String get classCode;

  /// 班级编码
  set classCode(String value);
  @override

  /// 状态
  NotificationStatus get status;

  /// 状态
  set status(NotificationStatus value);
  @override

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  UrgentType get urgentType;

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  set urgentType(UrgentType value);
  @override

  /// 消息作业(发布人)
  @JsonKey(name: 'attribute')
  String get author;

  /// 消息作业(发布人)
  @JsonKey(name: 'attribute')
  set author(String value);
  @override

  /// 创建人
  String get createUser;

  /// 创建人
  set createUser(String value);
  @override

  /// 创建时间
  @JsonKey(name: 'createTime')
  @DateTimeJsonConverter()
  DateTime? get createDate;

  /// 创建时间
  @JsonKey(name: 'createTime')
  @DateTimeJsonConverter()
  set createDate(DateTime? value);
  @override

  /// 更新人
  String get updateUser;

  /// 更新人
  set updateUser(String value);
  @override

  /// 更新时间
  @JsonKey(name: 'updateTime')
  @DateTimeJsonConverter()
  DateTime? get updateDate;

  /// 更新时间
  @JsonKey(name: 'updateTime')
  @DateTimeJsonConverter()
  set updateDate(DateTime? value);
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;

  /// 是否已删除
  @Int2BoolJsonConverter()
  set isDeleted(bool value);
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationSubmitReq _$NotificationSubmitReqFromJson(
    Map<String, dynamic> json) {
  return _NotificationSubmitReq.fromJson(json);
}

/// @nodoc
mixin _$NotificationSubmitReq {
  /// 通知id
  String get noticeId => throw _privateConstructorUsedError;

  /// 推送对象学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 状态: 0 => 未读 1 => 已读
  int get status => throw _privateConstructorUsedError;

  /// 确认签名: 0 => 未确认 1 => 已确认
  int get confirm => throw _privateConstructorUsedError;

  /// 签名url
  String? get signImg => throw _privateConstructorUsedError;

  /// 阅读时间
  String get readTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationSubmitReqCopyWith<NotificationSubmitReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSubmitReqCopyWith<$Res> {
  factory $NotificationSubmitReqCopyWith(NotificationSubmitReq value,
          $Res Function(NotificationSubmitReq) then) =
      _$NotificationSubmitReqCopyWithImpl<$Res, NotificationSubmitReq>;
  @useResult
  $Res call(
      {String noticeId,
      String studentCode,
      int status,
      int confirm,
      String? signImg,
      String readTime});
}

/// @nodoc
class _$NotificationSubmitReqCopyWithImpl<$Res,
        $Val extends NotificationSubmitReq>
    implements $NotificationSubmitReqCopyWith<$Res> {
  _$NotificationSubmitReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = null,
    Object? studentCode = null,
    Object? status = null,
    Object? confirm = null,
    Object? signImg = freezed,
    Object? readTime = null,
  }) {
    return _then(_value.copyWith(
      noticeId: null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      confirm: null == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as int,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      readTime: null == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSubmitReqImplCopyWith<$Res>
    implements $NotificationSubmitReqCopyWith<$Res> {
  factory _$$NotificationSubmitReqImplCopyWith(
          _$NotificationSubmitReqImpl value,
          $Res Function(_$NotificationSubmitReqImpl) then) =
      __$$NotificationSubmitReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String noticeId,
      String studentCode,
      int status,
      int confirm,
      String? signImg,
      String readTime});
}

/// @nodoc
class __$$NotificationSubmitReqImplCopyWithImpl<$Res>
    extends _$NotificationSubmitReqCopyWithImpl<$Res,
        _$NotificationSubmitReqImpl>
    implements _$$NotificationSubmitReqImplCopyWith<$Res> {
  __$$NotificationSubmitReqImplCopyWithImpl(_$NotificationSubmitReqImpl _value,
      $Res Function(_$NotificationSubmitReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = null,
    Object? studentCode = null,
    Object? status = null,
    Object? confirm = null,
    Object? signImg = freezed,
    Object? readTime = null,
  }) {
    return _then(_$NotificationSubmitReqImpl(
      noticeId: null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      confirm: null == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as int,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      readTime: null == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSubmitReqImpl extends _NotificationSubmitReq {
  const _$NotificationSubmitReqImpl(
      {required this.noticeId,
      required this.studentCode,
      required this.status,
      required this.confirm,
      this.signImg,
      required this.readTime})
      : super._();

  factory _$NotificationSubmitReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSubmitReqImplFromJson(json);

  /// 通知id
  @override
  final String noticeId;

  /// 推送对象学号
  @override
  final String studentCode;

  /// 状态: 0 => 未读 1 => 已读
  @override
  final int status;

  /// 确认签名: 0 => 未确认 1 => 已确认
  @override
  final int confirm;

  /// 签名url
  @override
  final String? signImg;

  /// 阅读时间
  @override
  final String readTime;

  @override
  String toString() {
    return 'NotificationSubmitReq(noticeId: $noticeId, studentCode: $studentCode, status: $status, confirm: $confirm, signImg: $signImg, readTime: $readTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSubmitReqImpl &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.confirm, confirm) || other.confirm == confirm) &&
            (identical(other.signImg, signImg) || other.signImg == signImg) &&
            (identical(other.readTime, readTime) ||
                other.readTime == readTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, noticeId, studentCode, status, confirm, signImg, readTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSubmitReqImplCopyWith<_$NotificationSubmitReqImpl>
      get copyWith => __$$NotificationSubmitReqImplCopyWithImpl<
          _$NotificationSubmitReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSubmitReqImplToJson(
      this,
    );
  }
}

abstract class _NotificationSubmitReq extends NotificationSubmitReq {
  const factory _NotificationSubmitReq(
      {required final String noticeId,
      required final String studentCode,
      required final int status,
      required final int confirm,
      final String? signImg,
      required final String readTime}) = _$NotificationSubmitReqImpl;
  const _NotificationSubmitReq._() : super._();

  factory _NotificationSubmitReq.fromJson(Map<String, dynamic> json) =
      _$NotificationSubmitReqImpl.fromJson;

  @override

  /// 通知id
  String get noticeId;
  @override

  /// 推送对象学号
  String get studentCode;
  @override

  /// 状态: 0 => 未读 1 => 已读
  int get status;
  @override

  /// 确认签名: 0 => 未确认 1 => 已确认
  int get confirm;
  @override

  /// 签名url
  String? get signImg;
  @override

  /// 阅读时间
  String get readTime;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSubmitReqImplCopyWith<_$NotificationSubmitReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationConfirmReq _$NotificationConfirmReqFromJson(
    Map<String, dynamic> json) {
  return _NotificationConfirmReq.fromJson(json);
}

/// @nodoc
mixin _$NotificationConfirmReq {
  /// 学号
  String get studentCode => throw _privateConstructorUsedError;

  /// 通知id
  String get noticeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationConfirmReqCopyWith<NotificationConfirmReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationConfirmReqCopyWith<$Res> {
  factory $NotificationConfirmReqCopyWith(NotificationConfirmReq value,
          $Res Function(NotificationConfirmReq) then) =
      _$NotificationConfirmReqCopyWithImpl<$Res, NotificationConfirmReq>;
  @useResult
  $Res call({String studentCode, String noticeId});
}

/// @nodoc
class _$NotificationConfirmReqCopyWithImpl<$Res,
        $Val extends NotificationConfirmReq>
    implements $NotificationConfirmReqCopyWith<$Res> {
  _$NotificationConfirmReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? noticeId = null,
  }) {
    return _then(_value.copyWith(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      noticeId: null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationConfirmReqImplCopyWith<$Res>
    implements $NotificationConfirmReqCopyWith<$Res> {
  factory _$$NotificationConfirmReqImplCopyWith(
          _$NotificationConfirmReqImpl value,
          $Res Function(_$NotificationConfirmReqImpl) then) =
      __$$NotificationConfirmReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studentCode, String noticeId});
}

/// @nodoc
class __$$NotificationConfirmReqImplCopyWithImpl<$Res>
    extends _$NotificationConfirmReqCopyWithImpl<$Res,
        _$NotificationConfirmReqImpl>
    implements _$$NotificationConfirmReqImplCopyWith<$Res> {
  __$$NotificationConfirmReqImplCopyWithImpl(
      _$NotificationConfirmReqImpl _value,
      $Res Function(_$NotificationConfirmReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentCode = null,
    Object? noticeId = null,
  }) {
    return _then(_$NotificationConfirmReqImpl(
      studentCode: null == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String,
      noticeId: null == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationConfirmReqImpl extends _NotificationConfirmReq {
  const _$NotificationConfirmReqImpl(
      {required this.studentCode, required this.noticeId})
      : super._();

  factory _$NotificationConfirmReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationConfirmReqImplFromJson(json);

  /// 学号
  @override
  final String studentCode;

  /// 通知id
  @override
  final String noticeId;

  @override
  String toString() {
    return 'NotificationConfirmReq(studentCode: $studentCode, noticeId: $noticeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationConfirmReqImpl &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentCode, noticeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationConfirmReqImplCopyWith<_$NotificationConfirmReqImpl>
      get copyWith => __$$NotificationConfirmReqImplCopyWithImpl<
          _$NotificationConfirmReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationConfirmReqImplToJson(
      this,
    );
  }
}

abstract class _NotificationConfirmReq extends NotificationConfirmReq {
  const factory _NotificationConfirmReq(
      {required final String studentCode,
      required final String noticeId}) = _$NotificationConfirmReqImpl;
  const _NotificationConfirmReq._() : super._();

  factory _NotificationConfirmReq.fromJson(Map<String, dynamic> json) =
      _$NotificationConfirmReqImpl.fromJson;

  @override

  /// 学号
  String get studentCode;
  @override

  /// 通知id
  String get noticeId;
  @override
  @JsonKey(ignore: true)
  _$$NotificationConfirmReqImplCopyWith<_$NotificationConfirmReqImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationConfirmModel _$NotificationConfirmModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationConfirmModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationConfirmModel {
  /// 通知id
  int? get noticeId => throw _privateConstructorUsedError;

  /// 通知对象id
  int? get targetId => throw _privateConstructorUsedError;

  /// 学生姓名
  @JsonKey(name: 'stuName')
  String? get studentName => throw _privateConstructorUsedError;

  /// 学段姓名
  String? get periodName => throw _privateConstructorUsedError;

  /// 课程姓名
  String? get courseName => throw _privateConstructorUsedError;

  /// 年级姓名
  String? get gradeName => throw _privateConstructorUsedError;

  /// 班级姓名
  String? get className => throw _privateConstructorUsedError;

  /// 学号
  @JsonKey(name: 'stuNum')
  String? get studentCode => throw _privateConstructorUsedError;

  /// 通知已读状态
  @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
  NotificationReadStatus get readStatus => throw _privateConstructorUsedError;

  /// 通知签名状态
  @JsonKey(name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
  NotificationSignStatus get confirmStatus =>
      throw _privateConstructorUsedError;

  /// 签名图url
  String? get signImg => throw _privateConstructorUsedError;

  /// 已读时间
  @DateTimeJsonConverter()
  DateTime? get readTime => throw _privateConstructorUsedError;

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime => throw _privateConstructorUsedError;

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationConfirmModelCopyWith<NotificationConfirmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationConfirmModelCopyWith<$Res> {
  factory $NotificationConfirmModelCopyWith(NotificationConfirmModel value,
          $Res Function(NotificationConfirmModel) then) =
      _$NotificationConfirmModelCopyWithImpl<$Res, NotificationConfirmModel>;
  @useResult
  $Res call(
      {int? noticeId,
      int? targetId,
      @JsonKey(name: 'stuName') String? studentName,
      String? periodName,
      String? courseName,
      String? gradeName,
      String? className,
      @JsonKey(name: 'stuNum') String? studentCode,
      @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
      NotificationReadStatus readStatus,
      @JsonKey(
          name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
      NotificationSignStatus confirmStatus,
      String? signImg,
      @DateTimeJsonConverter() DateTime? readTime,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class _$NotificationConfirmModelCopyWithImpl<$Res,
        $Val extends NotificationConfirmModel>
    implements $NotificationConfirmModelCopyWith<$Res> {
  _$NotificationConfirmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = freezed,
    Object? targetId = freezed,
    Object? studentName = freezed,
    Object? periodName = freezed,
    Object? courseName = freezed,
    Object? gradeName = freezed,
    Object? className = freezed,
    Object? studentCode = freezed,
    Object? readStatus = null,
    Object? confirmStatus = null,
    Object? signImg = freezed,
    Object? readTime = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_value.copyWith(
      noticeId: freezed == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      periodName: freezed == periodName
          ? _value.periodName
          : periodName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeName: freezed == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      readStatus: null == readStatus
          ? _value.readStatus
          : readStatus // ignore: cast_nullable_to_non_nullable
              as NotificationReadStatus,
      confirmStatus: null == confirmStatus
          ? _value.confirmStatus
          : confirmStatus // ignore: cast_nullable_to_non_nullable
              as NotificationSignStatus,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      readTime: freezed == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationConfirmModelImplCopyWith<$Res>
    implements $NotificationConfirmModelCopyWith<$Res> {
  factory _$$NotificationConfirmModelImplCopyWith(
          _$NotificationConfirmModelImpl value,
          $Res Function(_$NotificationConfirmModelImpl) then) =
      __$$NotificationConfirmModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? noticeId,
      int? targetId,
      @JsonKey(name: 'stuName') String? studentName,
      String? periodName,
      String? courseName,
      String? gradeName,
      String? className,
      @JsonKey(name: 'stuNum') String? studentCode,
      @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
      NotificationReadStatus readStatus,
      @JsonKey(
          name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
      NotificationSignStatus confirmStatus,
      String? signImg,
      @DateTimeJsonConverter() DateTime? readTime,
      @DateTimeJsonConverter() DateTime? createTime,
      @DateTimeJsonConverter() DateTime? updateTime});
}

/// @nodoc
class __$$NotificationConfirmModelImplCopyWithImpl<$Res>
    extends _$NotificationConfirmModelCopyWithImpl<$Res,
        _$NotificationConfirmModelImpl>
    implements _$$NotificationConfirmModelImplCopyWith<$Res> {
  __$$NotificationConfirmModelImplCopyWithImpl(
      _$NotificationConfirmModelImpl _value,
      $Res Function(_$NotificationConfirmModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeId = freezed,
    Object? targetId = freezed,
    Object? studentName = freezed,
    Object? periodName = freezed,
    Object? courseName = freezed,
    Object? gradeName = freezed,
    Object? className = freezed,
    Object? studentCode = freezed,
    Object? readStatus = null,
    Object? confirmStatus = null,
    Object? signImg = freezed,
    Object? readTime = freezed,
    Object? createTime = freezed,
    Object? updateTime = freezed,
  }) {
    return _then(_$NotificationConfirmModelImpl(
      noticeId: freezed == noticeId
          ? _value.noticeId
          : noticeId // ignore: cast_nullable_to_non_nullable
              as int?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentName: freezed == studentName
          ? _value.studentName
          : studentName // ignore: cast_nullable_to_non_nullable
              as String?,
      periodName: freezed == periodName
          ? _value.periodName
          : periodName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      gradeName: freezed == gradeName
          ? _value.gradeName
          : gradeName // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
      studentCode: freezed == studentCode
          ? _value.studentCode
          : studentCode // ignore: cast_nullable_to_non_nullable
              as String?,
      readStatus: null == readStatus
          ? _value.readStatus
          : readStatus // ignore: cast_nullable_to_non_nullable
              as NotificationReadStatus,
      confirmStatus: null == confirmStatus
          ? _value.confirmStatus
          : confirmStatus // ignore: cast_nullable_to_non_nullable
              as NotificationSignStatus,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      readTime: freezed == readTime
          ? _value.readTime
          : readTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createTime: freezed == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateTime: freezed == updateTime
          ? _value.updateTime
          : updateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationConfirmModelImpl extends _NotificationConfirmModel {
  const _$NotificationConfirmModelImpl(
      {this.noticeId,
      this.targetId,
      @JsonKey(name: 'stuName') this.studentName,
      this.periodName,
      this.courseName,
      this.gradeName,
      this.className,
      @JsonKey(name: 'stuNum') this.studentCode,
      @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
      this.readStatus = NotificationReadStatus.unread,
      @JsonKey(
          name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
      this.confirmStatus = NotificationSignStatus.unsigned,
      this.signImg,
      @DateTimeJsonConverter() this.readTime,
      @DateTimeJsonConverter() this.createTime,
      @DateTimeJsonConverter() this.updateTime})
      : super._();

  factory _$NotificationConfirmModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationConfirmModelImplFromJson(json);

  /// 通知id
  @override
  final int? noticeId;

  /// 通知对象id
  @override
  final int? targetId;

  /// 学生姓名
  @override
  @JsonKey(name: 'stuName')
  final String? studentName;

  /// 学段姓名
  @override
  final String? periodName;

  /// 课程姓名
  @override
  final String? courseName;

  /// 年级姓名
  @override
  final String? gradeName;

  /// 班级姓名
  @override
  final String? className;

  /// 学号
  @override
  @JsonKey(name: 'stuNum')
  final String? studentCode;

  /// 通知已读状态
  @override
  @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
  final NotificationReadStatus readStatus;

  /// 通知签名状态
  @override
  @JsonKey(name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
  final NotificationSignStatus confirmStatus;

  /// 签名图url
  @override
  final String? signImg;

  /// 已读时间
  @override
  @DateTimeJsonConverter()
  final DateTime? readTime;

  /// 创建时间
  @override
  @DateTimeJsonConverter()
  final DateTime? createTime;

  /// 更新时间
  @override
  @DateTimeJsonConverter()
  final DateTime? updateTime;

  @override
  String toString() {
    return 'NotificationConfirmModel(noticeId: $noticeId, targetId: $targetId, studentName: $studentName, periodName: $periodName, courseName: $courseName, gradeName: $gradeName, className: $className, studentCode: $studentCode, readStatus: $readStatus, confirmStatus: $confirmStatus, signImg: $signImg, readTime: $readTime, createTime: $createTime, updateTime: $updateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationConfirmModelImpl &&
            (identical(other.noticeId, noticeId) ||
                other.noticeId == noticeId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.periodName, periodName) ||
                other.periodName == periodName) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.gradeName, gradeName) ||
                other.gradeName == gradeName) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.readStatus, readStatus) ||
                other.readStatus == readStatus) &&
            (identical(other.confirmStatus, confirmStatus) ||
                other.confirmStatus == confirmStatus) &&
            (identical(other.signImg, signImg) || other.signImg == signImg) &&
            (identical(other.readTime, readTime) ||
                other.readTime == readTime) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      noticeId,
      targetId,
      studentName,
      periodName,
      courseName,
      gradeName,
      className,
      studentCode,
      readStatus,
      confirmStatus,
      signImg,
      readTime,
      createTime,
      updateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationConfirmModelImplCopyWith<_$NotificationConfirmModelImpl>
      get copyWith => __$$NotificationConfirmModelImplCopyWithImpl<
          _$NotificationConfirmModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationConfirmModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationConfirmModel extends NotificationConfirmModel {
  const factory _NotificationConfirmModel(
      {final int? noticeId,
      final int? targetId,
      @JsonKey(name: 'stuName') final String? studentName,
      final String? periodName,
      final String? courseName,
      final String? gradeName,
      final String? className,
      @JsonKey(name: 'stuNum') final String? studentCode,
      @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
      final NotificationReadStatus readStatus,
      @JsonKey(
          name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
      final NotificationSignStatus confirmStatus,
      final String? signImg,
      @DateTimeJsonConverter() final DateTime? readTime,
      @DateTimeJsonConverter() final DateTime? createTime,
      @DateTimeJsonConverter()
      final DateTime? updateTime}) = _$NotificationConfirmModelImpl;
  const _NotificationConfirmModel._() : super._();

  factory _NotificationConfirmModel.fromJson(Map<String, dynamic> json) =
      _$NotificationConfirmModelImpl.fromJson;

  @override

  /// 通知id
  int? get noticeId;
  @override

  /// 通知对象id
  int? get targetId;
  @override

  /// 学生姓名
  @JsonKey(name: 'stuName')
  String? get studentName;
  @override

  /// 学段姓名
  String? get periodName;
  @override

  /// 课程姓名
  String? get courseName;
  @override

  /// 年级姓名
  String? get gradeName;
  @override

  /// 班级姓名
  String? get className;
  @override

  /// 学号
  @JsonKey(name: 'stuNum')
  String? get studentCode;
  @override

  /// 通知已读状态
  @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
  NotificationReadStatus get readStatus;
  @override

  /// 通知签名状态
  @JsonKey(name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
  NotificationSignStatus get confirmStatus;
  @override

  /// 签名图url
  String? get signImg;
  @override

  /// 已读时间
  @DateTimeJsonConverter()
  DateTime? get readTime;
  @override

  /// 创建时间
  @DateTimeJsonConverter()
  DateTime? get createTime;
  @override

  /// 更新时间
  @DateTimeJsonConverter()
  DateTime? get updateTime;
  @override
  @JsonKey(ignore: true)
  _$$NotificationConfirmModelImplCopyWith<_$NotificationConfirmModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationOtherParam _$NotificationOtherParamFromJson(
    Map<String, dynamic> json) {
  return _NotificationOtherParam.fromJson(json);
}

/// @nodoc
mixin _$NotificationOtherParam {
  /// 是否需要确认
  @String2BoolJsonConverter()
  bool get needConfirm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationOtherParamCopyWith<NotificationOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationOtherParamCopyWith<$Res> {
  factory $NotificationOtherParamCopyWith(NotificationOtherParam value,
          $Res Function(NotificationOtherParam) then) =
      _$NotificationOtherParamCopyWithImpl<$Res, NotificationOtherParam>;
  @useResult
  $Res call({@String2BoolJsonConverter() bool needConfirm});
}

/// @nodoc
class _$NotificationOtherParamCopyWithImpl<$Res,
        $Val extends NotificationOtherParam>
    implements $NotificationOtherParamCopyWith<$Res> {
  _$NotificationOtherParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needConfirm = null,
  }) {
    return _then(_value.copyWith(
      needConfirm: null == needConfirm
          ? _value.needConfirm
          : needConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationOtherParamImplCopyWith<$Res>
    implements $NotificationOtherParamCopyWith<$Res> {
  factory _$$NotificationOtherParamImplCopyWith(
          _$NotificationOtherParamImpl value,
          $Res Function(_$NotificationOtherParamImpl) then) =
      __$$NotificationOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@String2BoolJsonConverter() bool needConfirm});
}

/// @nodoc
class __$$NotificationOtherParamImplCopyWithImpl<$Res>
    extends _$NotificationOtherParamCopyWithImpl<$Res,
        _$NotificationOtherParamImpl>
    implements _$$NotificationOtherParamImplCopyWith<$Res> {
  __$$NotificationOtherParamImplCopyWithImpl(
      _$NotificationOtherParamImpl _value,
      $Res Function(_$NotificationOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needConfirm = null,
  }) {
    return _then(_$NotificationOtherParamImpl(
      needConfirm: null == needConfirm
          ? _value.needConfirm
          : needConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationOtherParamImpl extends _NotificationOtherParam {
  const _$NotificationOtherParamImpl(
      {@String2BoolJsonConverter() this.needConfirm = false})
      : super._();

  factory _$NotificationOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationOtherParamImplFromJson(json);

  /// 是否需要确认
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool needConfirm;

  @override
  String toString() {
    return 'NotificationOtherParam(needConfirm: $needConfirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationOtherParamImpl &&
            (identical(other.needConfirm, needConfirm) ||
                other.needConfirm == needConfirm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, needConfirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationOtherParamImplCopyWith<_$NotificationOtherParamImpl>
      get copyWith => __$$NotificationOtherParamImplCopyWithImpl<
          _$NotificationOtherParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationOtherParamImplToJson(
      this,
    );
  }
}

abstract class _NotificationOtherParam extends NotificationOtherParam {
  const factory _NotificationOtherParam(
          {@String2BoolJsonConverter() final bool needConfirm}) =
      _$NotificationOtherParamImpl;
  const _NotificationOtherParam._() : super._();

  factory _NotificationOtherParam.fromJson(Map<String, dynamic> json) =
      _$NotificationOtherParamImpl.fromJson;

  @override

  /// 是否需要确认
  @String2BoolJsonConverter()
  bool get needConfirm;
  @override
  @JsonKey(ignore: true)
  _$$NotificationOtherParamImplCopyWith<_$NotificationOtherParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}
