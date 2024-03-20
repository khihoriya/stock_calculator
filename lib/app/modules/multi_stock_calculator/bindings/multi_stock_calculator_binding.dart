import 'package:get/get.dart';

import '../controllers/multi_stock_calculator_controller.dart';

class MultiStockCalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MultiStockCalculatorController>(
      () => MultiStockCalculatorController(),
    );
  }
}
