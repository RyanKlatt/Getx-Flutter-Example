import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/example_one_controller.dart';
import 'package:getx_flutter_example/controllers/theme_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleOneController>(() => ExampleOneController());
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}
