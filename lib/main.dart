import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:stock_calculator/preferences.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.initPref();
  //Get.put(MultiStockCalculatorController());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // Set the default light mode theme
      darkTheme: ThemeData.dark(), // Set the dark mode theme
      themeMode: ThemeMode.system,

    ),
  );
}
