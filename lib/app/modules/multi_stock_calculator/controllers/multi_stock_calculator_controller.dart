import 'package:get/get.dart';

class MultiStockCalculatorController extends GetxController {

  var qty1 = 0.obs;
  var qty2 = 0.obs;
  var qty3 = 0.obs;
  var qty4 = 0.obs;
  var qty5 = 0.obs;

  var price1 = 0.0.obs;
  var price2 = 0.0.obs;
  var price3 = 0.0.obs;
  var price4 = 0.0.obs;
  var price5 = 0.0.obs;

  var totalShares = 0.obs;
  var totalCost = 0.0.obs;

  void calculateTotalSharesAndCost() {
    totalShares.value =
        qty1.value + qty2.value + qty3.value + qty4.value + qty5.value;
    totalCost.value = (qty1.value * price1.value) +
        (qty2.value * price2.value) +
        (qty3.value * price3.value) +
        (qty4.value * price4.value) +
        (qty5.value * price5.value);
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
