import 'package:components/component/notification/notification_list.dart';
import 'package:components/model/converter/notification/message_type_converter.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class NotificationListPage extends StatelessWidget {
  const NotificationListPage({required this.type, super.key});

  final String type;

  @override
  Widget build(BuildContext context) {
    final messageType = const MessageTypeJsonConverter().fromJson(type);
    return Scaffold(
      appBar: defaultAppBar(context: context, title: messageType.display),
      body: NotificationList(messageType: messageType),
    );
  }
}
