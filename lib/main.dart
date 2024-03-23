import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
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
