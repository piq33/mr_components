import 'package:components/management/controller/common/sms_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SmsController());
  }
}
