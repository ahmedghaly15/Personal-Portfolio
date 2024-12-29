import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class TechEnthusiastCard extends StatelessWidget {
  const TechEnthusiastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesTechEnthusiastBackground,
              fit: BoxFit.cover,
            ),
          ),
          PositionedDirectional(
            start: 28.w,
            top: 28.h,
            child: Text(
              AppStrings.techEnthusiast,
              style: AppTextStyles.font24Bold(context),
            ),
          ),
          PositionedDirectional(
            end: 8.w,
            bottom: 0,
            child: Image.asset(Assets.imagesTechEnthusiastBoxImg),
          ),
        ],
      ),
    );
  }
}
