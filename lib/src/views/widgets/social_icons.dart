import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/social_icon.dart';
import 'social_icon_item.dart';

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
        (index) => FadeInDown(
          from: (100 + (10 * index)).toDouble(),
          delay: Duration(milliseconds: 200 * index),
          child: SocialIconItem(
            socialIcon: SocialIcon.socialIcons[index],
          ),
        ),
        growable: false,
      ),
    );
  }
}
