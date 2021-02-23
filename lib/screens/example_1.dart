import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/example_one_controller.dart';

class ExampleOnePage extends StatelessWidget {
  final ExampleOneController _exampleOneController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${_exampleOneController.count}'),
          ],
        ),
      ),
    );
  }
}
