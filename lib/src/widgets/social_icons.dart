import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/models/social_icon.dart';
import 'package:personal_portfolio/src/widgets/social_icon_item.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        SocialIcon.socialIcons.length,
        (index) => AnimatedSocialIcon(
          socialIcon: SocialIcon.socialIcons[index],
          index: index,
        ),
        growable: false,
      ),
    );
  }
}
