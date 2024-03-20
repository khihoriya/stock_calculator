import 'package:get/get.dart';

import '../controllers/profit_calculator_controller.dart';

class ProfitCalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfitCalculatorController>(
      () => ProfitCalculatorController(),
    );
  }
}
