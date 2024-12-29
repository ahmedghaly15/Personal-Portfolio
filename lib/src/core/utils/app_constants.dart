import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class AppConstants {
  AppConstants._();

  static const List<String> headerTitlesKeys = [
    AppStrings.about,
    AppStrings.skills,
    AppStrings.portfolio,
  ];

  static BoxDecoration get boxDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        gradient: boxPrimaryLinearGradient,
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      );

  static const LinearGradient boxPrimaryLinearGradient = LinearGradient(
    colors: [
      AppColors.color04071D,
      AppColors.color0C0E23,
    ],
    stops: [0, 1],
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
  );
  static const LinearGradient boxSecondaryLinearGradient = LinearGradient(
    colors: [
      Color(0xff161A31),
      Color(0xff06091F),
    ],
    stops: [0, 1],
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
  );
}
