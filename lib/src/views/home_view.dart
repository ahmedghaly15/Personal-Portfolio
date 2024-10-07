import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/widgets/responsive_layout.dart';
import 'package:personal_portfolio/src/widgets/home_view_desktop_layout.dart';
import 'package:personal_portfolio/src/widgets/home_view_mobile_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (context) => const HomeViewMobileLayout(),
        tabletLayout: (context) => Container(),
        desktopLayout: (context) => const HomeViewDesktopLayout(),
      ),
    );
  }
}
