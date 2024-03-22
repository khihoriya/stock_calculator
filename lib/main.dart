import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/multi_stock_calculator/controllers/multi_stock_calculator_controller.dart';
import 'app/routes/app_pages.dart';

void main() {
  Get.put(MultiStockCalculatorController());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,

    ),
  );
}
