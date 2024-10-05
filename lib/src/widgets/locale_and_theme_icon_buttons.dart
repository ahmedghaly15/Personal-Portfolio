import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';

class LocaleAndThemeIconButtons extends StatelessWidget {
  const LocaleAndThemeIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.svgsLocaleIcon,
            height: 40.h,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            Assets.svgsLightModeIcon,
            height: 40.h,
          ),
        ),
      ],
    );
  }
}
