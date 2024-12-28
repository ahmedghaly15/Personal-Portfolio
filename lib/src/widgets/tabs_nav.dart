import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/widgets/slide_animated_widget.dart';
import 'package:personal_portfolio/src/cubit/landing_cubit.dart';

class TabsNav extends StatelessWidget {
  const TabsNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 12.h,
        top: 16.h,
        left: 40.w,
        right: 40.w,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 50.h,
        horizontal: 16.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        gradient: const LinearGradient(
          colors: AppConstants.boxGradientColors,
          stops: [0, 1],
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        ),
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          AppConstants.headerTitlesKeys.length,
          (index) => BlocSelector<LandingCubit, LandingState, int>(
            selector: (state) => state.selectedTabNavIndex,
            builder: (context, selectedTabNavIndex) {
              final isSelected = selectedTabNavIndex == index;
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: AppTextStyles.font16Medium(context),
                      foregroundColor:
                          isSelected ? Colors.white : AppColors.colorC1C2D3,
                    ),
                    onPressed: () =>
                        context.read<LandingCubit>().selectTabNav(index),
                    child: Text(
                      AppConstants.headerTitlesKeys[index],
                    ),
                  ),
                  isSelected
                      ? FadeIn(
                          child: SlideAnimatedWidget(
                            duration: const Duration(seconds: 1),
                            curve: Curves.elasticOut,
                            begin: Offset(0, -3.h),
                            child: const CircleDot(),
                          ),
                        )
                      : const CircleDot(color: Colors.transparent),
                ],
              );
            },
          ),
          growable: false,
        ),
      ),
    );
  }
}

class CircleDot extends StatelessWidget {
  const CircleDot({
    super.key,
    this.color = Colors.white,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: 7.h,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
