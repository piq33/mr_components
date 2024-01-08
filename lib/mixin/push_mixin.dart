import 'dart:async';
import 'dart:convert';

import 'package:bsl/event/bosocial_event.dart';
import 'package:bsl/event/push_event.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/services/auth_service.dart';
import 'package:bsl/management/services/notification_service.dart';
import 'package:bsl/management/services/todo_service.dart';
import 'package:bsl/model/auth_model.dart';
import 'package:bsl/model/bosocial/knowledge_model.dart';
import 'package:bsl/model/common_model.dart';
import 'package:bsl/model/push_model.dart';
import 'package:bsl/notification/notification.dart';
import 'package:bsl/push/push.dart';
import 'package:bsl/util/global.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

typedef OnNotificationPressed = Function(GetuiPushPayload push);

mixin PushMixin<T extends StatefulWidget> on State<T> {
  final _authService = Get.find<AuthService>();
  final _todoService = Get.find<TodoService>();
  final _notificationService = Get.find<NotificationService>();

  StreamSubscription? _pushSubscription;
  final _cancelTokens = List<CancelToken>.empty(growable: true);

  @override
  void initState() {
    super.initState();
    // 监听推送事件
    _pushSubscription = eventBus.on<PushEvent>().listen((event) {
      final push = event.push;
      final payload = push.payload;
      if (payload == null) {
        logDebug('推送消息体为空: $push');
        return;
      }
      _execute(payload);
    });
  }

  void _execute(GetuiPushPayload payload) {
    if (payload.pushType == PushType.command) {
      _executeCommand(payload.code, payload.otherParam);
      return;
    }

    if (!payload.show) return;

    const androidDetails = AndroidNotificationDetails(channelId, channelName);
    const iosDetails = DarwinNotificationDetails();
    const details =
        NotificationDetails(android: androidDetails, iOS: iosDetails);
    ln.show(
      DateTime.now().millisecondsSinceEpoch >> 10,
      payload.title,
      payload.content,
      details,
      payload: jsonEncode(payload),
    );
  }

  void addPushEventHandler({OnNotificationPressed? onNotificationPressed}) {
    push.addEventHandler(
      // 注册收到 cid 的回调
      onReceiveClientId: (String message) async {
        logDebug("Getui onReceiveClientId: $message");
      },
      // 注册 DeviceToken 回调
      onRegisterDeviceToken: (String message) async {
        logDebug("Getui onRegisterDeviceToken: $message");
      },
      // SDK收到透传消息回调(将其转换为显式通知)
      onReceivePayload: (Map<String, dynamic> message) async {
        _todoService.refreshList();
        _notificationService.refreshCategories();
        try {
          final push = GetuiPushModel.fromJson(message);
          final payload = push.payload;
          if (payload == null) {
            logDebug('消息体为空: $message');
            return;
          }
          _execute(payload);
        } catch (e, stackTrace) {
          logError('消息解析异常', e, stackTrace);
        }
      },
      // 点击通知回调
      onReceiveNotificationResponse: (Map<String, dynamic> event) async {
        try {
          final push = GetuiPushModel.fromJson(event);
          final payload = push.payload;
          if (payload == null) {
            logDebug('消息体为空: $event');
            return;
          }
          onNotificationPressed?.call(payload);
        } catch (e, stackTrace) {
          logError('点击消息解析异常', e, stackTrace);
        }
      },
      // APPLink中携带的透传payload信息
      onAppLinkPayload: (String message) async {
        logDebug("Getui onAppLinkPayload: $message");
      },
      // 通知服务开启\关闭回调
      onPushModeResult: (Map<String, dynamic> message) async {
        logDebug("Getui onPushModeResult: $message");
      },
      // SetTag回调
      onSetTagResult: (Map<String, dynamic> message) async {
        logDebug("Getui onSetTagResult: $message");
      },
      // 设置别名回调
      onAliasResult: (Map<String, dynamic> message) async {
        logDebug("Getui onAliasResult: $message");
        final alias = PushAliasModel.fromJson(message);
        eventBus.fire(AliasEvent(alias));
      },
      // 查询别名回调
      onQueryTagResult: (Map<String, dynamic> message) async {
        logDebug("Getui onQueryTagResult: $message");
      },
      // APNs通知即将展示回调
      onWillPresentNotification: (Map<String, dynamic> message) async {
        logDebug("Getui onWillPresentNotification: $message");
      },
      // APNs通知设置跳转回调
      onOpenSettingsForNotification: (Map<String, dynamic> message) async {
        logDebug("Getui onOpenSettingsForNotification: $message");
      },
      onGrantAuthorization: (String granted) async {
        logDebug("Getui onGrantAuthorization: $granted");
      },
      onReceiveMessageData: (Map<String, dynamic> event) async {
        try {
          final push = GetuiPushModel.fromJson(event);
          final payload = push.payload;
          if (payload == null) {
            logDebug('消息体为空: $event');
            return;
          }
          onNotificationPressed?.call(payload);
        } catch (e, stackTrace) {
          logError('点击消息解析异常', e, stackTrace);
        }
        return;
      },
      onNotificationMessageArrived: (Map<String, dynamic> event) async {
        logDebug('Getui onNotificationMessageArrived: $event');
        _todoService.refreshList();
        _notificationService.refreshCategories();
        return;
      },
      onNotificationMessageClicked: (Map<String, dynamic> event) async {
        logDebug('Getui onNotificationMessageClicked: $event');
        return;
      },
      onTransmitUserMessageReceive: (Map<String, dynamic> event) async {
        logDebug('Getui onTransmitUserMessageReceive: $event');
        return;
      },
      onLiveActivityResult: (Map<String, dynamic> event) async {
        return;
      },
    );
    push.turnOnPush();
    eventBus.fire(PushInitEvent());
  }

  void _executeCommand(PushCode code, String param) async {
    switch (code) {
      case PushCode.refresh:
        logDebug('push: refresh command');
        _todoService.refreshList();
        _notificationService.refreshCategories();
        break;
      case PushCode.regular:
        logDebug('push: regular command');
        String? studentCode;
        try {
          final json = jsonDecode(param);
          final regularOtherParam = RegularOtherParam.fromJson(json);
          studentCode = regularOtherParam.studentCode;
        } catch (e, stackTrace) {
          logError('潜生转正解析异常: $param', e, stackTrace);
        }

        if (studentCode == null || studentCode.isEmpty) {
          logWarning('转正学生学号为空: $param');
          return;
        }
        try {
          final cancelToken = CancelToken();
          _cancelTokens.add(cancelToken);
          await _authService.regular(studentCode, cancelToken);
        } catch (e, stackTrace) {
          logError('潜生转正请求异常: $param', e, stackTrace);
        }
        break;
      case PushCode.knowledge:
        // 通知干货对应分类的列表刷新
        try {
          final json = jsonDecode(param);
          final knowledgeRefreshOtherParam =
              KnowledgeRefreshOtherParam.fromJson(json);
          final catalogId = knowledgeRefreshOtherParam.catalogId;
          if (catalogId == null || catalogId.isEmpty) {
            logWarning('干货刷新通知分类为空: $param');
            return;
          }
          eventBus.fire(KnowledgeCatalogReloadEvent(catalogId));
        } catch (e, stackTrace) {
          logError('干货刷新通知解析异常: $param', e, stackTrace);
        }
        break;
      default:
        break;
    }
  }

  @override
  @mustCallSuper
  void dispose() {
    for (final cancelToken in _cancelTokens) {
      cancelToken.cancel('dispose');
    }
    _pushSubscription?.cancel();
    push.turnOffPush();
    super.dispose();
  }
}
