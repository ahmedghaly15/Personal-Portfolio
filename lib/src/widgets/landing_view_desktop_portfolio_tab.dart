import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/desktop_projects_sliver_grid.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

class LandingViewDesktopPortfolioTab extends StatelessWidget {
  const LandingViewDesktopPortfolioTab({
    super.key,
    this.tabletProjectAspectRatio,
  });

  final double? tabletProjectAspectRatio;

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
            tabletProjectAspectRatio: tabletProjectAspectRatio,
          ),
        ),
      ],
    );
  }
}
