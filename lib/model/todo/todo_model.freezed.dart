// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  /// 业务id
  String get bizId => throw _privateConstructorUsedError;

  /// 业务类型
  String get bizType => throw _privateConstructorUsedError;

  /// 发送方id
  String get sendCid => throw _privateConstructorUsedError;

  /// 消息id
  int? get messageId => throw _privateConstructorUsedError;

  /// 消息分类
  String get messageType => throw _privateConstructorUsedError;

  /// 标题
  String get title => throw _privateConstructorUsedError;

  /// 封面
  @JsonKey(name: 'imaUrl')
  String? get image => throw _privateConstructorUsedError;

  /// 内容
  String get content => throw _privateConstructorUsedError;

  /// 类型
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  PushType get notificationType => throw _privateConstructorUsedError;

  /// 其余参数
  String get otherParam => throw _privateConstructorUsedError;

  /// 推送范围类型
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  PushRange get range => throw _privateConstructorUsedError;

  /// 已读标记
  bool get readFlag => throw _privateConstructorUsedError;

  /// 已读时间
  @SimpleDateTimeJsonConverter()
  DateTime? get readTime => throw _privateConstructorUsedError;

  /// 发送系统编码
  String get senderCode => throw _privateConstructorUsedError;

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode get scene => throw _privateConstructorUsedError;

  /// 学校编码
  String get schoolCode => throw _privateConstructorUsedError;

  /// 班级编码
  String get classCode => throw _privateConstructorUsedError;

  /// 状态
  TodoStatus get status => throw _privateConstructorUsedError;

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  UrgentType get urgentType => throw _privateConstructorUsedError;

  /// 创建人
  String get createUser => throw _privateConstructorUsedError;

  /// 创建时间
  @JsonKey(name: 'createTime')
  @SimpleDateTimeJsonConverter()
  DateTime? get createDate => throw _privateConstructorUsedError;

  /// 更新人
  String get updateUser => throw _privateConstructorUsedError;

  /// 更新时间
  @JsonKey(name: 'updateTime')
  @SimpleDateTimeJsonConverter()
  DateTime? get updateDate => throw _privateConstructorUsedError;

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res, TodoModel>;
  @useResult
  $Res call(
      {String bizId,
      String bizType,
      String sendCid,
      int? messageId,
      String messageType,
      String title,
      @JsonKey(name: 'imaUrl') String? image,
      String content,
      @JsonKey(name: 'noticeType')
      @PushTypeJsonConverter()
      PushType notificationType,
      String otherParam,
      @JsonKey(name: 'pushType') @PushRangeJsonConverter() PushRange range,
      bool readFlag,
      @SimpleDateTimeJsonConverter() DateTime? readTime,
      String senderCode,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode scene,
      String schoolCode,
      String classCode,
      TodoStatus status,
      UrgentType urgentType,
      String createUser,
      @JsonKey(name: 'createTime')
      @SimpleDateTimeJsonConverter()
      DateTime? createDate,
      String updateUser,
      @JsonKey(name: 'updateTime')
      @SimpleDateTimeJsonConverter()
      DateTime? updateDate,
      @Int2BoolJsonConverter() bool isDeleted});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res, $Val extends TodoModel>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizId = null,
    Object? bizType = null,
    Object? sendCid = null,
    Object? messageId = freezed,
    Object? messageType = null,
    Object? title = null,
    Object? image = freezed,
    Object? content = null,
    Object? notificationType = null,
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
    Object? createUser = null,
    Object? createDate = freezed,
    Object? updateUser = null,
    Object? updateDate = freezed,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      bizId: null == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as String,
      bizType: null == bizType
          ? _value.bizType
          : bizType // ignore: cast_nullable_to_non_nullable
              as String,
      sendCid: null == sendCid
          ? _value.sendCid
          : sendCid // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
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
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as PushType,
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
              as TodoStatus,
      urgentType: null == urgentType
          ? _value.urgentType
          : urgentType // ignore: cast_nullable_to_non_nullable
              as UrgentType,
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
abstract class _$$TodoModelImplCopyWith<$Res>
    implements $TodoModelCopyWith<$Res> {
  factory _$$TodoModelImplCopyWith(
          _$TodoModelImpl value, $Res Function(_$TodoModelImpl) then) =
      __$$TodoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bizId,
      String bizType,
      String sendCid,
      int? messageId,
      String messageType,
      String title,
      @JsonKey(name: 'imaUrl') String? image,
      String content,
      @JsonKey(name: 'noticeType')
      @PushTypeJsonConverter()
      PushType notificationType,
      String otherParam,
      @JsonKey(name: 'pushType') @PushRangeJsonConverter() PushRange range,
      bool readFlag,
      @SimpleDateTimeJsonConverter() DateTime? readTime,
      String senderCode,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') PushCode scene,
      String schoolCode,
      String classCode,
      TodoStatus status,
      UrgentType urgentType,
      String createUser,
      @JsonKey(name: 'createTime')
      @SimpleDateTimeJsonConverter()
      DateTime? createDate,
      String updateUser,
      @JsonKey(name: 'updateTime')
      @SimpleDateTimeJsonConverter()
      DateTime? updateDate,
      @Int2BoolJsonConverter() bool isDeleted});
}

