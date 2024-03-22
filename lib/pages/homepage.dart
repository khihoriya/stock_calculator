import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:stock_calculator/themes/app_colors.dart';
import 'package:stock_calculator/themes/app_them_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController originalshareqty = TextEditingController();
  TextEditingController purchaseprice = TextEditingController();
  TextEditingController newshareqty = TextEditingController();
  TextEditingController newpurchaseprice = TextEditingController();

  RxInt totalshare = 0.obs;
  RxInt totalcost = 0.obs;
  RxDouble averageprice = 0.0.obs;

  void calculate() {
    String shareqty = originalshareqty.text.toString();
    String purchasepricee = purchaseprice.text.toString();
    String newhsareqtyyy = newshareqty.text.toString();
    String newpurchasepricee = newpurchaseprice.text.toString();

    if (originalshareqty.text.isEmpty) {
      Get.snackbar("Error", "Please enter original share qty");
    } else if (purchaseprice.text.isEmpty) {
      Get.snackbar("Error", "Please enter purchase price");
    } else if (newshareqty.text.isEmpty) {
      Get.snackbar("Error", "Please enter new share qty");
    } else if (newpurchaseprice.text.isEmpty) {
      Get.snackbar("Error", "Please enter new purchase price");
    } else {
      totalshare.value = int.parse(shareqty) + int.parse(newhsareqtyyy);
      totalcost.value = (int.parse(shareqty) * int.parse(purchasepricee)) + (int.parse(newhsareqtyyy) * int.parse(newpurchasepricee));
      averageprice.value = totalcost.value / totalshare.value;
    }
  }

  void reset() {
    originalshareqty.clear();
    purchaseprice.clear();
    newshareqty.clear();
    newpurchaseprice.clear();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Original share quantity",
                    style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                  ),
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
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: originalshareqty,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Purchase price",
                    style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                  ),
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
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: purchaseprice,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "New Share Qty",
                    style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                  ),
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
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: newshareqty,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "New Purchase Price",
                    style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                  ),
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
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: newpurchaseprice,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.cancel_sharp))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Average Price Per Share ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  ),
                  Obx(() => Text(
                    "${averageprice.value.toStringAsFixed(2)}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Share ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  ),
                  Obx(() => Text(
                    "${totalshare.value}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Cost ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  ),
                  Obx(() => Text(
                    "${totalcost.value}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: AppThemData.bold),
                  )),
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
                        String shareqty = originalshareqty.text.toString();
                        String purchasepricee = purchaseprice.text.toString();
                        String newhsareqtyyy = newshareqty.text.toString();
                        String newpurchasepricee = newpurchaseprice.text.toString();

                        if (originalshareqty.text.isEmpty) {
                          ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(content: Text("Please enter original share qty")));
                        } else if (purchaseprice.text.isEmpty) {
                          ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(content: Text("Please enter purchase price")));
                        } else if (newshareqty.text.isEmpty) {
                          ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(content: Text("Please enter new share qty")));
                        } else if (newpurchaseprice.text.isEmpty) {
                          ScaffoldMessenger.maybeOf(context)!.showSnackBar(SnackBar(content: Text("Please enter new purchase price")));
                        } else {
                          totalshare.value = int.parse(shareqty) + int.parse(newhsareqtyyy);
                          totalcost.value = (int.parse(shareqty) * int.parse(purchasepricee)) + (int.parse(newhsareqtyyy) * int.parse(newpurchasepricee));
                          averageprice.value = totalcost.value / totalshare.value;
                        }
                      },
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.4,
                        color: AppColors.primary600,
                        child: Center(
                          child: Text(
                            "Calculate",
                            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),
                  Expanded(
                    child: InkWell(onTap: () {
                      originalshareqty.clear();
                      purchaseprice.clear();
                      newshareqty.clear();
                      newpurchaseprice.clear();

                      totalshare.value = 0;
                      totalcost.value = 0;
                      averageprice.value = 0;
                    },
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.4,
                        color: AppColors.green04,
                        child: const Center(child: Text("Reset",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),// Second new container color
                      ),
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
