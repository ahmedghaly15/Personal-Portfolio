import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import '../../models/fetch_data_response.dart';
import 'landing_view_desktop_about_tab.dart';
import 'landing_view_desktop_portfolio_tab.dart';
import 'landing_view_desktop_skills_tab.dart';

class LandingViewDesktopLayout extends StatelessWidget {
  const LandingViewDesktopLayout({
    super.key,
    required this.data,
    required this.selectedTabNavIndex,
    required this.onTabSelected,
    this.tabletProjectAspectRatio,
    this.tabletApproachGridCrossAxisCount,
  });

  final double? tabletProjectAspectRatio;
  final int? tabletApproachGridCrossAxisCount;
  final FetchDataResponse data;
  final int selectedTabNavIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.imagesBackgroundGridPattern),
        ),
        PositionedDirectional(
          child: Image.asset(Assets.imagesStartSpotlight),
        ),
        PositionedDirectional(
          end: 0,
          child: Image.asset(Assets.imagesEndSpotlight),
        ),
        switch (selectedTabNavIndex) {
          0 => LandingViewDesktopAboutTab(
              tabletLayoutProjectAspectRatio: tabletProjectAspectRatio,
              tabletApproachGridCrossAxisCount:
                  tabletApproachGridCrossAxisCount,
              about: data.about,
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
          1 => LandingViewDesktopSkillsTab(
              skills: data.skills,
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
          2 => LandingViewDesktopPortfolioTab(
              tabletProjectAspectRatio: tabletProjectAspectRatio,
              projects: data.portfolio,
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
          _ => LandingViewDesktopAboutTab(
              about: data.about,
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
        },
      ],
    );
  }
}
