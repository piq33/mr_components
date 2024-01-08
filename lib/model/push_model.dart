import 'dart:convert';

import 'package:components/model/common_model.dart';
import 'package:components/model/converter/push_converter.dart';
import 'package:components/model/converter/scene_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_model.freezed.dart';
part 'push_model.g.dart';

@freezed
class PushAliasModel with _$PushAliasModel {
  const factory PushAliasModel({
    @Default('') String action,
    @Default('') String error,
    required bool result,
    required String sn,
  }) = _PushAliasModel;

  factory PushAliasModel.fromJson(Map<String, Object?> json) =>
      _$PushAliasModelFromJson(json);
}

@unfreezed
class GetuiPushPayload with _$GetuiPushPayload {
  const GetuiPushPayload._();
  factory GetuiPushPayload({
    /// 业务id
    @Default('') String bizId,

    /// 消息id
    int? messageId,

    /// 类型
    @JsonKey(name: 'noticeType')
    @PushTypeJsonConverter()
    @Default(PushType.unknown)
    PushType pushType,

    /// 场景码
    @SceneJsonConverter()
    @JsonKey(name: 'sceneCode')
    @Default(PushCode.unknown)
    PushCode code,

    /// 标题
    @Default('') String title,

    /// 发送系统编码
    @Default('') String senderCode,

    /// 内容
    @Default('') String content,

    /// 其余参数
    @Default('') String otherParam,
  }) = _GetuiPushPayload;

  bool get show =>
      pushType == PushType.todo || pushType == PushType.notification;

  factory GetuiPushPayload.fromJson(Map<String, Object?> json) =>
      _$GetuiPushPayloadFromJson(json);
}

@freezed
class GetuiPushModel with _$GetuiPushModel {
  const factory GetuiPushModel({
    /// 消息id
    String? messageId,

    /// 任务id
    String? taskId,

    /// 携带信息
    @JsonKey(name: 'payloadMsg') GetuiPushPayload? payload,
  }) = _GetuiPushModel;

  factory GetuiPushModel.fromJson(Map<String, Object?> json) {
    final payloadMsg = json['payloadMsg'] ?? json['payload'];
    return GetuiPushModel(
      messageId: json['messageId'] as String?,
      taskId: json['taskId'] as String?,
      payload: payloadMsg == null
          ? null
          : GetuiPushPayload.fromJson(jsonDecode(payloadMsg as String)),
    );
  }
}
