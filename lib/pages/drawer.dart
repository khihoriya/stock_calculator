import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:stock_calculator/pages/profit_calculator.dart';

import 'homepage.dart';
import 'loss_calculaot.dart';
import 'multi_stock_calculator.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  List page = [HomePage(),multi_stock_calculator(),ProfitCalculator(),loss_calculator()];
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
    return Scaffold(  appBar: AppBar(
      title: Text('$appbartitle'),
    ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
                child: Lottie.asset("lottie/Animation - 1710942560777.json")
              ),
              ListTile(
                title: Text('Stock average calculor'),
                onTap: () {
                  setState(() {
                    index = 0;
                    appbartitle = "Stock Average Calculator";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Multi Stock calculator'),
                onTap: () {
                  setState(() {
                    index = 1;
                    appbartitle = "Multi Stock Calculator";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Profit calculator'),
                onTap: () {
                  setState(() {
                    index = 2;
                    appbartitle = "Profit Calculator";
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Loss calculator'),
                onTap: () {
                  setState(() {
                    index = 3;
                    appbartitle = "Loss Calculator";
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
