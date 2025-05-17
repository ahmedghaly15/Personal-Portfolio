import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';

class CustomSectionTitle extends StatelessWidget {
  const CustomSectionTitle({
    super.key,
    required this.whiteSpan,
    required this.colorfulSpan,
  });

  final String whiteSpan, colorfulSpan;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: whiteSpan,
            style: AppTextStyles.font48Bold(context).copyWith(
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: colorfulSpan,
            style: AppTextStyles.font48Bold(context).copyWith(
              color: AppColors.colorCBACF9,
            ),
          ),
        ],
      ),
    );
  }
}
