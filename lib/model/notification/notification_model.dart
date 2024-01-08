import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/converter/datetime_converter.dart';
import 'package:bsl/model/converter/int2bool_converter.dart';
import 'package:bsl/model/converter/notification/message_type_converter.dart';
import 'package:bsl/model/converter/push_converter.dart';
import 'package:bsl/model/converter/scene_converter.dart';
import 'package:bsl/model/converter/string2bool_converter.dart';
import 'package:bsl/model/converter/string2int_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

enum PushRange {
  unknown,
  school,
  grade,
  student,
}

enum MessageType {
  all(''),
  classMessage('班级通知'),
  systemMessage('系统通知'),
  campusNotice('全校通知'),
  otherMessage('其他通知');

  final String display;
  const MessageType(this.display);

  String toJson() => const MessageTypeJsonConverter().toJson(this);
}

enum UrgentType {
  @JsonValue('')
  none,
  @JsonValue('1')
  high,
  @JsonValue('2')
  medium,
  @JsonValue('3')
  low,
}

enum NotificationStatus {
  @JsonValue(0)
  none,
  @JsonValue(1)
  enable,
  @JsonValue(2)
  disable,
}

// 消息分组
@freezed
class NotificationCategoryModel with _$NotificationCategoryModel {
  const NotificationCategoryModel._();
  const factory NotificationCategoryModel({
    /// 业务类型
    @MessageTypeJsonConverter()
    @Default(MessageType.all)
    MessageType messageType,

    /// 业务类型名称
    @Default('') String messageTypeName,

    /// 消息数量
    @Default(0) int countNum,

    /// 是否有新消息
    @JsonKey(name: 'hasMsgFlg') @Default(false) bool hasMsg,

    /// 最新一条消息
    NotificationModel? messageInfo,
  }) = _NotificationCategoryModel;

  factory NotificationCategoryModel.fromJson(Map<String, Object?> json) =>
      _$NotificationCategoryModelFromJson(json);
}

@unfreezed
class NotificationModel with _$NotificationModel {
  NotificationModel._();
  factory NotificationModel({
    /// 业务id
    @String2IntNullableJsonConverter() int? bizId,

    /// 业务类型
    @Default('') String bizType,

    /// 业务id
    String? sendCid,

    /// 消息id
    int? messageId,

    /// 业务类型
    @MessageTypeJsonConverter()
    @Default(MessageType.all)
    MessageType messageType,

    /// 标题
    @Default('') String title,

    /// 封面
    @JsonKey(name: 'imaUrl') String? image,

    /// 内容
    @Default('') String content,

    /// 其余参数
    @Default('') String otherParam,

    /// 推送范围类型
    @JsonKey(name: 'pushType')
    @PushRangeJsonConverter()
    @Default(PushRange.unknown)
    PushRange range,

    /// 已读标记
    @Default(false) bool readFlag,

    /// 已读时间
    @DateTimeJsonConverter() DateTime? readTime,

    /// 发送系统编码
    @Default('') String senderCode,

    /// 场景码
    @SceneJsonConverter()
    @JsonKey(name: 'sceneCode')
    @Default(PushCode.unknown)
    PushCode scene,

    /// 学校编码
    @Default('') String schoolCode,

    /// 班级编码
    @Default('') String classCode,

    /// 状态
    @Default(NotificationStatus.enable) NotificationStatus status,

    /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
    @Default(UrgentType.medium) UrgentType urgentType,

    /// 消息作业(发布人)
    @JsonKey(name: 'attribute') @Default('') String author,

    /// 创建人
    @Default('') String createUser,

    /// 创建时间
    @JsonKey(name: 'createTime') @DateTimeJsonConverter() DateTime? createDate,

    /// 更新人
    @Default('') String updateUser,

    /// 更新时间
    @JsonKey(name: 'updateTime') @DateTimeJsonConverter() DateTime? updateDate,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,
  }) = _NotificationModel;

