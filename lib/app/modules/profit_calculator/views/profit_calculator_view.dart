import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profit_calculator_controller.dart';

class ProfitCalculatorView extends GetView<ProfitCalculatorController> {
  const ProfitCalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {},
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
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {},
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
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {},
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
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {
                              // Handle suffix icon button press
                            },
                            icon: Icon(Icons.cancel_sharp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Obx(() => Radio(
                        value: 0,
                        groupValue: controller.buyRadioValue.value,
                        onChanged: (value) {
                          controller.updateRadioValue(value!);
                        },
                      )),
                  Text('%'),
                  Obx(() => Radio(
                        value: 1,
                        groupValue: controller.buyRadioValue.value,
                        onChanged: (value) {
                          controller.updateRadioValue(value);
                        },
                      )),
                  Text('₹'),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       const Text(
            //         "Buy Commission",
            //         style: TextStyle(fontWeight: FontWeight.bold),
            //       ),
            //       SizedBox(width: 8),
            //       Expanded(
            //         child: AnimatedContainer(
            //           duration: Duration(seconds: 2),
            //           height: 40, // Adjust the height here
            //           decoration: BoxDecoration(
            //             color: Colors.teal,
            //             borderRadius: BorderRadius.circular(10),
            //           ),
            //           child: TextField(
            //             decoration: InputDecoration(
            //               filled: true,
            //
            //               border: InputBorder.none,
            //               hintStyle: TextStyle(color: Colors.black),
            //               suffixIcon: IconButton(
            //                 onPressed: () {
            //                 },
            //                 icon: Icon(Icons.cancel_sharp),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Obx(() => Radio(
            //         value: 0,
            //         groupValue: controller.buyRadioValue.value,
            //         onChanged: (value) {
            //           //controller.updateRadioValue(value!);
            //         },
            //       ),),
            //       Text('%'),
            //       Obx(() => Radio(
            //         value: 1,
            //         groupValue: controller.buyRadioValue,
            //         onChanged: (value) {
            //          // controller.updateRadioValue(value!);
            //         },
            //       ),),
            //       Text('₹'),
            //     ],
            //   ),
            // ),

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
                        decoration: InputDecoration(
                          filled: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.cancel_sharp),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Radio(
                  //   value: 0,
                  //   groupValue: controller.sellRadioValue,
                  //   onChanged: (value) {
                  //
                  //   },
                  // ),
                  // Text('%'),
                  // Radio(
                  //   value: 1,
                  //   groupValue: controller.sellRadioValue,
                  //   onChanged: (value) {
                  //     // setState(() {
                  //     //   controller.sellRadioValue = value as int;
                  //     // });
                  //   },
                  // ),
                  // Text('₹'),
                ],
              ),
            ),

            Divider(
              color: Colors.black,
            ),

            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Net Buy Price ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "200rs",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Net Sell Price ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "200rs",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
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
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.4,
                      color: Colors.teal,
                      child: Center(
                          child: Text(
                        "Calculate",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: screenHeight * 0.05,
                      width: screenWidth * 0.4,
                      color: Colors.green,
                      child: Center(
                          child: Text(
                        "Reset",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      )), // Second new container color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
