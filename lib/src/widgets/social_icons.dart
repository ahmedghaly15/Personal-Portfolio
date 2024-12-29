import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/models/social_icon.dart';

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
        (index) => Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: AppColors.color6971A2.withAlpha(41),
              width: 1.w,
            ),
          ),
          child: MaterialButton(
            onPressed: () async =>
                await openUrl(SocialIcon.socialIcons[index].url),
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: SvgPicture.asset(
              SocialIcon.socialIcons[index].icon,
              fit: BoxFit.cover,
            ),
          ),
        ),
        growable: false,
      ),
    );
  }
}
