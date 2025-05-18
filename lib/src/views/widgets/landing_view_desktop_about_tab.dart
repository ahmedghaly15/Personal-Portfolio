import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_strings.dart';
import '../../core/widgets/main_button.dart';
import '../../core/widgets/my_sized_box.dart';
import '../../models/about.dart';
import '../../view_model/landing_cubit.dart';
import 'contact_me_section.dart';
import 'custom_section_title.dart';
import 'desktop_passion_and_purpose_section.dart';
import 'experience_item.dart';
import 'landing_view_big_text.dart';
import 'my_approach_sliver_grid.dart';
import 'see_my_work_and_download_cv_buttons.dart';
import 'small_selection_sliver_grid.dart';
import 'tabs_nav.dart';

class LandingViewDesktopAboutTab extends StatelessWidget {
  const LandingViewDesktopAboutTab({
    super.key,
    this.tabletLayoutProjectAspectRatio,
    this.tabletApproachGridCrossAxisCount,
    required this.about,
  });

  final double? tabletLayoutProjectAspectRatio;
  final int? tabletApproachGridCrossAxisCount;
  final About about;

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
            child: HeaderSmallText(text: about.headerSmallText),
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            child: LandingViewBigText(headerBigText: about.headerBigText),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30.h),
            child: HeaderDescriptionText(text: about.description
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SeeMyWorkAndDownloadCVButtons(
            seeMyWorkUrl: about.seeMyWorkLink,
          ),
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
            projects: about.projects,
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
            itemCount: about.workExperience.length,
            itemBuilder: (_, index) => FadeInLeft(
              delay: Duration(milliseconds: 300 * index),
              child: ExperienceItem(
                workExperience: about.workExperience[index],
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
            approaches: about.approaches,
          ),
        ),
        const SliverToBoxAdapter(
          child: ContactMeSection(aspectRatio: 2),
        ),
      ],
    );
  }
}
