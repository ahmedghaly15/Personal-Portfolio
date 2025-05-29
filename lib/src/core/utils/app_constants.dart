import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import 'app_strings.dart';

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
  static LinearGradient boxPrimaryLinearGradient = LinearGradient(
    colors: [
      AppColors.color04071D.withAlpha(204),
      AppColors.color0C0E23,
    ],
    stops: const [0, 1],
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
  static const double mobileHorizontalPadVal = 56;
}
