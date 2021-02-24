import 'package:get/get.dart';

class ExampleThreeController extends GetxController {
  var count = 0.obs;
  add() => count++;
  subtract() => count--;
}
