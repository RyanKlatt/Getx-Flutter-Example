import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/example_one_controller.dart';
import 'package:getx_flutter_example/controllers/example_three_controller.dart';
import 'package:getx_flutter_example/controllers/example_two_controller.dart';
import 'package:getx_flutter_example/controllers/theme_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleOneController>(() => ExampleOneController());
    Get.lazyPut<ExampleTwoController>(() => ExampleTwoController());
    Get.lazyPut<ExampleThreeController>(() => ExampleThreeController(),
        fenix: true);
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
}
