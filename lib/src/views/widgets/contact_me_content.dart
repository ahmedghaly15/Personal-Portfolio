import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';
import '../../core/utils/functions/open_url.dart';
import '../../core/widgets/main_button.dart';
import 'social_icons.dart';

class AnimatedContactMeContent extends StatefulWidget {
  const AnimatedContactMeContent({super.key, this.contactMeButtonWidth});

  final double? contactMeButtonWidth;

  @override
  State<AnimatedContactMeContent> createState() =>
      _AnimatedContactMeContentState();
}

class _AnimatedContactMeContentState extends State<AnimatedContactMeContent> {
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
          ? ContactMeContent(
              contactMeButtonWidth: widget.contactMeButtonWidth,
            )
          : const Opacity(
              opacity: 0,
              child: ContactMeContent(),
            ),
    );
  }
}

class ContactMeContent extends StatelessWidget {
  const ContactMeContent({super.key, this.contactMeButtonWidth});

  final double? contactMeButtonWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24.h,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElasticIn(
          child: FittedBox(
            child: RichText(
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
          ),
        ),
        ElasticIn(
          child: Text(
            AppStrings.reachMeOut,
            style: AppTextStyles.font16Regular(context),
            textAlign: TextAlign.center,
          ),
        ),
        ElasticIn(
          child: MainButton.icon(
            context: context,
            svgIcon: Assets.svgsLinkArrow,
            labelText: AppStrings.contactMeNow,
            width: contactMeButtonWidth,
            onPressed: () async => await openUrl(
              AppStrings.myGmail,
              isEmail: true,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40.h),
          child: const SocialIcons(),
        ),
      ],
    );
  }
}
