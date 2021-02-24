import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_example/controllers/theme_controller.dart';
import 'package:getx_flutter_example/screens/example_1.dart';
import 'package:getx_flutter_example/screens/example_2.dart';
import 'package:getx_flutter_example/screens/example_3.dart';

class HomePage extends StatelessWidget {
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              icon: Padding(
                padding: EdgeInsets.all(2.0),
                child: _themeController.isDark
                    ? Icon(Icons.nights_stay_outlined)
                    : Icon(Icons.wb_sunny_outlined),
              ),
              onPressed: () {
                _themeController.changeTheme(!_themeController.isDark);
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(ExampleOnePage());
              },
              child: Text('Example 1'),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(ExampleTwoPage());
              },
              child: Text('Example 2'),
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(ExampleThreePage());
              },
              child: Text('Example 3'),
            ),
          ],
        ),
      ),
    );
  }
}
