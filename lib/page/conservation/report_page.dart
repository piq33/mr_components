import 'package:components/component/conservation/report_body.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/services/student_service.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ReportPage extends GetView<StudentService> {
  const ReportPage({this.date, super.key});

  final String? date;

  static final _dateFormat = DateFormat('yyyy-MM-dd', Intl.systemLocale);

  @override
  Widget build(BuildContext context) {
    DateTime? dateTime;
    try {
      dateTime = date == null ? DateTime.now() : _dateFormat.parse(date!);
    } catch (e, stackTrace) {
      logError('生活日报日期解析异常', e, stackTrace);
      dateTime = DateTime.now();
    }
    return Scaffold(
      appBar: defaultDarkAppBar(
        context: context,
        title: '生活日报',
      ),
      body: Obx(() {
        final student = controller.selectedStudent.value;
        return ReportBody(date: dateTime, student: student);
      }),
    );
  }
}
