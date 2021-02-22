import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/main_controller.dart';
import 'package:getx_flutter_example/screens/example_1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
              },
              child: Text('Change Theme'),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(ExampleOnePage());
              },
              child: Text('Example 1'),
            ),
          ],
        ),
      ),
    );
  }
}
