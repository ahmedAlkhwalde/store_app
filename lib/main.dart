import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:store_app/controller/homecontroller.dart';
import 'package:store_app/view/get_start.dart';
import 'package:store_app/view/homepage.dart';
import 'view/models/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    homecontroller controller = Get.put(homecontroller());
    bool _isDarkTheme = false;
    return GetMaterialApp(
      theme: lightTheme, // ✅ استخدام الثيم المخصص
      darkTheme: darkTheme, // ✅ استخدام الثيم المخصص
      themeMode: _isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      home: get_start(),
    );
  }
}
