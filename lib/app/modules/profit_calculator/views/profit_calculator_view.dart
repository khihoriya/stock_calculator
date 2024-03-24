import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_calculator/themes/app_colors.dart';
import 'package:stock_calculator/themes/app_them_data.dart';

class ProfitCalculatorView extends GetView<ProfitCalculatorController> {
  ProfitCalculatorView({Key? key}) : super(key: key);

  TextEditingController sharequntity = TextEditingController();
  TextEditingController purchaseprice = TextEditingController();
  TextEditingController sellprice = TextEditingController();
  TextEditingController buycomission = TextEditingController(text: "20");
  TextEditingController sellcomission = TextEditingController(text: "20");

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GetBuilder(
      init: ProfitCalculatorController(),
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Share quantity",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: AppThemData.bold),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 40,
                          color: AppColors.white,
                          child: TextField(
                            controller: sharequntity,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontFamily: AppThemData.semiBold),
                            decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  sharequntity.clear();
                                },
                                icon: Icon(Icons.cancel_sharp),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Purchase Price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: AppThemData.bold),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 40, // Adjust the height here
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: purchaseprice,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontFamily: AppThemData.semiBold),
                            decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  purchaseprice.clear();
                                },
                                icon: Icon(Icons.cancel_sharp),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sell Price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: AppThemData.bold),
                      ),
                      SizedBox(width: 52),
                      Expanded(
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 40, // Adjust the height here
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: sellprice,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontFamily: AppThemData.semiBold),
                            decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  sellprice.clear();
                                },
                                icon: Icon(Icons.cancel_sharp),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Buy Commission",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 40, // Adjust the height here
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: buycomission,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontFamily: AppThemData.semiBold),
                            decoration: InputDecoration(
                              hintText: "₹",
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  buycomission.clear();
                                },
                                icon: Icon(Icons.cancel_sharp),
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Obx(() => Radio(
                      //       value: 0,
                      //       groupValue: controller.buyRadioValue.value,
                      //       onChanged: (value) {
                      //         controller.updateRadioValue(value!);
                      //       },
                      //     )),
                      // Text('%'),
                      // Obx(() => Radio(
                      //       value: 1,
                      //       groupValue: controller.buyRadioValue.value,
                      //       onChanged: (value) {
                      //         controller.updateRadioValue(value);
                      //       },
                      //     )),
                      // Text('₹'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sell Commission",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: AppThemData.bold),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          height: 40, // Adjust the height here
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            controller: sellcomission,
                            keyboardType: TextInputType.number,
                            style: TextStyle(fontFamily: AppThemData.semiBold),
                            decoration: InputDecoration(
                              hintText: '₹',
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  sellcomission.clear();
                                },
                                icon: Icon(Icons.cancel_sharp),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            String shareqtyyy = sharequntity.text;
                            String purchasepricee = purchaseprice.text;
                            String sellpriceee = sellprice.text;
                            String buycommisioonnn = buycomission.text;
                            String sellcommisioonnn = sellcomission.text;
                            String profitecalculateeee = "";
                            String losscalculateeee = "";

                            if (sharequntity.text.isEmpty) {
                              ScaffoldMessenger.maybeOf(context)!.showSnackBar(
                                  SnackBar(
                                      content: Text("Please enter share qty")));
                            } else if (purchaseprice.text.isEmpty) {
                              ScaffoldMessenger.maybeOf(context)!.showSnackBar(
                                  SnackBar(
                                      content:
                                          Text("Please enter purchase price")));
                            } else if (sellprice.text.isEmpty) {
                              ScaffoldMessenger.maybeOf(context)!.showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text("Please enter sell price")));
                            } else {
                              controller.calculate(
                                  shareqtyyy: shareqtyyy,
                                  purchasepricee: purchasepricee,
                                  sellpriceee: sellpriceee,
                                  buycommisioonnn: buycommisioonnn,
                                  sellcommisioonnn: sellcommisioonnn,
                                  profitpercentageeee: profitecalculateeee,
                                  losspercentageeee: losscalculateeee);
                            }
                          },
                          child: Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.teal),
                            child: const Center(
                              child: Text(
                                "Calculate",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: AppThemData.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            sharequntity.clear();
                            purchaseprice.clear();
                            sellprice.clear();
                            buycomission.clear();
                            sellcomission.clear();
                            controller.resetValues();
                          },
                          child: Container(
                            height: screenHeight * 0.05,
                            width: screenWidth * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green,
                            ),
                            child: const Center(
                              child: Text(
                                "Reset",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: AppThemData.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Obx widgets for displaying results
                Obx(() => Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Net Buy Price ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: AppThemData.bold),
                          ),
                          Text(
                            "RS = ${controller.buyprice}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
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
                            "Net Sell Price ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: AppThemData.bold),
                          ),
                          Text(
                            "RS = ${controller.sellpricee}",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: AppThemData.bold),
                          ),
                        ],
                      ),
                    )),
                Obx(() {
                  if (controller.profitvalue.value == true) {
                    return Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "PROFIT ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: AppThemData.bold),
                          ),
                          Text(
                            "RS = +${controller.profit}  (% ${controller.profitpercentage.toStringAsFixed(2)})",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontFamily: AppThemData.bold),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "LOSS ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontFamily: AppThemData.bold),
                          ),
                          Text(
                            "RS = ${controller.loss}  (% ${controller.losspercentage.toStringAsFixed(2)})",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontFamily: AppThemData.bold),
                          ),
                        ],
                      ),
                    );
                  }
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProfitCalculatorController extends GetxController {
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
    buyprice.value = (int.parse(shareqtyyy) * int.parse(purchasepricee)) -
        int.parse(buycommisioonnn);
    sellpricee.value = (int.parse(shareqtyyy) * int.parse(sellpriceee)) -
        int.parse(sellcommisioonnn);

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
}
