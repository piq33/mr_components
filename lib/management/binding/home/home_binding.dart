import 'package:components/management/controller/home/home_controller.dart';
import 'package:components/management/controller/me/me_controller.dart';
import 'package:components/management/controller/school/student_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(StudentController());
    Get.put(MeController());
  }
}
