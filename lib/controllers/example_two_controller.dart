import 'package:get/get.dart';

class ExampleTwoController extends GetxController {
  var count = 0;
  add() {
    count++;
    update();
  }

  subtract() {
    count--;
    update();
  }
}
