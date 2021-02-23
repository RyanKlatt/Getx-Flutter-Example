import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/main_controller.dart';
import 'package:getx_flutter_example/controllers/theme_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}
