import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/models/social_icon.dart';

class SocialIconItem extends StatelessWidget {
  const SocialIconItem({
    super.key,
    required this.socialIcon,
    required this.index,
  });

  final SocialIcon socialIcon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: MaterialButton(
        onPressed: () async => await openUrl(SocialIcon.socialIcons[index].url),
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: SvgPicture.asset(
          SocialIcon.socialIcons[index].icon,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AnimatedSocialIcon extends StatefulWidget {
  const AnimatedSocialIcon({
    super.key,
    required this.socialIcon,
    required this.index,
  });

  final SocialIcon socialIcon;
  final int index;

  @override
  State<AnimatedSocialIcon> createState() => _AnimatedSocialIconState();
}

class _AnimatedSocialIconState extends State<AnimatedSocialIcon> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ValueKey('animated_social_icon_${widget.index}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.35 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FadeInDown(
              key: ValueKey('small_selection_sliver_grid_${widget.index}'),
              from: (100 + (10 * widget.index)).toDouble(),
              delay: Duration(milliseconds: 200 * widget.index),
              child: SocialIconItem(
                socialIcon: widget.socialIcon,
                index: widget.index,
              ),
            )
          : Opacity(
              opacity: 0,
              child: SocialIconItem(
                socialIcon: widget.socialIcon,
                index: widget.index,
              ),
            ),
    );
  }
}
