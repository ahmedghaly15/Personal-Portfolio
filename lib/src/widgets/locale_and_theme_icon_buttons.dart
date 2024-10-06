import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/themes/themes_cubit.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';

class LocaleAndThemeIconButtons extends StatelessWidget {
  const LocaleAndThemeIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            context.read<LocaleCubit>().toggleLocale();
          },
          icon: SvgPicture.asset(
            Assets.svgsLocaleIcon,
            height: 40.h,
          ),
        ),
        IconButton(
          onPressed: () => context.read<ThemingCubit>().toggleTheme(),
          icon: SvgPicture.asset(
            context.isDarkModeActive
                ? Assets.svgsDarkModeIcon
                : Assets.svgsLightModeIcon,
            height: 40.h,
          ),
        ),
      ],
    );
  }
}
