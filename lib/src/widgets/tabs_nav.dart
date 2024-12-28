import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/widgets/slide_animated_widget.dart';

class TabsNav extends StatelessWidget {
  const TabsNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12.h,
        horizontal: 40.w,
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
          (index) => Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: AppTextStyles.font16Medium(context),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text(
                  context.translate(
                    AppConstants.headerTitlesKeys[index],
                  ),
                ),
              ),
              SlideAnimatedWidget(
                duration: const Duration(seconds: 1),
                curve: Curves.elasticOut,
                begin: Offset(0, -2.h),
                child: Container(
                  height: 7.h,
                  width: 7.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          growable: false,
        ),
      ),
    );
  }
}
