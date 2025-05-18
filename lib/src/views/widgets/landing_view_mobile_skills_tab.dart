import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_constants.dart';
import '../../models/skill_tab_model.dart';
import 'landing_view_big_text.dart';
import 'skills_progress_list.dart';
import 'skills_tab_big_text.dart';
import 'tabs_nav.dart';

class LandingViewMobileSkillsTab extends StatelessWidget {
  const LandingViewMobileSkillsTab({super.key, required this.skills});

  final SkillTabModel skills;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
          ),
          sliver: const SliverToBoxAdapter(child: TabsNav()),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 32.h),
            child: HeaderSmallText(text: skills.headerSmallText
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
          ),
          sliver: SliverToBoxAdapter(
            child: SkillsTabBigText(headerBigText: skills.headerBigText),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: AppConstants.mobileHorizontalPadVal.w,
              vertical: 40.h,
            ),
            child: SkillsProgressList(skills: skills.skills),
          ),
        ),
      ],
    );
  }
}
