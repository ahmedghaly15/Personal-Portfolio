import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';
import 'package:personal_portfolio/src/cubit/landing_cubit.dart';
import 'package:personal_portfolio/src/widgets/contact_me_section.dart';
import 'package:personal_portfolio/src/widgets/custom_section_title.dart';
import 'package:personal_portfolio/src/widgets/experience_item.dart';
import 'package:personal_portfolio/src/widgets/landing_view_big_text.dart';
import 'package:personal_portfolio/src/widgets/my_approach_sliver_grid.dart';
import 'package:personal_portfolio/src/widgets/desktop_passion_and_purpose_section.dart';
import 'package:personal_portfolio/src/widgets/see_my_work_and_download_cv_buttons.dart';
import 'package:personal_portfolio/src/widgets/small_selection_sliver_grid.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

import '../core/widgets/my_sized_box.dart';
import '../models/work_experience.dart';

class LandingViewDesktopAboutTab extends StatelessWidget {
  const LandingViewDesktopAboutTab({
    super.key,
    this.tabletLayoutProjectAspectRatio,
    this.tabletApproachGridCrossAxisCount,
  });

  final double? tabletLayoutProjectAspectRatio;
  final int? tabletApproachGridCrossAxisCount;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Align(
            child: TabsNav(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 73.h, bottom: 22.h),
            child: const HeaderSmallText(text: AppStrings.dynamicAppMagic),
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            child: LandingViewBigText(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30.h),
            child: const HeaderDescriptionText(
              text: AppStrings.introduction,
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
            child: const DesktopPassionAndPurposeSection(),
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            child: CustomSectionTitle(
              whiteSpan: '${AppStrings.smallSelectionOf} ',
              colorfulSpan: AppStrings.recentProjects,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 48.h, horizontal: 100.w),
          sliver: SmallSelectionSliverGrid(
            tabletLayoutChildAspectRatio: tabletLayoutProjectAspectRatio,
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            child: MainButton(
              margin: EdgeInsets.only(bottom: 150.h),
              onPressed: () => context.read<LandingCubit>().selectTabNav(2),
              text: AppStrings.seeMyPortfolio,
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Align(
            child: CustomSectionTitle(
              whiteSpan: '${AppStrings.my} ',
              colorfulSpan: AppStrings.workExperience,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
            top: 70.h,
            bottom: 130.h,
            left: 90.w,
            right: 90.w,
          ),
          sliver: SliverList.separated(
            itemCount: WorkExperience.workExperience.length,
            itemBuilder: (_, index) => FadeInLeft(
              delay: Duration(milliseconds: 300 * index),
              child: ExperienceItem(
                workExperience: WorkExperience.workExperience[index],
              ),
            ),
            separatorBuilder: (_, __) => MySizedBox.height14,
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            child: Container(
              margin: EdgeInsets.only(bottom: 60.h),
              child: const CustomSectionTitle(
                whiteSpan: '${AppStrings.my} ',
                colorfulSpan: AppStrings.approach,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 90.w),
          sliver: MyApproachSliverGrid(
            tabletCrossAxisCount: tabletApproachGridCrossAxisCount,
          ),
        ),
        const SliverToBoxAdapter(
          child: ContactMeSection(aspectRatio: 2),
        ),
      ],
    );
  }
}
