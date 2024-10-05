import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';

class MyImageAndTabs extends StatelessWidget {
  const MyImageAndTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SvgPicture.asset(Assets.svgsLavenderBg),
        Container(
          alignment: AlignmentDirectional.center,
          margin: EdgeInsetsDirectional.only(top: 14.h),
          child: Row(
            children: List.generate(
              AppConstants.headerTitlesKeys.length,
              (index) => Container(
                margin: EdgeInsetsDirectional.only(end: 24.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.lightModeFontColor,
                        textStyle: AppTextStyles.ralewayFont18Medium(context),
                      ),
                      onPressed: () {},
                      child: Text(
                        context.translate(AppConstants.headerTitlesKeys[index]),
                      ),
                    ),
                    index == 0
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: context.width * 0.05,
                            child: Divider(
                              color: AppColors.lightModeFontColor,
                              thickness: 1.w,
                              height: 1.h,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ),
        ),
        PositionedDirectional(
          top: 0,
          end: 16.w,
          bottom: 0,
          child: CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            backgroundImage: const AssetImage(Assets.imagesBlackMe),
            radius: 280.r,
          ),
        ),
      ],
    );
  }
}