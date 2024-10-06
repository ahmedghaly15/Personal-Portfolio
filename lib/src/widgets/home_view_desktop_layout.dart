import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/home_view_desktop_content.dart';
import 'package:personal_portfolio/src/widgets/social_icons_bloc_builder.dart';

class HomeViewDesktopLayout extends StatelessWidget {
  const HomeViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HomeViewDesktopContent(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32.h),
                child: const SocialIconsBlocBuilder(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
