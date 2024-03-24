import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../themes/app_colors.dart';
import '../../../../themes/app_them_data.dart';
import '../controllers/loss_calculaot_controller.dart';

class LossCalculaotView extends GetView<LossCalculaotController> {
  const LossCalculaotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController sharequnty = TextEditingController();
    TextEditingController purchaseprice = TextEditingController();
    TextEditingController currentprice = TextEditingController();
    TextEditingController currentloss = TextEditingController();
    TextEditingController recoverloss = TextEditingController();

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final LossCalculaotController controller =
        Get.put(LossCalculaotController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          controller: controller.shareQuantityController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Share Quantity",
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: AppThemData.medium),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.shareQuantityController.clear();
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          controller: controller.purchasePriceController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Purchase Price",
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: AppThemData.medium),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.purchasePriceController.clear();
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          controller: controller.currentPriceController,
                          onChanged: (value) {
                            controller.calculateLossPercentage();
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Current Price",
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: AppThemData.medium),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.currentPriceController.clear();
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          controller:
                              controller.currentLossPercentageController,
                          onChanged: (value) {
                            //controller.calculateLossPercentage();
                          },
                          decoration: InputDecoration(
                              hintText: "Current Loss (%)",
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: AppThemData.medium),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.currentLossPercentageController
                                        .clear();
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          controller:
                              controller.recoverLossPercentageController,
                          decoration: InputDecoration(
                              hintText: "Recover Loss (%)",
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: AppThemData.medium),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.recoverLossPercentageController
                                        .clear();
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
              ],
            ),
          ),
          Obx(() => Text(
                "New Shares Quantity: ${controller.newsharequantityint}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Obx(() => Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total share ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: AppThemData.bold),
                    ),
                    Text(
                      "RS = ${controller.totalSharesString}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          fontFamily: AppThemData.bold),
                    ),
                  ],
                ),
              )),
          Obx(() => Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total Cost ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: AppThemData.bold),
                    ),
                    Text(
                      "RS = ${controller.totalCostString}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          fontFamily: AppThemData.bold),
                    ),
                  ],
                ),
              )),
          Obx(() => Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Average Price per share ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: AppThemData.bold),
                    ),
                    Text(
                      "RS = ${controller.averageprocepersharestring}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          fontFamily: AppThemData.bold),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      controller.calculate();
                    },
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                          color: AppColors.primary600,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                        "Calculate",
                        style: TextStyle(
                            fontFamily: AppThemData.bold,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white),
                      )),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      controller.reset();
                    },
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.4,
                      decoration: BoxDecoration(
                          color: AppColors.green04,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                        "Reset",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: AppThemData.bold),
                      )), // Second new container color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
