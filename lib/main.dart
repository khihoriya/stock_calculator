import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:stock_calculator/lenguage_pages/lenguage_screen_controller.dart';
import 'package:stock_calculator/main_controller.dart';
import 'package:stock_calculator/preferences.dart';
import 'package:stock_calculator/themes/dark_theme_provider.dart';
import 'package:stock_calculator/themes/styles.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.initPref();
  MobileAds.instance.initialize();

  runApp(const MyApp());
  //Get.put(MultiStockCalculatorController());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    getCurrentAppTheme();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme = await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (context, value, child) {
          Get.put(LanguageScreenController());
          Get.put(MainPageController());
          return GetMaterialApp(
            title: "Application",
            initialRoute: AppPages.INITIAL,
            debugShowCheckedModeBanner: false,
            theme: Styles.themeData(
                themeChangeProvider.darkTheme == 0
                    ? true
                    : themeChangeProvider.darkTheme == 1
                        ? false
                        : themeChangeProvider.getSystemThem(),
                context),
            getPages: AppPages.routes,
          );
        },
      ),
    );
  }
}
