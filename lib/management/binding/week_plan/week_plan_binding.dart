import 'package:bsl/management/controller/week_plan/week_plan_controller.dart';
import 'package:get/get.dart';

class WeekPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeekPlanController());
  }
}
