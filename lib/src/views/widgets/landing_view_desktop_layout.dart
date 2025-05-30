import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/app_assets.dart';
import '../../models/fetch_data_response.dart';
import '../../view_model/landing_cubit.dart';
import 'landing_view_desktop_about_tab.dart';
import 'landing_view_desktop_portfolio_tab.dart';
import 'landing_view_desktop_skills_tab.dart';

class LandingViewDesktopLayout extends StatelessWidget {
  const LandingViewDesktopLayout({
    super.key,
    required this.data,
    this.tabletProjectAspectRatio,
    this.tabletApproachGridCrossAxisCount,
  });

  final double? tabletProjectAspectRatio;
  final int? tabletApproachGridCrossAxisCount;
  final FetchDataResponse data;

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
        BlocSelector<LandingCubit, LandingState, int>(
          selector: (state) => state.selectedTabNavIndex,
          builder: (context, selectedTabNavIndex) {
            switch (selectedTabNavIndex) {
              case 0:
                return LandingViewDesktopAboutTab(
                  tabletLayoutProjectAspectRatio: tabletProjectAspectRatio,
                  tabletApproachGridCrossAxisCount:
                      tabletApproachGridCrossAxisCount,
                  about: data.about,
                );

              case 1:
                return LandingViewDesktopSkillsTab(skills: data.skills);

              case 2:
                return LandingViewDesktopPortfolioTab(
                  tabletProjectAspectRatio: tabletProjectAspectRatio,
                  projects: data.portfolio,
                );

              default:
                return LandingViewDesktopAboutTab(about: data.about);
            }
          },
        ),
      ],
    );
  }
}
