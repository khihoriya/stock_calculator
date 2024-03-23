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
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        controller: sharequnty,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Share Quantity",
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black,fontFamily: AppThemData.medium),
                            suffixIcon: IconButton(
                                onPressed: () {},
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
                        controller: purchaseprice,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Purchase Price",
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black,fontFamily: AppThemData.medium),
                            suffixIcon: IconButton(
                                onPressed: () {},
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
                        controller: currentprice,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Current Price",
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black,fontFamily: AppThemData.medium),
                            suffixIcon: IconButton(
                                onPressed: () {},
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
                        decoration: InputDecoration(
                          hintText: "Current Loss (%)",
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black,fontFamily: AppThemData.medium),
                            suffixIcon: IconButton(
                                onPressed: () {},
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
                        decoration: InputDecoration(
                          hintText: "Recover Loss (%)",
                            fillColor: Colors.white,
                            filled: true,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black,fontFamily: AppThemData.medium),
                            suffixIcon: IconButton(
                                onPressed: () {},
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
            padding: EdgeInsets.all(12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Shares Qtyyyy",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                ),
          
                Text(
                  "200 rs",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                ),
          
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Shares",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                ),
          
                Text(
                  "200rs",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                ),
          
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Cost",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                ),
          
                Text(
                  "200rs",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                ),
          
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Average Price Per Share",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
                ),
          
                Text(
                  "200rs",
                  style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppThemData.bold),
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
                    color: AppColors.primary600,
                    child: const Center(child: Text("Calculate",style: TextStyle(fontFamily: AppThemData.bold,fontWeight: FontWeight.bold,color: AppColors.white),)),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.4,
                    color: AppColors.green04,
                    child: const Center(child: Text("Reset",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontFamily: AppThemData.bold),)),// Second new container color
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
