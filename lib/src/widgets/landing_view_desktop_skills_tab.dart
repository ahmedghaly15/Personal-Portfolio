import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/widgets/landing_view_big_text.dart';
import 'package:personal_portfolio/src/widgets/skills_progress_list.dart';
import 'package:personal_portfolio/src/widgets/skills_tab_big_text.dart';
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
        const SliverToBoxAdapter(
          child: Align(
            child: SkillsTabBigText(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
              top: 32.h,
              left: 100.w,
              right: 100.w,
              bottom: 32.h,
            ),
            child: const SkillsProgressList(),
          ),
        ),
      ],
    );
  }
}
