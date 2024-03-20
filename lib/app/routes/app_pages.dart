import 'package:get/get.dart';

import '../../common/drawer.dart';
import '../../pages/homepage.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/loss_calculaot/bindings/loss_calculaot_binding.dart';
import '../modules/loss_calculaot/views/loss_calculaot_view.dart';
import '../modules/multi_stock_calculator/bindings/multi_stock_calculator_binding.dart';
import '../modules/multi_stock_calculator/views/multi_stock_calculator_view.dart';
import '../modules/profit_calculator/bindings/profit_calculator_binding.dart';
import '../modules/profit_calculator/views/profit_calculator_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
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
      page: () => const ProfitCalculatorView(),
      binding: ProfitCalculatorBinding(),
    ),
  ];
}
