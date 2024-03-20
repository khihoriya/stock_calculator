import 'package:get/get.dart';

class ProfitCalculatorController extends GetxController {

  RxInt buyRadioValue = 0.obs;
  RxInt sellRadioValue = 0.obs;

  void updateRadioValue(int? value) {
    buyRadioValue.value = value ?? 0;
  }

  @override
  void onInit() {
    super.onInit();
  }


}
