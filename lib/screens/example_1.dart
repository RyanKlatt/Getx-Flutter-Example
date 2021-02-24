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
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Wraps counter text with Obx(()=> to observe state changes.',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0),
            IconButton(
              onPressed: () {
                _exampleOneController.add();
              },
              iconSize: 60.0,
              icon: Icon(
                Icons.add_circle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Obx(
              () => Text(
                '${_exampleOneController.count}',
                style: TextStyle(
                  fontSize: 32.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            IconButton(
              onPressed: () {
                _exampleOneController.subtract();
              },
              iconSize: 60.0,
              icon: Icon(
                Icons.remove_circle,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
