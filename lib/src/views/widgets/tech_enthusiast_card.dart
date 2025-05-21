import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';

class TechEnthusiastCard extends StatelessWidget {
  const TechEnthusiastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesTechEnthusiastBackground,
              fit: BoxFit.cover,
            ),
          ),
          PositionedDirectional(
            start: 28.w,
            top: 28.h,
            child: Text(
              AppStrings.techEnthusiast,
              style: AppTextStyles.font24Bold(context),
            ),
          ),
          PositionedDirectional(
            end: 8.w,
            bottom: 0,
            child: Image.asset(Assets.imagesTechEnthusiastBoxImg),
          ),
        ],
      ),
    );
  }
}

class AnimatedTechEnthusiastCard extends StatefulWidget {
  const AnimatedTechEnthusiastCard({super.key});

  @override
  State<AnimatedTechEnthusiastCard> createState() =>
      _AnimatedTechEnthusiastCardState();
}

class _AnimatedTechEnthusiastCardState
    extends State<AnimatedTechEnthusiastCard> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey('animated_tech_enthusiast_card'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.5 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FadeInRight(
              delay: const Duration(milliseconds: 300),
              child: const TechEnthusiastCard(),
            )
          : const Opacity(
              opacity: 0,
              child: TechEnthusiastCard(),
            ),
    );
  }
}
