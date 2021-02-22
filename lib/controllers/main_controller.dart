import 'package:get/get.dart';

class MainController extends GetxController {
  var count = 10.obs;
  increment() => count++;
}
