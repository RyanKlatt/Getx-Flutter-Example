import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/example_two_controller.dart';

class ExampleTwoPage extends StatelessWidget {
  final ExampleTwoController _exampleTwoController = Get.find();

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
                'Uses GetBuilder<ExampleTwoController> to update count text using update() in controller',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.0),
            IconButton(
              onPressed: () {
                _exampleTwoController.add();
              },
              iconSize: 60.0,
              icon: Icon(
                Icons.add_circle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            GetBuilder<ExampleTwoController>(
              builder: (_) => Text(
                '${_exampleTwoController.count}',
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
                _exampleTwoController.subtract();
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
