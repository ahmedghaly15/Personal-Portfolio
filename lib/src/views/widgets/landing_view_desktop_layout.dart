import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/view_model/landing_cubit.dart';
import 'package:personal_portfolio/src/views/widgets/landing_view_desktop_about_tab.dart';
import 'package:personal_portfolio/src/views/widgets/landing_view_desktop_portfolio_tab.dart';
import 'package:personal_portfolio/src/views/widgets/landing_view_desktop_skills_tab.dart';

import '../../models/fetch_data_response.dart';

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
                );

              case 1:
                return const LandingViewDesktopSkillsTab();

              case 2:
                return LandingViewDesktopPortfolioTab(
                  tabletProjectAspectRatio: tabletProjectAspectRatio,
                );

              default:
                return const LandingViewDesktopAboutTab();
            }
          },
        ),
      ],
    );
  }
}
