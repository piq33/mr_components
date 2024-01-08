import 'package:components/management/controller/childtask/childtask_controller.dart';
import 'package:get/get.dart';

class ChildtaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChildtaskController());
  }
}
