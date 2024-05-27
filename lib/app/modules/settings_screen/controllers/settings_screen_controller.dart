import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreenController extends GetxController {
  var isDarkMode = false.obs;
  RxString lightDarkMode = "Light".obs;

  @override
  void onInit() {
    super.onInit();
    // isDarkMode.value = false;
    getThemeMode();
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  void getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool('isDarkMode') ?? false;
  }

  void openGooglePlayStore() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.stock.stock_calculator';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
