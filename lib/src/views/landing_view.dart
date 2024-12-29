import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/widgets/responsive_layout.dart';
import 'package:personal_portfolio/src/widgets/landing_view_desktop_layout.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          ResponsiveLayout(
            mobileLayout: (_) => Container(),
            tabletLayout: (_) => Container(),
            desktopLayout: (_) => const LandingViewDesktopLayout(),
          ),
        ],
      ),
    );
  }
}
