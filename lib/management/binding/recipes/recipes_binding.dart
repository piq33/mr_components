import 'package:bsl/management/controller/recipes/recipes_controller.dart';
import 'package:get/get.dart';

class RecipesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecipesController());
  }
}
