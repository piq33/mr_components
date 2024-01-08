import 'package:components/component/notification/notification_detail_body.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationDetailPage extends GetView<StudentService> {
  const NotificationDetailPage({required this.messageId, super.key});

  /// 消息Id
  final int messageId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context: context, title: '消息通知'),
      body: SingleChildScrollView(
        child: Obx(() {
          final student = controller.selectedStudent.value;
          return NotificationDetailBody(messageId: messageId, student: student);
        }),
      ),
    );
  }
}
