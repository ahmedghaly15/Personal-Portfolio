import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/cubit/landing_cubit.dart';
import 'package:personal_portfolio/src/widgets/landing_view_desktop_about_tab.dart';
import 'package:personal_portfolio/src/widgets/landing_view_desktop_portfolio_tab.dart';
import 'package:personal_portfolio/src/widgets/landing_view_desktop_skills_tab.dart';

class LandingViewDesktopLayout extends StatelessWidget {
  const LandingViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<LandingCubit, LandingState, int>(
      selector: (state) => state.selectedTabNavIndex,
      builder: (context, selectedTabNavIndex) {
        switch (selectedTabNavIndex) {
          case 0:
            return const LandingViewDesktopAboutTab();

          case 1:
            return const LandingViewDesktopSkillsTab();

          case 2:
            return const LandingViewDesktopPortfolioTab();

          default:
            return const LandingViewDesktopAboutTab();
        }
      },
    );
  }
}
