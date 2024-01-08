import 'package:bsl/component/notification/notification_body.dart';
import 'package:bsl/theme/notification_theme.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<NotificationTheme>();
    return Scaffold(
      backgroundColor: theme?.background,
      appBar: defaultAppBar(context: context, title: '消息通知'),
      body: const NotificationBody(),
    );
  }
}
