import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../models/about.dart';

class LandingViewBigText extends StatelessWidget {
  const LandingViewBigText({super.key, required this.headerBigText});

  final AboutHeaderTextModel headerBigText;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 500),
      child: FittedBox(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children:
                [
                  TextSpan(
                text: '${headerBigText.text1}\n',
                    style: AppTextStyles.font72Bold(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                text: '${headerBigText.text2} ',
                    style: AppTextStyles.font72Bold(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                text: headerBigText.coloredString,
                    style: AppTextStyles.font72Bold(context).copyWith(
                      color: AppColors.colorCBACF9,
                    ),
                  ),
                ],
          ),
        ),
      ),
    );
  }
}

class HeaderSmallText extends StatelessWidget {
  const HeaderSmallText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 300),
      child: Text(
        text,
        style: AppTextStyles.font16Regular(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class HeaderDescriptionText extends StatelessWidget {
  const HeaderDescriptionText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      delay: const Duration(milliseconds: 700),
      child: Text(
        text,
        style: AppTextStyles.font24Regular(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
