import 'package:flutter/material.dart';

import '../utils/app_strings.dart';
import 'app_colors.dart';


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
