import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class AppThemes {
  AppThemes._();

  // static ThemeData get light => ThemeData(
  //       colorScheme:
  //           const ColorScheme.light(primary: AppColors.secondPrimaryColor),
  //       primaryColor: AppColors.secondPrimaryColor,
  //       fontFamily: AppStrings.fontFamily,
  //       useMaterial3: true,
  //       scaffoldBackgroundColor: AppColors.secondPrimaryColor,
  //       brightness: Brightness.light,
  //     );

  static ThemeData get dark => ThemeData(
        // colorScheme:
        //     const ColorScheme.dark(primary: AppColors.secondPrimaryColor),
        // primaryColor: AppColors.secondPrimaryColor,
        fontFamily: AppStrings.fontFamily,
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.secondPrimaryColor,
        brightness: Brightness.dark,
      );
}
