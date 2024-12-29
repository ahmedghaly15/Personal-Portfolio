import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/widgets/landing_view_big_text.dart';
import 'package:personal_portfolio/src/widgets/skills_progress_list.dart';
import 'package:personal_portfolio/src/widgets/skills_tab_big_text.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

class LandingViewMobileSkillsTab extends StatelessWidget {
  const LandingViewMobileSkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          sliver: const SliverToBoxAdapter(
            child: TabsNav(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 32.h),
            child: const HeaderSmallText(
              text: AppStrings.masteringTheArtOfFlutter,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 56.w),
          sliver: const SliverToBoxAdapter(
            child: SkillsTabBigText(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40.w, vertical: 32.h),
            child: const SkillsProgressList(),
          ),
        ),
      ],
    );
  }
}
