import 'package:get/get.dart';

class ProfitCalculatorController extends GetxController {

  RxInt buyRadioValue = 0.obs;
  RxInt sellRadioValue = 0.obs;

  void updateRadioValue(int? value) {
    buyRadioValue.value = value ?? 0;
  }

  var buyprice = 0.obs;
  var sellpricee = 0.obs;
  var profit = 0.obs;
  var loss = 0.obs;
  var profitvalue = false.obs;
  var lossvalue = false.obs;
  var profitpercentage = 0.obs;
  var losspercentage = 0.obs;

  // void calculate({
  //   required String shareqtyyy,
  //   required String purchasepricee,
  //   required String sellpriceee,
  //   required String buycommisioonnn,
  //   required String sellcommisioonnn,
  //   required String profitpercentageeee,
  //   required String losspercentageeee,
  //
  // }) {
  //   buyprice.value = (int.parse(shareqtyyy) * int.parse(purchasepricee)) - int.parse(buycommisioonnn);
  //   sellpricee.value = (int.parse(shareqtyyy) * int.parse(sellpriceee)) - int.parse(sellcommisioonnn);
  //
  //   if (sellpricee.value > buyprice.value) {
  //     profit.value = sellpricee.value - buyprice.value;
  //     profitpercentage.value = ((profit.value / buyprice.value) * 100).round();
  //
  //     profitvalue.value = true;
  //     lossvalue.value = false;
  //   } else {
  //     loss.value = sellpricee.value - buyprice.value;
  //     losspercentage.value = ((loss.value / sellpricee.value) * 100).round();
  //
  //     lossvalue.value = true;
  //     profitvalue.value = false;
  //   }
  // }

  void calculate({
    required String shareQty,
    required String purchasePrice,
    required String sellPrice,
    required String buyCommission,
    required String sellCommission,
    required bool isBuyCommissionPercentage,
    required bool isSellCommissionPercentage,
  }) {
    int shareQuantity = int.parse(shareQty);
    double purchasePricePerShare = double.parse(purchasePrice);
    double sellPricePerShare = double.parse(sellPrice);

    double totalBuyCommission = 0;
    double totalSellCommission = 0;

    if (isBuyCommissionPercentage) {
      totalBuyCommission = (shareQuantity * purchasePricePerShare * (double.parse(buyCommission) / 100));
    } else {
      totalBuyCommission = double.parse(buyCommission);
    }

    if (isSellCommissionPercentage) {
      totalSellCommission = (shareQuantity * sellPricePerShare * (double.parse(sellCommission) / 100));
    } else {
      totalSellCommission = double.parse(sellCommission);
    }

    double totalPurchasePrice = (shareQuantity * purchasePricePerShare) + totalBuyCommission;
    double totalSellPrice = (shareQuantity * sellPricePerShare) - totalSellCommission;

    double profitOrLoss;
    bool isProfit = totalSellPrice > totalPurchasePrice;
    if (isProfit) {
      profitOrLoss = totalSellPrice - totalPurchasePrice;
    } else {
      profitOrLoss = totalPurchasePrice - totalSellPrice;
    }

    double profitOrLossPercentage = (profitOrLoss / (isProfit ? totalPurchasePrice : totalSellPrice)) * 100;

    print("Total Purchase Price: ₹$totalPurchasePrice");
    print("Total Sell Price: ₹$totalSellPrice");
    print(isProfit ? "Profit: ₹$profitOrLoss" : "Loss: ₹$profitOrLoss");
    print(isProfit ? "Profit Percentage: ${profitOrLossPercentage.round()}%" : "Loss Percentage: ${profitOrLossPercentage.round()}%");
  }


  void resetValues() {
    buyprice.value = 0;
    sellpricee.value = 0;
    profit.value = 0;
    loss.value = 0;
    profitvalue.value = false;
    lossvalue.value = false;
    profitpercentage.value = 0;
    losspercentage.value = 0;
  }
  @override
  void onInit() {
    super.onInit();
  }


}
