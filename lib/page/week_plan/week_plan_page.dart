import 'package:components/component/week_plan/week_plan_body.dart';
import 'package:components/log/global_log.dart';
import 'package:components/management/controller/week_plan/week_plan_controller.dart';
import 'package:components/widget/common/date_dropdown.dart';
import 'package:components/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WeekPlanPage extends GetView<WeekPlanController> {
  const WeekPlanPage({this.date, super.key});

  final String? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: '周计划',
        actions: [
          Obx(() {
            return DateDropdown(
              initial: controller.selectedDate.value,
              onDateSelected: (date) {
                logDebug('周计划页当前选中日期: $date');
                controller.selectedDate.value = date;
              },
            );
          }),
        ],
      ),
      body: WeekPlanBody(initialDate: date),
    );
  }
}
