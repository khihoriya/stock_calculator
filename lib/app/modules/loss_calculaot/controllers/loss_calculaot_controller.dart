import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LossCalculaotController extends GetxController {
  //TODO: Implement LossCalculaotController

  late TextEditingController shareQuantityController;
  late TextEditingController purchasePriceController;
  late TextEditingController currentPriceController;
  late TextEditingController currentLossPercentageController;
  late TextEditingController recoverLossPercentageController;


  var newSharesQuantity = 0.0.obs;
  var totalShares = 0.0.obs;
  var totalCost = 0.0.obs;
  var averagePricePerShare = 0.0.obs;
  var loss = 0.0.obs;

  var lossPercentage = 0.0.obs;

  RxString totalSharesString = "".obs;
  RxString totalCostString = "".obs;
  RxString averageprocepersharestring = "".obs;

  RxString newsharequantityint = "".obs;

  @override
  void onInit() {
    shareQuantityController = TextEditingController();
    purchasePriceController = TextEditingController();
    currentPriceController = TextEditingController();
    currentLossPercentageController = TextEditingController();
    recoverLossPercentageController = TextEditingController();
    super.onInit();
  }

  void calculateLossPercentage() {
    double purchasePrice = double.tryParse(purchasePriceController.text) ?? 0.0;
    double currentPrice = double.tryParse(currentPriceController.text) ?? 0.0;

    if (purchasePrice > 0 && currentPrice < purchasePrice) {
      lossPercentage.value = ((1 - (currentPrice / purchasePrice)) * 100).abs();
      currentLossPercentageController.text = lossPercentage.value.toStringAsFixed(2);
    } else {
      lossPercentage.value = 0.0;
      currentLossPercentageController.text = '0.0';
    }
  }
  void calculate() {
    double shareQuantity = double.tryParse(shareQuantityController.text) ?? 0.0;
    double purchasePrice = double.tryParse(purchasePriceController.text) ?? 0.0;
    double currentPrice = double.tryParse(currentPriceController.text) ?? 0.0;
    double currentLossPercentage = double.tryParse(currentLossPercentageController.text) ?? 0.0;
    double recoverLossPercentage = double.tryParse(recoverLossPercentageController.text) ?? 0.0;

    newSharesQuantity.value = shareQuantity * (1 - (currentLossPercentage / 100));
    totalShares.value = shareQuantity + newSharesQuantity.value;
    totalCost.value = shareQuantity * purchasePrice;
    averagePricePerShare.value = totalCost.value / totalShares.value;
    loss.value = totalShares.value * (averagePricePerShare.value - currentPrice);

    totalSharesString.value = totalShares.value.toStringAsFixed(0);
    totalCostString.value = totalCost.value.toStringAsFixed(2);
    averageprocepersharestring.value = averagePricePerShare.value.toStringAsFixed(2);

    newsharequantityint.value = newSharesQuantity.value.toStringAsFixed(0);

  }


  void reset() {
    shareQuantityController.clear();
    purchasePriceController.clear();
    currentPriceController.clear();
    currentLossPercentageController.clear();
    recoverLossPercentageController.clear();
    newSharesQuantity.value = 0.0;
    totalShares.value = 0.0;
    totalCost.value = 0.0;
    averagePricePerShare.value = 0.0;
    loss.value = 0.0;

    newsharequantityint.value = "";
    totalSharesString.value = "";
    totalCostString.value = "";
    averageprocepersharestring.value = "";
  }

  @override
  void onClose() {
    shareQuantityController.dispose();
    purchasePriceController.dispose();
    currentPriceController.dispose();
    currentLossPercentageController.dispose();
    recoverLossPercentageController.dispose();
    super.onClose();
  }
}
