import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/utils/size_config.dart';
import 'package:personal_portfolio/src/core/widgets/responsive_layout.dart';
import 'package:personal_portfolio/src/widgets/custom_floating_action_button.dart';
import 'package:personal_portfolio/src/widgets/home_view_desktop_layout.dart';
import 'package:personal_portfolio/src/widgets/home_view_mobile_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: (_) => const HomeViewMobileLayout(),
        tabletLayout: (_) => const Center(
          child: Text('Tablet'),
        ),
        desktopLayout: (_) => const HomeViewDesktopLayout(),
      ),
      floatingActionButton: context.screenWidth < SizeConfig.tabletBreakPoint
          ? FadeInDown(child: const CustomFloatingActionButton())
          : null,
    );
  }
}
