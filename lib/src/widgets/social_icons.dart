import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            color: const Color(0xff05041F).withAlpha(204),
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                color: Colors.white.withAlpha(31),
                blurRadius: 8.r,
                spreadRadius: 0.82.r,
              ),
            ],
          ),
          child: MaterialButton(
            onPressed: () async =>
                await openUrl(SocialIcon.socialIcons[index].url),
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 11.w),
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
