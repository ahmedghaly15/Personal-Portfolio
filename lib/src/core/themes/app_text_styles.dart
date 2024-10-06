import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/utils/functions/get_responsive_font_size.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle ralewayFont18Medium(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w500,
        fontFamily: AppStrings.ralewayFontFamily,
      );

  static TextStyle ralewayFont20SemiBold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w600,
        fontFamily: AppStrings.ralewayFontFamily,
      );
  static TextStyle nunitoFont20Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.nunitoFontFamily,
      );
  static TextStyle playfairFont64Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 64),
        fontWeight: FontWeight.bold,
        fontFamily: AppStrings.playfairFontFamily,
      );
  static TextStyle nunitoFont24Regular(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w400,
        fontFamily: AppStrings.nunitoFontFamily,
      );

  static TextStyle nunitoFont20Medium(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w500,
        fontFamily: AppStrings.nunitoFontFamily,
      );
}
