import 'package:flutter/material.dart';
import 'package:stock_calculator/themes/app_colors.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? AppColors.labelColorLightPrimary : AppColors.gallery50,
      primaryColor: isDarkTheme ? AppColors.primary : AppColors.primary,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      // timePickerTheme: TimePickerThemeData(
      //   backgroundColor: isDarkTheme ? AppColors.grey07 : AppColors.grey03,
      //   dialTextStyle: TextStyle(fontWeight: FontWeight.bold, color: isDarkTheme ? AppColors.grey10 : AppColors.grey10),
      //   dialTextColor: isDarkTheme ? AppColors.grey10 : AppColors.grey10,
      //   hourMinuteTextColor: isDarkTheme ? AppColors.grey10 : AppColors.grey10,
      //   dayPeriodTextColor: isDarkTheme ? AppColors.grey10 : AppColors.grey10,
      // ),
    );
  }
}
