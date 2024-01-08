import 'package:bsl/component/recipes/recipes_body.dart';
import 'package:bsl/log/global_log.dart';
import 'package:bsl/management/controller/recipes/recipes_controller.dart';
import 'package:bsl/widget/common/date_dropdown.dart';
import 'package:bsl/widget/common/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecipesPage extends GetView<RecipesController> {
  const RecipesPage({this.date, super.key});

  final String? date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: '食谱',
        actions: [
          Obx(() {
            return DateDropdown(
              initial: controller.selectedDate.value,
              onDateSelected: (month) {
                logDebug('食谱页当前选中月份: $month');
                controller.selectedDate.value = month;
              },
            );
          }),
        ],
      ),
      body: SingleChildScrollView(child: RecipesBody(initialDate: date)),
    );
  }
}
