import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/cubit/app_cubit.dart';
import 'package:personal_portfolio/src/widgets/my_speed_dial.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDialFabWidget(
      primaryBackgroundColor: AppColors.primaryColor,
      primaryForegroundColor:
          context.isDarkModeActive ? AppColors.darkColor : Colors.white,
      primaryElevation: 10.h,
      secondaryBackgroundColor:
          context.isDarkModeActive ? AppColors.closeToBlackColor : Colors.white,
      secondaryForegroundColor: AppColors.primaryColor,
      secondaryElevation: 10.h,
      secondaryIconsList: const [
        Icons.info,
        Icons.work,
        Icons.code,
      ],
      secondaryIconsOnPress: List.generate(
        AppConstants.headerTitlesKeys.length,
        (index) => () {
          context.read<AppCubit>().updateSelectedTab(index);
        },
      ),
      secondaryIconsText: List.generate(
        AppConstants.headerTitlesKeys.length,
        (index) => context.translate(
          AppConstants.headerTitlesKeys[index],
        ),
      ),
    );
  }
}
