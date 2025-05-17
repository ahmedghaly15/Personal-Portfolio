import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/views/widgets/desktop_projects_sliver_grid.dart';
import 'package:personal_portfolio/src/views/widgets/tabs_nav.dart';

import '../../models/about.dart';

class LandingViewDesktopPortfolioTab extends StatelessWidget {
  const LandingViewDesktopPortfolioTab({
    super.key,
    required this.projects,
    this.tabletProjectAspectRatio,
  });

  final double? tabletProjectAspectRatio;
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Align(child: TabsNav()),
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
