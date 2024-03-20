import 'package:get/get.dart';

import '../controllers/loss_calculaot_controller.dart';

class LossCalculaotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LossCalculaotController>(
      () => LossCalculaotController(),
    );
  }
}
