import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:stock_calculator/constant/constant.dart';
import 'package:stock_calculator/themes/app_colors.dart';
import 'package:stock_calculator/themes/app_them_data.dart';

import '../controllers/settings_screen_controller.dart';

class SettingsScreenView extends GetView<SettingsScreenController> {
  const SettingsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SettingsScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,// Set initial background color based on theme mode
          body: Column(
            children: [
              menuItemWidget(
                context: context,
                onTap: () async {
                  final Uri url = Uri.parse("");
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch ${''}'.tr);
                  }
                },
                title: "Privacy Policy".tr,
                svgImage: "assets/icons/ic_privacy.svg",
              ),
              const Divider(height: 0, color: AppColors.lightGrey05),
              menuItemWidget(
                context: context,
                onTap: () async {
                  final Uri url = Uri.parse('');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch ${''}'.tr);
                  }
                },
                title: "Terms & Conditions".tr,
                svgImage: "assets/icons/ic_note.svg",
              ),
              menuItemWidget(
                context: context,
                onTap: () async {
                  Constant().launchEmailSupport();
                },
                title: "Support".tr,
                svgImage: "assets/icons/ic_call.svg",
              ),
              menuItemWidget(
                  context: context,
                  onTap: () {
                    //   Get.toNamed(Routes.CONTACT_US_SCREEN);
                  },
                  title: "Contact us".tr,
                  svgImage: "assets/icons/ic_contact_us.svg",
                  isHighlighted: true
              ),
              SwitchListTile(

                title: Text(
                  "Dark mode/White mode".tr,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: AppThemData.medium,
                    color: AppColors.darkGrey08,
                  ),
                ),
                value: controller.isDarkMode.value,
                onChanged: (value) {
                  controller.toggleTheme();
                  storeThemeMode(value);// Call toggleTheme method
                },
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
    required VoidCallback onTap,
    bool isHighlighted = false, // Add a default value for isHighlighted
  }) {
    return GetBuilder<SettingsScreenController>(
      builder: (controller) {

        return ListTile(
          tileColor: Theme.of(context).colorScheme.background, // Adjust tile color based on isHighlighted
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
                    color: AppColors.darkGrey08,
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
