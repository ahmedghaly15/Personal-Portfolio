import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/app_assets.dart';
import '../../models/fetch_data_response.dart';
import '../../view_model/landing_cubit.dart';
import 'landing_view_mobile_about_tab.dart';
import 'landing_view_mobile_portfolio_tab.dart';
import 'landing_view_mobile_skills_tab.dart';

class LandingViewMobileLayout extends StatelessWidget {
  const LandingViewMobileLayout({super.key, required this.data});

  final FetchDataResponse data;

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
                return LandingViewMobileAboutTab(about: data.about);
              case 1:
                return LandingViewMobileSkillsTab(skills: data.skills);
              case 2:
                return LandingViewMobilePortfolioTab(projects: data.portfolio);
              default:
                return Container();
            }
          },
        ),
      ],
    );
  }
}
