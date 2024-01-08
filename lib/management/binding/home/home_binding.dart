import 'package:bsl/management/controller/home/home_controller.dart';
import 'package:bsl/management/controller/me/me_controller.dart';
import 'package:bsl/management/controller/school/student_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(StudentController());
    Get.put(MeController());
  }
}
