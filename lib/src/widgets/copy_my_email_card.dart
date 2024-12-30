import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';

class CopyMyEmailCard extends StatelessWidget {
  const CopyMyEmailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        color: AppColors.color06091F,
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesCopyEmailAddressBackground,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 24.h,
              children: [
                Text(
                  AppStrings.wantToStartProjectTogether,
                  style: AppTextStyles.font24Bold(context),
                  textAlign: TextAlign.center,
                ),
                MainButton(
                  onPressed: () async {
                    await Clipboard.setData(
                      const ClipboardData(text: AppStrings.myGmail),
                    );
                  },
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff161A31),
                      Color(0xff06091F),
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional.centerStart,
                    end: AlignmentDirectional.centerEnd,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5.w,
                    children: [
                      SvgPicture.asset(Assets.svgsCopyIcon),
                      Text(
                        AppStrings.copyMyEmailAddress,
                        style: AppTextStyles.font14Medium(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedCopyMyEmailCard extends StatefulWidget {
  const AnimatedCopyMyEmailCard({super.key});

  @override
  State<AnimatedCopyMyEmailCard> createState() =>
      _AnimatedCopyMyEmailCardState();
}

class _AnimatedCopyMyEmailCardState extends State<AnimatedCopyMyEmailCard> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey('animated_copy_my_email_card'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.5 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FadeInRight(
              delay: const Duration(milliseconds: 600),
              child: const CopyMyEmailCard(),
            )
          : const Opacity(
              opacity: 0,
              child: CopyMyEmailCard(),
            ),
    );
  }
}
