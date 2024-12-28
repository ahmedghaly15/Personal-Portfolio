import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/utils/functions/get_responsive_font_size.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle font72Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 72),
        fontWeight: FontWeight.w700,
      );
  static TextStyle font24Regular(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w400,
      );
  static TextStyle font18Medium(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontWeight: FontWeight.w500,
      );
  static TextStyle font16Regular(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w400,
      );
  static TextStyle font16Medium(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontWeight: FontWeight.w500,
      );
}
