import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/cubit/landing_cubit.dart';
import 'package:personal_portfolio/src/widgets/landing_view_mobile_about_tab.dart';
import 'package:personal_portfolio/src/widgets/landing_view_mobile_portfolio_tab.dart';
import 'package:personal_portfolio/src/widgets/landing_view_mobile_skills_tab.dart';

class LandingViewMobileLayout extends StatelessWidget {
  const LandingViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.imagesMobileGridPattern, fit: BoxFit.cover),
        ),
        BlocSelector<LandingCubit, LandingState, int>(
          selector: (state) => state.selectedTabNavIndex,
          builder: (context, selectedTabNavIndex) {
            switch (selectedTabNavIndex) {
              case 0:
                return const LandingViewMobileAboutTab();
              case 1:
                return const LandingViewMobileSkillsTab();
              case 2:
                return const LandingViewMobilePortfolioTab();
              default:
                return Container();
            }
          },
        ),
      ],
    );
  }
}
