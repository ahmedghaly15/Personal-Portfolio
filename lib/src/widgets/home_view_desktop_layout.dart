import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/widgets/my_image_and_tabs.dart';
import 'package:personal_portfolio/src/widgets/social_icons.dart';
import 'package:personal_portfolio/src/widgets/start_side_section.dart';

class HomeViewDesktopLayout extends StatelessWidget {
  const HomeViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: StartSideSection(),
                  ),
                  MySizedBox.width114,
                  MyImageAndTabs(),
                ],
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32.h),
                child: const SocialIcons(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
