import 'dart:async';
import 'package:get/get.dart';
import 'package:stock_calculator/app/routes/app_pages.dart';
import 'package:stock_calculator/preferences.dart';

class SplashScreenController extends GetxController {
  @override
  Future<void> onInit() async {
    Timer(const Duration(seconds: 3), () => redirectScreen());
    super.onInit();
  }

  redirectScreen() async {
    if (Preferences.getBoolean(Preferences.isFinishOnBoardingKey) == false) {
      Get.offAllNamed(Routes.INTRO_SCREEN);
    }
  }
}
