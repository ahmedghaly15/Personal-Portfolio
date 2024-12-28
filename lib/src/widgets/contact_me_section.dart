import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/utils/functions/open_url.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesFooterGridPattern,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Column(
              spacing: 24.h,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${AppStrings.lookingToBringYourIdeasToLife} ',
                        style: AppTextStyles.font48Bold(context).copyWith(
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: AppStrings.flutterApps,
                        style: AppTextStyles.font48Bold(context).copyWith(
                          color: AppColors.colorCBACF9,
                        ),
                      ),
                      TextSpan(
                        text: '?',
                        style: AppTextStyles.font48Bold(context).copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  AppStrings.reachMeOut,
                  style: AppTextStyles.font16Regular(context),
                  textAlign: TextAlign.center,
                ),
                MainButton(
                  onPressed: () async => await openUrl(
                    AppStrings.myGmail,
                    isEmail: true,
                  ),
                  child: Row(
                    spacing: 10.w,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppStrings.contactMeNow,
                        style: AppTextStyles.font18Medium(context),
                      ),
                      SvgPicture.asset(Assets.svgsLinkArrow),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
