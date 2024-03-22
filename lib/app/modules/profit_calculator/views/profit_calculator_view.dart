import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profit_calculator_controller.dart';

class ProfitCalculatorView extends GetView<ProfitCalculatorController> {
  ProfitCalculatorView({Key? key}) : super(key: key);

  TextEditingController sharequntity = TextEditingController();
  TextEditingController purchaseprice = TextEditingController();
  TextEditingController sellprice = TextEditingController();
  TextEditingController buycomission = TextEditingController(text: "20");
  TextEditingController sellcomission = TextEditingController(text: "20");

  final ProfitCalculatorController controller = Get.put(ProfitCalculatorController());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Share quantity",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                        controller: sharequntity,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
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
                  Text(
                    "Purchase Price",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                        controller: purchaseprice,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
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
                  Text(
                    "Sell Price",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                        controller: sellprice,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
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
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
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
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
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
                          ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(content: Text("Please enter share qty")));
                        } else if (purchaseprice.text.isEmpty) {
                          ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(content: Text("Please enter purchase price")));
                        } else if (sellprice.text.isEmpty) {
                          ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(content: Text("Please enter sell price")));
                        } else {
                          controller.calculate(
                            shareqtyyy: shareqtyyy,
                            purchasepricee: purchasepricee,
                            sellpriceee: sellpriceee,
                            buycommisioonnn: buycommisioonnn,
                            sellcommisioonnn: sellcommisioonnn,
                            profitpercentageeee: profitecalculateeee,
                            losspercentageeee: losscalculateeee
                          );
                        }
                      },
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.4,
                        color: Colors.teal,
                        child: Center(
                          child: Text(
                            "Calculate",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: InkWell(onTap: () {
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
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            "Reset",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
                  Text(
                    "Net Buy Price ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS = ${controller.buyprice}",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
            )),
            Obx(() => Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Net Sell Price ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS = ${controller.sellpricee}",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
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
                      Text(
                        "PROFIT ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                      Text(
                        "RS = +${controller.profit}  (% ${controller.profitpercentage.toStringAsFixed(2)})",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
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
                      Text(
                        "LOSS ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                      Text(
                        "RS = ${controller.loss}  (% ${controller.losspercentage.toStringAsFixed(2)})",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
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
}




