import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../models/skill_tab_model.dart';


class SkillsTabBigText extends StatelessWidget {
  const SkillsTabBigText({super.key, required this.headerBigText});

  final SkillHeaderTextModel headerBigText;

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
                text: '${headerBigText.text1} ',
          style: AppTextStyles.font72Bold(context).copyWith(
            color: Colors.white,
          ),
        ),
        TextSpan(
                text: headerBigText.colorfulString,
          style: AppTextStyles.font72Bold(context).copyWith(
            color: AppColors.colorCBACF9,
          ),
        ),
        TextSpan(
                text: '\n${headerBigText.text3}',
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
