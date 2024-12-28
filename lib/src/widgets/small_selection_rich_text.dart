import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class SmallSelectionRichText extends StatelessWidget {
  const SmallSelectionRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '${AppStrings.smallSelectionOf} ',
            style: AppTextStyles.font48Bold(context).copyWith(
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: AppStrings.recentProjects,
            style: AppTextStyles.font48Bold(context).copyWith(
              color: AppColors.colorCBACF9,
            ),
          ),
        ],
      ),
    );
  }
}
