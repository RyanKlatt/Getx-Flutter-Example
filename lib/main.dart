import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //GetMaterialApp is necessary for routes, snackbars,
    //internationalization, bottomSheets, dialogs, and high-level apis
    //related to routes and absence of context.
    return GetMaterialApp(
      title: 'GetX Flutter Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
