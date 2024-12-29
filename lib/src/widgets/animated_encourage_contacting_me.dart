import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimatedEncourageContactingMe extends StatefulWidget {
  const AnimatedEncourageContactingMe({super.key, this.contactMeButtonWidth});

  final double? contactMeButtonWidth;

  @override
  State<AnimatedEncourageContactingMe> createState() =>
      _AnimatedEncourageContactingMeState();
}

class _AnimatedEncourageContactingMeState
    extends State<AnimatedEncourageContactingMe> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('encourage_contacting_me'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.85 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? ElasticIn(
              child: EncourageContactingMe(
                contactMeButtonWidth: widget.contactMeButtonWidth,
              ),
            )
          : const Opacity(
              opacity: 0,
              child: EncourageContactingMe(),
            ),
    );
  }
}

class EncourageContactingMe extends StatelessWidget {
  const EncourageContactingMe({super.key, this.contactMeButtonWidth});

  final double? contactMeButtonWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24.h,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: '${AppStrings.lookingToBringYourIdeasToLife} ',
                style: AppTextStyles.font48Bold(context).copyWith(
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: AppStrings.flutterApps,
                style: AppTextStyles.font48Bold(context).copyWith(
                  color: AppColors.colorCBACF9,
                ),
              ),
              TextSpan(
                text: '?',
                style: AppTextStyles.font48Bold(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Text(
          AppStrings.reachMeOut,
          style: AppTextStyles.font16Regular(context),
          textAlign: TextAlign.center,
        ),
        MainButton(
          width: contactMeButtonWidth,
          onPressed: () async => await openUrl(
            AppStrings.myGmail,
            isEmail: true,
          ),
          child: Row(
            spacing: 10.w,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStrings.contactMeNow,
                style: AppTextStyles.font18Medium(context),
              ),
              SvgPicture.asset(Assets.svgsLinkArrow),
            ],
          ),
        ),
      ],
    );
  }
}
