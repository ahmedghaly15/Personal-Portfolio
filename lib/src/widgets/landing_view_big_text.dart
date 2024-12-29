import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class LandingViewBigText extends StatelessWidget {
  const LandingViewBigText({super.key, this.textSpans});

  final List<TextSpan>? textSpans;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      duration: AppConstants.animationDuration,
      delay: const Duration(milliseconds: 500),
      child: FittedBox(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: textSpans ??
                [
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
      duration: AppConstants.animationDuration,
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
      duration: AppConstants.animationDuration,
      delay: const Duration(milliseconds: 700),
      child: Text(
        text,
        style: AppTextStyles.font24Regular(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
