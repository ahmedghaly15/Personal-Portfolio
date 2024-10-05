import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';

class Profiling extends StatelessWidget {
  const Profiling({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 54.h, start: 120.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInLeft(
            child: Text(
              context.translate(LangKeys.flutterDeveloper),
              style: AppTextStyles.nunitoFont20Bold(context).copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
          MySizedBox.height12,
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                context.translate(LangKeys.helloMyNameIs),
                textStyle: AppTextStyles.playfairFont64Bold(context).copyWith(
                  color: AppColors.lightModeFontColor,
                ),
                speed: const Duration(milliseconds: 100),
                cursor: '',
              ),
            ],
            totalRepeatCount: 1,
            displayFullTextOnTap: false,
            stopPauseOnTap: true,
          ),
          MySizedBox.height32,
          FadeInLeft(
            child: Text(
              context.translate(LangKeys.myDescription),
              style: AppTextStyles.nunitoFont24Regular(context).copyWith(
                color: AppColors.mediumGrey,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