/// @nodoc
class __$$TodoModelImplCopyWithImpl<$Res>
    extends _$TodoModelCopyWithImpl<$Res, _$TodoModelImpl>
    implements _$$TodoModelImplCopyWith<$Res> {
  __$$TodoModelImplCopyWithImpl(
      _$TodoModelImpl _value, $Res Function(_$TodoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bizId = null,
    Object? bizType = null,
    Object? sendCid = null,
    Object? messageId = freezed,
    Object? messageType = null,
    Object? title = null,
    Object? image = freezed,
    Object? content = null,
    Object? notificationType = null,
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
    Object? createUser = null,
    Object? createDate = freezed,
    Object? updateUser = null,
    Object? updateDate = freezed,
    Object? isDeleted = null,
  }) {
    return _then(_$TodoModelImpl(
      bizId: null == bizId
          ? _value.bizId
          : bizId // ignore: cast_nullable_to_non_nullable
              as String,
      bizType: null == bizType
          ? _value.bizType
          : bizType // ignore: cast_nullable_to_non_nullable
              as String,
      sendCid: null == sendCid
          ? _value.sendCid
          : sendCid // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
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
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as PushType,
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
              as TodoStatus,
      urgentType: null == urgentType
          ? _value.urgentType
          : urgentType // ignore: cast_nullable_to_non_nullable
              as UrgentType,
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
class _$TodoModelImpl extends _TodoModel {
  const _$TodoModelImpl(
      {this.bizId = '',
      this.bizType = '',
      this.sendCid = '',
      this.messageId,
      this.messageType = '',
      this.title = '',
      @JsonKey(name: 'imaUrl') this.image,
      this.content = '',
      @JsonKey(name: 'noticeType')
      @PushTypeJsonConverter()
      this.notificationType = PushType.unknown,
      this.otherParam = '',
      @JsonKey(name: 'pushType')
      @PushRangeJsonConverter()
      this.range = PushRange.unknown,
      this.readFlag = false,
      @SimpleDateTimeJsonConverter() this.readTime,
      this.senderCode = '',
      @SceneJsonConverter()
      @JsonKey(name: 'sceneCode')
      this.scene = PushCode.unknown,
      this.schoolCode = '',
      this.classCode = '',
      this.status = TodoStatus.enable,
      this.urgentType = UrgentType.medium,
      this.createUser = '',
      @JsonKey(name: 'createTime')
      @SimpleDateTimeJsonConverter()
      this.createDate,
      this.updateUser = '',
      @JsonKey(name: 'updateTime')
      @SimpleDateTimeJsonConverter()
      this.updateDate,
      @Int2BoolJsonConverter() this.isDeleted = false})
      : super._();

  factory _$TodoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoModelImplFromJson(json);

  /// 业务id
  @override
  @JsonKey()
  final String bizId;

  /// 业务类型
  @override
  @JsonKey()
  final String bizType;

  /// 发送方id
  @override
  @JsonKey()
  final String sendCid;

  /// 消息id
  @override
  final int? messageId;

  /// 消息分类
  @override
  @JsonKey()
  final String messageType;

  /// 标题
  @override
  @JsonKey()
  final String title;

  /// 封面
  @override
  @JsonKey(name: 'imaUrl')
  final String? image;

  /// 内容
  @override
  @JsonKey()
  final String content;

  /// 类型
  @override
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  final PushType notificationType;

  /// 其余参数
  @override
  @JsonKey()
  final String otherParam;

  /// 推送范围类型
  @override
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  final PushRange range;

  /// 已读标记
  @override
  @JsonKey()
  final bool readFlag;

  /// 已读时间
  @override
  @SimpleDateTimeJsonConverter()
  final DateTime? readTime;

  /// 发送系统编码
  @override
  @JsonKey()
  final String senderCode;

  /// 场景码
  @override
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  final PushCode scene;

  /// 学校编码
  @override
  @JsonKey()
  final String schoolCode;

  /// 班级编码
  @override
  @JsonKey()
  final String classCode;

  /// 状态
  @override
  @JsonKey()
  final TodoStatus status;

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  @override
  @JsonKey()
  final UrgentType urgentType;

  /// 创建人
  @override
  @JsonKey()
  final String createUser;

  /// 创建时间
  @override
  @JsonKey(name: 'createTime')
  @SimpleDateTimeJsonConverter()
  final DateTime? createDate;

  /// 更新人
  @override
  @JsonKey()
  final String updateUser;

  /// 更新时间
  @override
  @JsonKey(name: 'updateTime')
  @SimpleDateTimeJsonConverter()
  final DateTime? updateDate;

  /// 是否已删除
  @override
  @JsonKey()
  @Int2BoolJsonConverter()
  final bool isDeleted;

  @override
  String toString() {
    return 'TodoModel(bizId: $bizId, bizType: $bizType, sendCid: $sendCid, messageId: $messageId, messageType: $messageType, title: $title, image: $image, content: $content, notificationType: $notificationType, otherParam: $otherParam, range: $range, readFlag: $readFlag, readTime: $readTime, senderCode: $senderCode, scene: $scene, schoolCode: $schoolCode, classCode: $classCode, status: $status, urgentType: $urgentType, createUser: $createUser, createDate: $createDate, updateUser: $updateUser, updateDate: $updateDate, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoModelImpl &&
            (identical(other.bizId, bizId) || other.bizId == bizId) &&
            (identical(other.bizType, bizType) || other.bizType == bizType) &&
            (identical(other.sendCid, sendCid) || other.sendCid == sendCid) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.otherParam, otherParam) ||
                other.otherParam == otherParam) &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.readFlag, readFlag) ||
                other.readFlag == readFlag) &&
            (identical(other.readTime, readTime) ||
                other.readTime == readTime) &&
            (identical(other.senderCode, senderCode) ||
                other.senderCode == senderCode) &&
            (identical(other.scene, scene) || other.scene == scene) &&
            (identical(other.schoolCode, schoolCode) ||
                other.schoolCode == schoolCode) &&
            (identical(other.classCode, classCode) ||
                other.classCode == classCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.urgentType, urgentType) ||
                other.urgentType == urgentType) &&
            (identical(other.createUser, createUser) ||
                other.createUser == createUser) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        bizId,
        bizType,
        sendCid,
        messageId,
        messageType,
        title,
        image,
        content,
        notificationType,
        otherParam,
        range,
        readFlag,
        readTime,
        senderCode,
        scene,
        schoolCode,
        classCode,
        status,
        urgentType,
        createUser,
        createDate,
        updateUser,
        updateDate,
        isDeleted
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      __$$TodoModelImplCopyWithImpl<_$TodoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoModelImplToJson(
      this,
    );
  }
}

