import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:stock_calculator/app/modules/multi_stock_calculator/views/multi_stock_calculator_view.dart';
import 'package:stock_calculator/app/modules/profit_calculator/views/profit_calculator_view.dart';
import 'package:stock_calculator/app/modules/settings_screen/views/settings_screen_view.dart';
import 'package:stock_calculator/pages/profit_calculator.dart';
import 'package:stock_calculator/themes/app_them_data.dart';

import '../app/modules/loss_calculaot/views/loss_calculaot_view.dart';
import '../pages/homepage.dart';
import '../pages/loss_calculaot.dart';
import '../pages/multi_stock_calculator.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  List page = [
    const HomePage(),
    const MultiStockCalculatorView(),
    ProfitCalculatorView(),
    const LossCalculaotView(),
    const SettingsScreenView()
  ];
  int index = 0;

  String appbartitle = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appbartitle = "Stock Average Calculator";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xff024854),
          title: Text('$appbartitle',
              style: const TextStyle(fontFamily: AppThemData.bold,color: Colors.white),),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color(0xff024854),
                  ),
                  child: Lottie.asset("lottie/Animation - 1710942560777.json")),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/stock1.svg',
                  height: 26,
                ),
                title: const Text(
                  'Stock average calculor',
                  style: TextStyle(fontFamily: AppThemData.bold),
                ),
                onTap: () {
                  setState(() {
                    index = 0;
                    appbartitle = "Stock Average Calculator";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/ic_multipal_stock.svg',
                  height: 26,
                ),
                title: const Text(
                  'Multi Stock calculator',
                  style: TextStyle(fontFamily: AppThemData.bold),
                ),
                onTap: () {
                  setState(() {
                    index = 1;
                    appbartitle = "Multi Stock Calculator";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/ic_profit.svg',
                  height: 26,
                ),
                title: Text(
                  'Profit calculator',
                  style: TextStyle(fontFamily: AppThemData.bold),
                ),
                onTap: () {
                  setState(() {
                    index = 2;
                    appbartitle = "Profit Calculator";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/ic_loss.svg',
                  height: 26,
                ),
                title: Text(
                  'Loss Recover',
                  style: TextStyle(fontFamily: AppThemData.bold),
                ),
                onTap: () {
                  setState(() {
                    index = 3;
                    appbartitle = "Loss Recover";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/icons/ic_setting.svg',
                  height: 26,
                ),
                title: const Text(
                  'settings',
                  style: TextStyle(fontFamily: AppThemData.bold),
                ),
                onTap: () {
                  setState(() {
                    index = 4;
                    appbartitle = "settings";
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: page[index]);
  }
}
