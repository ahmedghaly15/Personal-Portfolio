import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/widgets/responsive_layout.dart';
import 'package:personal_portfolio/src/widgets/landing_view_desktop_layout.dart';
import 'package:personal_portfolio/src/widgets/landing_view_mobile_layout.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (_) => const LandingViewMobileLayout(),
        tabletLayout: (_) => Container(),
        desktopLayout: (_) => const LandingViewDesktopLayout(),
      ),
    );
  }
}