abstract class _TodoModel extends TodoModel {
  const factory _TodoModel(
      {final String bizId,
      final String bizType,
      final String sendCid,
      final int? messageId,
      final String messageType,
      final String title,
      @JsonKey(name: 'imaUrl') final String? image,
      final String content,
      @JsonKey(name: 'noticeType')
      @PushTypeJsonConverter()
      final PushType notificationType,
      final String otherParam,
      @JsonKey(name: 'pushType')
      @PushRangeJsonConverter()
      final PushRange range,
      final bool readFlag,
      @SimpleDateTimeJsonConverter() final DateTime? readTime,
      final String senderCode,
      @SceneJsonConverter() @JsonKey(name: 'sceneCode') final PushCode scene,
      final String schoolCode,
      final String classCode,
      final TodoStatus status,
      final UrgentType urgentType,
      final String createUser,
      @JsonKey(name: 'createTime')
      @SimpleDateTimeJsonConverter()
      final DateTime? createDate,
      final String updateUser,
      @JsonKey(name: 'updateTime')
      @SimpleDateTimeJsonConverter()
      final DateTime? updateDate,
      @Int2BoolJsonConverter() final bool isDeleted}) = _$TodoModelImpl;
  const _TodoModel._() : super._();

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$TodoModelImpl.fromJson;

  @override

  /// 业务id
  String get bizId;
  @override

  /// 业务类型
  String get bizType;
  @override

  /// 发送方id
  String get sendCid;
  @override

  /// 消息id
  int? get messageId;
  @override

  /// 消息分类
  String get messageType;
  @override

  /// 标题
  String get title;
  @override

  /// 封面
  @JsonKey(name: 'imaUrl')
  String? get image;
  @override

  /// 内容
  String get content;
  @override

  /// 类型
  @JsonKey(name: 'noticeType')
  @PushTypeJsonConverter()
  PushType get notificationType;
  @override

  /// 其余参数
  String get otherParam;
  @override

