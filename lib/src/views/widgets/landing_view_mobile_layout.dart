import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import '../../models/fetch_data_response.dart';
import 'landing_view_mobile_about_tab.dart';
import 'landing_view_mobile_portfolio_tab.dart';
import 'landing_view_mobile_skills_tab.dart';

class LandingViewMobileLayout extends StatelessWidget {
  const LandingViewMobileLayout({
    super.key,
    required this.data,
    required this.selectedTabNavIndex,
    required this.onTabSelected,
  });

  final FetchDataResponse data;
  final int selectedTabNavIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.imagesMobileGridPattern, fit: BoxFit.cover),
        ),
        switch (selectedTabNavIndex) {
          0 => LandingViewMobileAboutTab(
              about: data.about,
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
          1 => LandingViewMobileSkillsTab(
              skills: data.skills,
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
          2 => LandingViewMobilePortfolioTab(
              projects: data.portfolio,
              selectedTabNavIndex: selectedTabNavIndex,
              onTabSelected: onTabSelected,
            ),
          _ => const SizedBox.shrink(),
        },
      ],
    );
  }
}
