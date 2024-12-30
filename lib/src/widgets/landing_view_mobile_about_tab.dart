import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';
import 'package:personal_portfolio/src/cubit/landing_cubit.dart';
import 'package:personal_portfolio/src/models/approach.dart';
import 'package:personal_portfolio/src/models/project.dart';
import 'package:personal_portfolio/src/widgets/animated_project_item.dart';
import 'package:personal_portfolio/src/widgets/approach_item.dart';
import 'package:personal_portfolio/src/widgets/contact_me_section.dart';
import 'package:personal_portfolio/src/widgets/copy_my_email_card.dart';
import 'package:personal_portfolio/src/widgets/custom_section_title.dart';
import 'package:personal_portfolio/src/widgets/experience_item.dart';
import 'package:personal_portfolio/src/widgets/landing_view_big_text.dart';
import 'package:personal_portfolio/src/widgets/prioritize_img.dart';
import 'package:personal_portfolio/src/widgets/see_my_work_and_download_cv_buttons.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';
import 'package:personal_portfolio/src/widgets/tech_enthusiast_card.dart';

class LandingViewMobileAboutTab extends StatelessWidget {
  const LandingViewMobileAboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
          ),
          sliver: const SliverToBoxAdapter(child: TabsNav()),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
            child: const HeaderSmallText(text: AppStrings.dynamicAppMagic),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 56.w),
            child: const LandingViewBigText(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 24.h, horizontal: 56.w),
            child: const FittedBox(
              child: HeaderDescriptionText(
                text: AppStrings.introduction,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
              left: AppConstants.mobileHorizontalPadVal.w,
              right: AppConstants.mobileHorizontalPadVal.w,
              bottom: 64.h,
            ),
            child: const SeeMyWorkAndDownloadCVButtons(
              areExpanded: true,
              gradient: AppConstants.boxSecondaryLinearGradient,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
          ),
          sliver: SliverToBoxAdapter(
            child: Column(
              spacing: 24.h,
              children: const [
                AspectRatio(
                  aspectRatio: 398 / 312,
                  child: AnimatedPrioritizeImg(),
                ),
                AspectRatio(
                  aspectRatio: 2.3,
                  child: AnimatedTechEnthusiastCard(),
                ),
                AspectRatio(
                  aspectRatio: 2.3,
                  child: AnimatedCopyMyEmailCard(),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
              left: 64.w,
              right: 64.w,
              top: 64.h,
              bottom: 24.h,
            ),
            child: const CustomSectionTitle(
              whiteSpan: '${AppStrings.smallSelectionOf} ',
              colorfulSpan: AppStrings.recentProjects,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
          ),
          sliver: SliverToBoxAdapter(
            child: Column(
              spacing: 20.h,
              children: List.generate(
                2,
                (index) => AspectRatio(
                  aspectRatio: 0.7,
                  child: AnimatedProjectItem(
                    project: Project.portfolio[index],
                    index: index,
                  ),
                ),
                growable: false,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: MainButton(
            width: double.infinity,
            onPressed: () => context.read<LandingCubit>().selectTabNav(2),
            gradient: AppConstants.boxSecondaryLinearGradient,
            margin: EdgeInsets.only(
              bottom: 64.h,
              left: AppConstants.mobileHorizontalPadVal.w,
              right: AppConstants.mobileHorizontalPadVal.w,
              top: AppConstants.mobileHorizontalPadVal.h,
            ),
            text: AppStrings.seeMyPortfolio,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
              left: 64.w,
              right: 64.w,
              bottom: 29.h,
            ),
            child: const CustomSectionTitle(
              whiteSpan: '${AppStrings.my} ',
              colorfulSpan: AppStrings.workExperience,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
              left: AppConstants.mobileHorizontalPadVal.w,
              right: AppConstants.mobileHorizontalPadVal.w,
            ),
            child: const ExperienceItem(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(bottom: 36.h, top: 64.h),
            child: const CustomSectionTitle(
              whiteSpan: '${AppStrings.my} ',
              colorfulSpan: AppStrings.approach,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppConstants.mobileHorizontalPadVal.w,
            ),
            child: OverflowBar(
              overflowSpacing: 48.w,
              alignment: MainAxisAlignment.center,
              spacing: 40.w,
              children: List.generate(
                Approach.myApproach.length,
                (index) => AspectRatio(
                  aspectRatio: 398 / 500,
                  child: ApproachItem(
                    approach: Approach.myApproach[index],
                    index: index,
                  ),
                ),
                growable: false,
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
            vertical: 12.h,
          ),
          sliver: const SliverToBoxAdapter(
            child: ContactMeSection(
              aspectRatio: 1,
              contactMeButtonWidth: double.infinity,
            ),
          ),
        ),
      ],
    );
  }
}
