import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class LandingViewBigText extends StatelessWidget {
  const LandingViewBigText({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: '${AppStrings.transformingConceptsInto}\n',
              style: AppTextStyles.font72Bold(context).copyWith(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: '${AppStrings.seamless} ',
              style: AppTextStyles.font72Bold(context).copyWith(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: AppStrings.userExperience,
              style: AppTextStyles.font72Bold(context).copyWith(
                color: AppColors.colorCBACF9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
