import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:stock_calculator/themes/app_colors.dart';
import 'package:stock_calculator/themes/dark_theme_provider.dart';
import 'lenguage_screen_controller.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LanguageScreenController languageScreenController = Get.put(LanguageScreenController());
    final themeChange = Provider.of<DarkThemeProvider>(context);
    updateLanguage(Locale locale) {
      Get.updateLocale(locale);
    }

    List<String> languageList = [
      'English',
      'gujarati',
    ];

    List local = const [
      Locale('en', 'US'),
      Locale('gu', 'GU'),
    ];

    List<String> languageCode = [
      'en',
      'gu',
    ];

    List<String> countryCode = [
      'US',
      'GU',
    ];

    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xff024854),
        elevation: 0,
        centerTitle: true,
        title: Text("language".tr, style: TextStyle(color: context.textTheme.headline1!.color)),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: context.textTheme.headline1!.color,
            )),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                //color: AppColors.darkGrey03,
                borderRadius: BorderRadius.circular(15)),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: languageList.length,
                itemBuilder: (context, index) {
                  return Obx(() {
                    return InkWell(
                      onTap: () {
                        languageScreenController.onChangeIndex(index);
                        languageScreenController.storeCountryCode(countryCode[index]);
                        languageScreenController.storeLanguageCode(languageCode[index]);
                        updateLanguage(local[index]);
                      },
                      child: SizedBox(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  languageList[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Spacer(),
                                languageScreenController.selectedIndex.value == index
                                    ? const Icon(
                                        Icons.check,
                                        color: Color(0xff3FB085),
                                      )
                                    : Container()
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Divider(
                                height: 0,
                                color: themeChange.getThem()
                                    ? AppColors.lightGrey05.withOpacity(0.5)
                                    : AppColors.darkGrey08),
                          ],
                        ),
                      ),
                    );
                  });
                }),
          ).marginOnly(left: 20, right: 20, top: 10, bottom: 55),
        ],
      ),
    );
  }
}
