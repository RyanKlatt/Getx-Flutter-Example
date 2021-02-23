import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_flutter_example/controllers/bindings/main_bindings.dart';
import 'package:getx_flutter_example/controllers/theme_controller.dart';
import 'screens/home_page.dart';

void main() async {
  await GetStorage.init();
  MainBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    return SimpleBuilder(builder: (_) {
      return GetMaterialApp(
        theme: _themeController.theme,
        title: 'GetX Flutter Example',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
    });
  }
}
