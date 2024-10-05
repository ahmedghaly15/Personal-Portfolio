import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/widgets/my_image_and_tabs.dart';
import 'package:personal_portfolio/src/widgets/profiling.dart';

class HomeViewDesktopLayout extends StatelessWidget {
  const HomeViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Profiling(),
            ),
            MySizedBox.width114,
            MyImageAndTabs(),
          ],
        ),
      ],
    );
  }
}
