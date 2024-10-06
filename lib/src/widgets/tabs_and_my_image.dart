import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/widgets/header_tabs_bloc_builder.dart';
import 'package:personal_portfolio/src/widgets/up_and_down_animated_widget.dart';

class TabsAndMyImage extends StatelessWidget {
  const TabsAndMyImage({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic =
        context.watch<LocaleCubit>().isArabic; // Watch the locale change here

    return Stack(
      alignment: isArabic
          ? AlignmentDirectional.topStart
          : AlignmentDirectional.topEnd,
      children: [
        BounceInDown(child: SvgPicture.asset(Assets.svgsLavenderBg)),
        Container(
          margin: EdgeInsetsDirectional.only(top: 14.h, start: 16.w),
          child: const HeaderTabsBlocBuilder(),
        ),
        PositionedDirectional(
          top: 0,
          end: isArabic ? null : 16.w,
          start: isArabic ? 16.w : null,
          bottom: 16.h,
          child: UpAndDownAnimatedWidget(
            child: CircleAvatar(
              backgroundColor: AppColors.primaryColor,
              backgroundImage: const AssetImage(Assets.imagesBlackMe),
              radius: 280.r,
            ),
          ),
        ),
      ],
    );
  }
}
