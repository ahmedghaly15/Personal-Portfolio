import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/desktop_projects_sliver_grid.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

class LandingViewDesktopPortfolioTab extends StatelessWidget {
  const LandingViewDesktopPortfolioTab({super.key});

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
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 100.w),
          sliver: const DesktopProjectsSliverGrid(),
        ),
      ],
    );
  }
}
