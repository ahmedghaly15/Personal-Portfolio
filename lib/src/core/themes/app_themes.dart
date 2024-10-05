import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get light => ThemeData(
        colorScheme: const ColorScheme.light(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldLightBackgroundColor,
        brightness: Brightness.light,
      );

  static ThemeData get dark => ThemeData(
        colorScheme: const ColorScheme.dark(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.darkColor,
        brightness: Brightness.dark,
      );
}