  /// 推送范围类型
  @JsonKey(name: 'pushType')
  @PushRangeJsonConverter()
  PushRange get range;
  @override

  /// 已读标记
  bool get readFlag;
  @override

  /// 已读时间
  @SimpleDateTimeJsonConverter()
  DateTime? get readTime;
  @override

  /// 发送系统编码
  String get senderCode;
  @override

  /// 场景码
  @SceneJsonConverter()
  @JsonKey(name: 'sceneCode')
  PushCode get scene;
  @override

  /// 学校编码
  String get schoolCode;
  @override

  /// 班级编码
  String get classCode;
  @override

  /// 状态
  TodoStatus get status;
  @override

  /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
  UrgentType get urgentType;
  @override

  /// 创建人
  String get createUser;
  @override

  /// 创建时间
  @JsonKey(name: 'createTime')
  @SimpleDateTimeJsonConverter()
  DateTime? get createDate;
  @override

  /// 更新人
  String get updateUser;
  @override

  /// 更新时间
  @JsonKey(name: 'updateTime')
  @SimpleDateTimeJsonConverter()
  DateTime? get updateDate;
  @override

  /// 是否已删除
  @Int2BoolJsonConverter()
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$TodoModelImplCopyWith<_$TodoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TodoOtherParam _$TodoOtherParamFromJson(Map<String, dynamic> json) {
  return _TodoOtherParam.fromJson(json);
}

/// @nodoc
mixin _$TodoOtherParam {
  /// 是否需要确认
  @String2BoolJsonConverter()
  bool get needConfirm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoOtherParamCopyWith<TodoOtherParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoOtherParamCopyWith<$Res> {
  factory $TodoOtherParamCopyWith(
          TodoOtherParam value, $Res Function(TodoOtherParam) then) =
      _$TodoOtherParamCopyWithImpl<$Res, TodoOtherParam>;
  @useResult
  $Res call({@String2BoolJsonConverter() bool needConfirm});
}

/// @nodoc
class _$TodoOtherParamCopyWithImpl<$Res, $Val extends TodoOtherParam>
    implements $TodoOtherParamCopyWith<$Res> {
  _$TodoOtherParamCopyWithImpl(this._value, this._then);

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
abstract class _$$TodoOtherParamImplCopyWith<$Res>
    implements $TodoOtherParamCopyWith<$Res> {
  factory _$$TodoOtherParamImplCopyWith(_$TodoOtherParamImpl value,
          $Res Function(_$TodoOtherParamImpl) then) =
      __$$TodoOtherParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@String2BoolJsonConverter() bool needConfirm});
}

/// @nodoc
class __$$TodoOtherParamImplCopyWithImpl<$Res>
    extends _$TodoOtherParamCopyWithImpl<$Res, _$TodoOtherParamImpl>
    implements _$$TodoOtherParamImplCopyWith<$Res> {
  __$$TodoOtherParamImplCopyWithImpl(
      _$TodoOtherParamImpl _value, $Res Function(_$TodoOtherParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needConfirm = null,
  }) {
    return _then(_$TodoOtherParamImpl(
      needConfirm: null == needConfirm
          ? _value.needConfirm
          : needConfirm // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoOtherParamImpl extends _TodoOtherParam {
  const _$TodoOtherParamImpl(
      {@String2BoolJsonConverter() this.needConfirm = false})
      : super._();

  factory _$TodoOtherParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoOtherParamImplFromJson(json);

  /// 是否需要确认
  @override
  @JsonKey()
  @String2BoolJsonConverter()
  final bool needConfirm;

  @override
  String toString() {
    return 'TodoOtherParam(needConfirm: $needConfirm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoOtherParamImpl &&
            (identical(other.needConfirm, needConfirm) ||
                other.needConfirm == needConfirm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, needConfirm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoOtherParamImplCopyWith<_$TodoOtherParamImpl> get copyWith =>
      __$$TodoOtherParamImplCopyWithImpl<_$TodoOtherParamImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoOtherParamImplToJson(
      this,
    );
  }
}

abstract class _TodoOtherParam extends TodoOtherParam {
  const factory _TodoOtherParam(
          {@String2BoolJsonConverter() final bool needConfirm}) =
      _$TodoOtherParamImpl;
  const _TodoOtherParam._() : super._();

  factory _TodoOtherParam.fromJson(Map<String, dynamic> json) =
      _$TodoOtherParamImpl.fromJson;

  @override

  /// 是否需要确认
  @String2BoolJsonConverter()
  bool get needConfirm;
  @override
  @JsonKey(ignore: true)
  _$$TodoOtherParamImplCopyWith<_$TodoOtherParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
