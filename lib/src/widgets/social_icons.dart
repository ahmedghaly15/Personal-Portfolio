import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        AppConstants.socialIcons(context).length,
        (index) => IconButton(
          onPressed: AppConstants.socialIcons(context)[index].onPressed,
          icon: SvgPicture.asset(
            AppConstants.socialIcons(context)[index].icon,
            height: 32.h,
          ),
        ),
      ),
    );
  }
}
