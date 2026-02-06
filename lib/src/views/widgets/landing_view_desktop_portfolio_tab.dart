import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/about.dart';
import 'desktop_projects_sliver_grid.dart';
import 'tabs_nav.dart';

class LandingViewDesktopPortfolioTab extends StatelessWidget {
  const LandingViewDesktopPortfolioTab({
    super.key,
    required this.projects,
    this.tabletProjectAspectRatio,
    required this.selectedTabNavIndex,
    required this.onTabSelected,
  });

  final double? tabletProjectAspectRatio;
  final List<Project> projects;
  final int selectedTabNavIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Align(
            child: TabsNav(
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 100.w),
          sliver: DesktopProjectsSliverGrid(
            projects: projects,
            childAspectRatio: tabletProjectAspectRatio,
          ),
        ),
      ],
    );
  }
}
