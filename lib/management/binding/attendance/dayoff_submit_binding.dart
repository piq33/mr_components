import 'package:bsl/management/controller/attendance/leave_types_controller.dart';
import 'package:get/get.dart';

class DayOffSubmitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LeaveTypesController());
  }
}
