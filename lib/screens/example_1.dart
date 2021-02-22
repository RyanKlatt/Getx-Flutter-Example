import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/main_controller.dart';

class ExampleOnePage extends StatelessWidget {
  final MainController _mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${_mainController.count}'),
          ],
        ),
      ),
    );
  }
}
