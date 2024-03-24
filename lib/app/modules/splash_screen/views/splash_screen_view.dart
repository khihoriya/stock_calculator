import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_calculator/themes/app_them_data.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      init: SplashScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xffF1F1F1),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Stock price calculator",
                  style: TextStyle(
                      fontFamily: AppThemData.bold,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 26),
                ),
                // const Text(
                //   "Parking Made Effortless",
                //   style: TextStyle(
                //       fontFamily: AppThemData.regular,
                //       color: Colors.black,
                //       fontSize: 16),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
