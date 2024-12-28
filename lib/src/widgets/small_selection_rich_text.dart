import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';

class SmallSelectionRichText extends StatelessWidget {
  const SmallSelectionRichText({
    super.key,
    required this.firstSpan,
    required this.secondSpan,
  });

  final String firstSpan, secondSpan;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstSpan,
            style: AppTextStyles.font48Bold(context).copyWith(
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: secondSpan,
            style: AppTextStyles.font48Bold(context).copyWith(
              color: AppColors.colorCBACF9,
            ),
          ),
        ],
      ),
    );
  }
}
