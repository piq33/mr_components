import 'package:components/model/common_model.dart';
import 'package:components/model/converter/datetime_converter.dart';
import 'package:components/model/converter/int2bool_converter.dart';
import 'package:components/model/converter/push_converter.dart';
import 'package:components/model/converter/scene_converter.dart';
import 'package:components/model/converter/string2bool_converter.dart';
import 'package:components/model/notification_models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

enum UrgentType {
  @JsonValue('1')
  high,
  @JsonValue('2')
  medium,
  @JsonValue('3')
  low,
}

enum TodoStatus {
  @JsonValue(1)
  enable,
  @JsonValue(2)
  disable,
}

@freezed
class TodoModel with _$TodoModel {
  const TodoModel._();
  const factory TodoModel({
    /// 业务id
    @Default('') String bizId,

    /// 业务类型
    @Default('') String bizType,

    /// 发送方id
    @Default('') String sendCid,

    /// 消息id
    int? messageId,

    /// 消息分类
    @Default('') String messageType,

    /// 标题
    @Default('') String title,

    /// 封面
    @JsonKey(name: 'imaUrl') String? image,

    /// 内容
    @Default('') String content,

    /// 类型
    @JsonKey(name: 'noticeType')
    @PushTypeJsonConverter()
    @Default(PushType.unknown)
    PushType notificationType,

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
    @SimpleDateTimeJsonConverter() DateTime? readTime,

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
    @Default(TodoStatus.enable) TodoStatus status,

    /// 紧急程度, 如果为[UrgentType.high]，则立即推送，其他定时推送
    @Default(UrgentType.medium) UrgentType urgentType,

    /// 创建人
    @Default('') String createUser,

    /// 创建时间
    @JsonKey(name: 'createTime')
    @SimpleDateTimeJsonConverter()
    DateTime? createDate,

    /// 更新人
    @Default('') String updateUser,

    /// 更新时间
    @JsonKey(name: 'updateTime')
    @SimpleDateTimeJsonConverter()
    DateTime? updateDate,

    /// 是否已删除
    @Int2BoolJsonConverter() @Default(false) bool isDeleted,
  }) = _TodoModel;

  String get detail => scene == PushCode.unknown ||
          scene == PushCode.notification ||
          content.isEmpty
      ? '您收到一则新的通知，快来查看吧！'
      : content;

  factory TodoModel.fromJson(Map<String, Object?> json) =>
      _$TodoModelFromJson(json);
}

@freezed
class TodoOtherParam with _$TodoOtherParam {
  const TodoOtherParam._();
  const factory TodoOtherParam({
    /// 是否需要确认
    @String2BoolJsonConverter() @Default(false) bool needConfirm,
  }) = _TodoOtherParam;

  factory TodoOtherParam.fromJson(Map<String, Object?> json) =>
      _$TodoOtherParamFromJson(json);
}
