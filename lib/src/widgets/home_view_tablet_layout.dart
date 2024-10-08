import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/widgets/layout_top_section.dart';
import 'package:personal_portfolio/src/widgets/mobile_or_tablet_selected_tab_content.dart';

class HomeViewTabletLayout extends StatelessWidget {
  const HomeViewTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: LayoutTopSection(
            backgroundSvgImage: Assets.svgsTabletLavenderBg,
            isLayoutLargerThanMobile: true,
            myImageRadius: 240,
            myImageHorizontalPosition: 56,
          ),
        ),
        SliverToBoxAdapter(
          child: MobileOrTabletSelectedTabContent(),
        ),
      ],
    );
  }
}
