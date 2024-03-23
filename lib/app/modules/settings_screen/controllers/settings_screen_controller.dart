import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreenController extends GetxController {
  // Variable to track the current theme mode
  var isDarkMode = false.obs;

  @override
  void onInit() {
    super.onInit();

    isDarkMode.value = false;
  }


  void toggleTheme() {

    isDarkMode.value = !isDarkMode.value;

    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
