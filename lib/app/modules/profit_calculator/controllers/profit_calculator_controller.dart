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

  void calculate({
    required String shareqtyyy,
    required String purchasepricee,
    required String sellpriceee,
    required String buycommisioonnn,
    required String sellcommisioonnn,
    required String profitpercentageeee,
    required String losspercentageeee,

  }) {
    buyprice.value = (int.parse(shareqtyyy) * int.parse(purchasepricee)) - int.parse(buycommisioonnn);
    sellpricee.value = (int.parse(shareqtyyy) * int.parse(sellpriceee)) - int.parse(sellcommisioonnn);

    if (sellpricee.value > buyprice.value) {
      profit.value = sellpricee.value - buyprice.value;
      profitpercentage.value = ((profit.value / buyprice.value) * 100).round();

      profitvalue.value = true;
      lossvalue.value = false;
    } else {
      loss.value = sellpricee.value - buyprice.value;
      losspercentage.value = ((loss.value / sellpricee.value) * 100).round();

      lossvalue.value = true;
      profitvalue.value = false;
    }
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
