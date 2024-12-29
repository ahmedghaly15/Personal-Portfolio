import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/widgets/landing_view_big_text.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

class LandingViewDesktopSkillsTab extends StatelessWidget {
  const LandingViewDesktopSkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.center,
            child: TabsNav(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 73.h, bottom: 22.h),
            child: const HeaderSmallText(
              text: AppStrings.masteringTheArtOfFlutter,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            child: LandingViewBigText(
              textSpans: [
                TextSpan(
                  text: '${AppStrings.elevating} ',
                  style: AppTextStyles.font72Bold(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: AppStrings.mySkills,
                  style: AppTextStyles.font72Bold(context).copyWith(
                    color: AppColors.colorCBACF9,
                  ),
                ),
                TextSpan(
                  text: '\n${AppStrings.oneLineCode}',
                  style: AppTextStyles.font72Bold(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
