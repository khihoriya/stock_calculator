import 'package:get/get.dart';
import 'package:stock_calculator/app/modules/intro_screen/bindings/intro_screen_binding.dart';
import 'package:stock_calculator/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:stock_calculator/app/modules/splash_screen/views/splash_screen_view.dart';

import '../../common/drawer.dart';
import '../../pages/homepage.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/intro_screen/views/intro_screen_view.dart';
import '../modules/loss_calculaot/bindings/loss_calculaot_binding.dart';
import '../modules/loss_calculaot/views/loss_calculaot_view.dart';
import '../modules/multi_stock_calculator/bindings/multi_stock_calculator_binding.dart';
import '../modules/multi_stock_calculator/views/multi_stock_calculator_view.dart';
import '../modules/profit_calculator/bindings/profit_calculator_binding.dart';
import '../modules/profit_calculator/views/profit_calculator_view.dart';
import '../modules/settings_screen/bindings/settings_screen_binding.dart';
import '../modules/settings_screen/views/settings_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.INTRO_SCREEN,
      page: () => const IntroScreenView(),
      binding: IntroScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const drawer(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOSS_CALCULAOT,
      page: () => const LossCalculaotView(),
      binding: LossCalculaotBinding(),
    ),
    GetPage(
      name: _Paths.MULTI_STOCK_CALCULATOR,
      page: () => const MultiStockCalculatorView(),
      binding: MultiStockCalculatorBinding(),
    ),
    GetPage(
      name: _Paths.PROFIT_CALCULATOR,
      page: () =>  ProfitCalculatorView(),
      binding: ProfitCalculatorBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_SCREEN,
      page: () => const SettingsScreenView(),
      binding: SettingsScreenBinding(),
    ),
  ];
}
