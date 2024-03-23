import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_calculator/app/modules/multi_stock_calculator/controllers/multi_stock_calculator_controller.dart';
import 'package:stock_calculator/themes/app_them_data.dart';

class MultiStockCalculatorView extends GetView<MultiStockCalculatorController> {
  const MultiStockCalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GetBuilder(
      init: MultiStockCalculatorController(),
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Share qty",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  ),
                  Text(
                    "Purchase Price",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  ),
                ],
              ),
              _buildRowWithTextField("1", "₹", controller.qty1, controller.price1),
              _buildRowWithTextField("2", "₹", controller.qty2, controller.price2),
              _buildRowWithTextField("3", "₹", controller.qty3, controller.price3),
              _buildRowWithTextField("4", "₹", controller.qty4, controller.price4),
              _buildRowWithTextField("5", "₹", controller.qty5, controller.price5),
              Obx(
                () => Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total Share ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                      ),
                      Text(
                        "RS = ${controller.totalShares}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontFamily: AppThemData.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total Cost ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                    ),
                    Obx(
                      () => Text(
                        "${controller.totalCost} rs",
                        style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
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
                      child: GestureDetector(
                        onTap: () {
                          controller.calculateTotalSharesAndCost();
                        },
                        child: Container(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.4,
                          color: Colors.teal,
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
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.4,
                        color: Colors.green,
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
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildRowWithTextField(
    String labelText,
    String suffixText,
    RxInt qtyController,
    RxDouble priceController,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
          ),
          SizedBox(width: 8),
          Expanded(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: 40, // Adjust the height here
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Align(alignment:Alignment.centerLeft ,
                child: TextField(
                  onChanged: (value) => qtyController.value = int.tryParse(value) ?? 0,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontFamily: AppThemData.semiBold),
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    hintStyle: const TextStyle(color: Colors.black, fontFamily: AppThemData.bold),
                    suffixIcon: IconButton(
                      onPressed: () => qtyController.value = 0,
                      icon: Icon(Icons.cancel_sharp),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            suffixText,
            style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              height: 40, // Adjust the height here
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                onChanged: (value) => priceController.value = double.tryParse(value) ?? 0.0,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  hintStyle: const TextStyle(color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () => priceController.value = 0.0,
                    icon: Icon(Icons.cancel_sharp),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MultiStockCalculatorController extends GetxController {
//   var qty1 = 0.obs;
//   var qty2 = 0.obs;
//   var qty3 = 0.obs;
//   var qty4 = 0.obs;
//   var qty5 = 0.obs;
//
//   var price1 = 0.0.obs;
//   var price2 = 0.0.obs;
//   var price3 = 0.0.obs;
//   var price4 = 0.0.obs;
//   var price5 = 0.0.obs;
//
//   var totalShares = 0.obs;
//   var totalCost = 0.0.obs;
//
//   void calculateTotalSharesAndCost() {
//     totalShares.value =
//         qty1.value + qty2.value + qty3.value + qty4.value + qty5.value;
//     totalCost.value = (qty1.value * price1.value) +
//         (qty2.value * price2.value) +
//         (qty3.value * price3.value) +
//         (qty4.value * price4.value) +
//         (qty5.value * price5.value);
//   }
// }
