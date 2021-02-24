import 'package:get/get.dart';

class ExampleOneController extends GetxController {
  var count = 0.obs;
  add() => count++;
  subtract() => count--;
}
