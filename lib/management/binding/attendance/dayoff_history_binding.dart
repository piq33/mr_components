import 'package:components/management/controller/attendance/dayoff_history_controller.dart';
import 'package:components/management/controller/attendance/leave_types_controller.dart';
import 'package:get/get.dart';

class DayOffHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaveTypesController());
    Get.lazyPut(
      () => DayOffHistoryController(selectFirstWhenRefresh: false),
    );
  }
}
