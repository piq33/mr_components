import 'package:components/component/notification/notification_body.dart';
import 'package:components/theme/notification_theme.dart';
import 'package:components/widget/common/default_appbar.dart';
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
