import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/skill_tab_model.dart';
import 'landing_view_big_text.dart';
import 'skills_progress_list.dart';
import 'skills_tab_big_text.dart';
import 'tabs_nav.dart';

class LandingViewDesktopSkillsTab extends StatelessWidget {
  const LandingViewDesktopSkillsTab({super.key, required this.skills});

  final SkillTabModel skills;

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
            child: HeaderSmallText(text: skills.headerSmallText
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Align(
            child: SkillsTabBigText(headerBigText: skills.headerBigText),
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
            child: SkillsProgressList(skills: skills.skills),
          ),
        ),
      ],
    );
  }
}
