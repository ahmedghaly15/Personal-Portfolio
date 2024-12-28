import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get dark => ThemeData(
        colorScheme: const ColorScheme.dark(primary: AppColors.primaryColor),
        primaryColor: AppColors.primaryColor,
        fontFamily: AppStrings.fontFamily,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.primaryColor,
        brightness: Brightness.dark,
      );
}
