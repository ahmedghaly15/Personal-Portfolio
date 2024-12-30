import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class PrioritizeImg extends StatelessWidget {
  const PrioritizeImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(23.r),
          child: Image.asset(
            Assets.imagesPrioritizeImage,
            fit: BoxFit.cover,
          ),
        ),
        PositionedDirectional(
          start: 40.w,
          bottom: 60.h,
          child: Text(
            AppStrings.iPrioritizeClient,
            style: AppTextStyles.font32Bold(context),
          ),
        ),
      ],
    );
  }
}

class AnimatedPrioritizeImg extends StatefulWidget {
  const AnimatedPrioritizeImg({super.key});

  @override
  State<AnimatedPrioritizeImg> createState() => _AnimatedPrioritizeImgState();
}

class _AnimatedPrioritizeImgState extends State<AnimatedPrioritizeImg> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey('animated_prioritize_img'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.5 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FadeInLeft(child: const PrioritizeImg())
          : const Opacity(
              opacity: 0,
              child: PrioritizeImg(),
            ),
    );
  }
}
