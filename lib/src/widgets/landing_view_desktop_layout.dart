import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/widgets/contact_me_section.dart';
import 'package:personal_portfolio/src/widgets/experience_item.dart';
import 'package:personal_portfolio/src/widgets/landing_view_big_text.dart';
import 'package:personal_portfolio/src/widgets/my_approach_sliver_grid.dart';
import 'package:personal_portfolio/src/widgets/passion_and_purpose_section.dart';
import 'package:personal_portfolio/src/widgets/see_my_work_and_download_cv_buttons.dart';
import 'package:personal_portfolio/src/widgets/small_selection_list.dart';
import 'package:personal_portfolio/src/widgets/small_selection_rich_text.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

class LandingViewDesktopLayout extends StatelessWidget {
  const LandingViewDesktopLayout({super.key});

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
            child: Text(
              AppStrings.dynamicAppMagic,
              style: AppTextStyles.font16Regular(context),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.center,
            child: LandingViewBigText(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30.h),
            child: Text(
              AppStrings.introduction,
              style: AppTextStyles.font24Regular(context),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SeeMyWorkAndDownloadCVButtons(),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
              top: 206.h,
              bottom: 150.h,
              left: 24.w,
              right: 24.w,
            ),
            child: const PassionAndPurposeSection(),
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.center,
            child: SmallSelectionRichText(
              firstSpan: '${AppStrings.smallSelectionOf} ',
              secondSpan: AppStrings.recentProjects,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 48.h, bottom: 150.h),
            child: const SmallSelectionList(),
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.center,
            child: SmallSelectionRichText(
              firstSpan: '${AppStrings.my} ',
              secondSpan: AppStrings.workExperience,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            child: Container(
              margin: EdgeInsets.only(top: 70.h, bottom: 130.h),
              child: const ExperienceItem(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            child: Container(
              margin: EdgeInsets.only(bottom: 60.h),
              child: const SmallSelectionRichText(
                firstSpan: '${AppStrings.my} ',
                secondSpan: AppStrings.approach,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 90.w),
          sliver: const MyApproachSliverGrid(),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            child: ContactMeSection(),
          ),
        ),
      ],
    );
  }
}
