import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../core/utils/app_strings.dart';


class SkillsTabBigText extends StatelessWidget {
  const SkillsTabBigText({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 500),
      child: FittedBox(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
        TextSpan(
          text: '${AppStrings.elevating} ',
          style: AppTextStyles.font72Bold(context).copyWith(
            color: Colors.white,
          ),
        ),
        TextSpan(
          text: AppStrings.mySkills,
          style: AppTextStyles.font72Bold(context).copyWith(
            color: AppColors.colorCBACF9,
          ),
        ),
        TextSpan(
          text: '\n${AppStrings.oneLineCode}',
          style: AppTextStyles.font72Bold(context).copyWith(
            color: Colors.white,
          ),
        ),
      ],
          ),
        ),
      ),
    );
  }
}