  bool get system => messageType == MessageType.systemMessage;
  bool get validate => messageId != null;
  String get detail => scene == PushCode.unknown ||
          scene == PushCode.notification ||
          content.isEmpty
      ? '您收到一则新的通知，快来查看吧！'
      : content;

  factory NotificationModel.fromJson(Map<String, Object?> json) =>
      _$NotificationModelFromJson(json);
}

enum NotificationReadStatus {
  @JsonValue(0)
  unread,
  @JsonValue(1)
  read,
}

enum NotificationSignStatus {
  @JsonValue(0)
  unsigned,
  @JsonValue(1)
  signed,
  @JsonValue(2)
  resigned,
}

// 教务系统消息请求
@freezed
class NotificationSubmitReq with _$NotificationSubmitReq {
  const NotificationSubmitReq._();
  const factory NotificationSubmitReq({
    /// 通知id
    required String noticeId,

    /// 推送对象学号
    required String studentCode,

    /// 状态: 0 => 未读 1 => 已读
    required int status,

    /// 确认签名: 0 => 未确认 1 => 已确认
    required int confirm,

    /// 签名url
    String? signImg,

    /// 阅读时间
    required String readTime,
  }) = _NotificationSubmitReq;

  factory NotificationSubmitReq.fromJson(Map<String, Object?> json) =>
      _$NotificationSubmitReqFromJson(json);
}

// 教务系统消息确认信息请求
@freezed
class NotificationConfirmReq with _$NotificationConfirmReq {
  const NotificationConfirmReq._();
  const factory NotificationConfirmReq({
    /// 学号
    required String studentCode,

    /// 通知id
    required String noticeId,
  }) = _NotificationConfirmReq;

  factory NotificationConfirmReq.fromJson(Map<String, Object?> json) =>
      _$NotificationConfirmReqFromJson(json);
}

// 教务系统消息确认详情
@freezed
class NotificationConfirmModel with _$NotificationConfirmModel {
  const NotificationConfirmModel._();
  const factory NotificationConfirmModel({
    /// 通知id
    int? noticeId,

    /// 通知对象id
    int? targetId,

    /// 学生姓名
    @JsonKey(name: 'stuName') String? studentName,

    /// 学段姓名
    String? periodName,

    /// 课程姓名
    String? courseName,

    /// 年级姓名
    String? gradeName,

    /// 班级姓名
    String? className,

    /// 学号
    @JsonKey(name: 'stuNum') String? studentCode,

    /// 通知已读状态
    @JsonKey(name: 'status', unknownEnumValue: NotificationReadStatus.unread)
    @Default(NotificationReadStatus.unread)
    NotificationReadStatus readStatus,

    /// 通知签名状态
    @JsonKey(name: 'confirm', unknownEnumValue: NotificationSignStatus.unsigned)
    @Default(NotificationSignStatus.unsigned)
    NotificationSignStatus confirmStatus,

    /// 签名图url
    String? signImg,

    /// 已读时间
    @DateTimeJsonConverter() DateTime? readTime,

    /// 创建时间
    @DateTimeJsonConverter() DateTime? createTime,

    /// 更新时间
    @DateTimeJsonConverter() DateTime? updateTime,
  }) = _NotificationConfirmModel;

  bool get shouldSign =>
      confirmStatus == NotificationSignStatus.unsigned ||
      confirmStatus == NotificationSignStatus.resigned;

  factory NotificationConfirmModel.fromJson(Map<String, Object?> json) =>
      _$NotificationConfirmModelFromJson(json);
}

@freezed
class NotificationOtherParam with _$NotificationOtherParam {
  const NotificationOtherParam._();
  const factory NotificationOtherParam({
    /// 是否需要确认
    @String2BoolJsonConverter() @Default(false) bool needConfirm,
  }) = _NotificationOtherParam;

  factory NotificationOtherParam.fromJson(Map<String, Object?> json) =>
      _$NotificationOtherParamFromJson(json);
}
