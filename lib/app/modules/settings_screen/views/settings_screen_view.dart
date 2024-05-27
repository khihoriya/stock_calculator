import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stock_calculator/lenguage_pages/lenguage_screen.dart';
import 'package:stock_calculator/preferences.dart';
import 'package:stock_calculator/themes/dark_theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:stock_calculator/themes/app_colors.dart';
import 'package:stock_calculator/themes/app_them_data.dart';
import '../controllers/settings_screen_controller.dart';

class SettingsScreenView extends GetView<SettingsScreenController> {
  const SettingsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return GetBuilder(
      init: SettingsScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Theme.of(context)
              .colorScheme
              .background, // Set initial background color based on theme mode
          body: Column(
            children: [
              menuItemWidget(
                color: themeChange.getThem()
                    ? AppColors.gallery200
                    : AppColors.darkGrey08,
                context: context,
                onTap: () async {
                  controller.openGooglePlayStore();
                },
                title: "Rate Us".tr,
                svgImage: "assets/icons/ic_rateus.svg",
              ),
              Divider(
                  height: 0,
                  color: themeChange.getThem()
                      ? AppColors.lightGrey05
                      : AppColors.darkGrey08),
              menuItemWidget(
                  color: themeChange.getThem()
                      ? AppColors.gallery200
                      : AppColors.darkGrey08,
                  context: context,
                  onTap: () {
                    Share.share(
                        "Stock price calculator\n it is use for effortlessly calculating stocks,\ndownload Now:-https://play.google.com/store/apps/details?id=com.stock.stock_calculator");
                  },
                  title: "Share".tr,
                  svgImage: "assets/icons/ic_share.svg",
                  isHighlighted: true),
              Divider(
                  height: 0,
                  color: themeChange.getThem()
                      ? AppColors.lightGrey05
                      : AppColors.darkGrey08),
              menuItemWidget(
                color: themeChange.getThem()
                    ? AppColors.gallery200
                    : AppColors.darkGrey08,
                context: context,
                onTap: () async {
                  final Uri url = Uri.parse(
                      "https://doc-hosting.flycricket.io/stock-price-calculator-privacy-policy/e8ffd27f-ea74-4770-82bb-6df763444313/privacy");
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch ${''}'.tr);
                  }
                },
                title: "Privacy Policy".tr,
                svgImage: "assets/icons/ic_privacy.svg",
              ),
              Divider(
                  height: 0,
                  color: themeChange.getThem()
                      ? AppColors.lightGrey05
                      : AppColors.darkGrey08),
              menuItemWidget(
                color: themeChange.getThem()
                    ? AppColors.gallery200
                    : AppColors.darkGrey08,
                context: context,
                onTap: () async {
                  final Uri url = Uri.parse(
                      'https://doc-hosting.flycricket.io/stock-price-calculator-terms-of-use/fa47aa5d-eef0-4491-b875-3926eae34be1/terms');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch ${''}'.tr);
                  }
                },
                title: "Terms & Conditions".tr,
                svgImage: "assets/icons/ic_note.svg",
              ),
              Divider(
                  height: 0,
                  color: themeChange.getThem()
                      ? AppColors.lightGrey05
                      : AppColors.darkGrey08),
              menuItemWidget(
                  color: themeChange.getThem()
                      ? AppColors.gallery200
                      : AppColors.darkGrey08,
                  context: context,
                  onTap: () {
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path:
                          'gopinathitech@gmail.com', // Replace with your email address
                    );

                    launch(emailLaunchUri.toString());
                  },
                  title: "Contact us".tr,
                  svgImage: "assets/icons/ic_contact_us.svg",
                  isHighlighted: true),
              Divider(
                  height: 0,
                  color: themeChange.getThem()
                      ? AppColors.lightGrey05
                      : AppColors.darkGrey08),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Change Theme',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: AppThemData.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SwitchListTile(
                title: Text(
                  "Dark mode/White mode".tr,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppThemData.bold,
                    color: themeChange.getThem()
                        ? AppColors.gallery200
                        : AppColors.gallery800,
                  ),
                ),
                value: themeChange.darkTheme == 0,
                onChanged: (value) {
                  themeChange.darkTheme =
                      value ? 0 : 1; // 0 for Dark, 1 for Light
                  String themeMode = value ? "Dark" : "Light";
                  Preferences.setString(Preferences.themKey, themeMode);
                },
                activeColor: AppColors.green04,
              ).marginOnly(left: 10),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Change Language',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: AppThemData.bold,
                      ),
                    ),
                  ),
                ],
              ),
              menuItemWidget(
                context: context,
                color: themeChange.getThem()
                    ? AppColors.gallery200
                    : AppColors.darkGrey08,
                onTap: () {
                  // Get.toNamed(Routes.LANGUAGE_SCREEN)?.then((value) {
                  //   if (value == true) {
                  //     controller.getLanguage();
                  //   }
                  // });
                  Get.to(const LanguageScreen(),
                      transition: Transition.rightToLeft);
                },
                title: "Language".tr,
                svgImage: "assets/icons/ic_language.svg",
              ),
            ],
          ),
        );
      },
    );
  }

  menuItemWidget({
    required BuildContext context,
    required String svgImage,
    required String title,
    required Color color,
    required VoidCallback onTap,
    bool isHighlighted = false,
  }) {
    return GetBuilder<SettingsScreenController>(
      builder: (controller) {
        return ListTile(
          tileColor: Theme.of(context).colorScheme.background,
          // Adjust tile color based on isHighlighted
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          horizontalTitleGap: 6,
          onTap: onTap,
          trailing: const Icon(Icons.arrow_forward_ios, size: 18),
          leading: SvgPicture.asset(
            svgImage,
            color: title == "Log Out" || title.tr == "Delete Account".tr
                ? AppColors.red04
                : AppColors.darkGrey05,
            height: 26,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: AppThemData.medium,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void storeThemeMode(bool isDarkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isDarkMode);
  }
}
