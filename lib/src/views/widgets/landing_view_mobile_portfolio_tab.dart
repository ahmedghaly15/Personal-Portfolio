import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/models/project.dart';
import 'package:personal_portfolio/src/views/widgets/project_item.dart';
import 'package:personal_portfolio/src/views/widgets/tabs_nav.dart';

class LandingViewMobilePortfolioTab extends StatelessWidget {
  const LandingViewMobilePortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
          ),
          sliver: const SliverToBoxAdapter(child: TabsNav()),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: AppConstants.mobileHorizontalPadVal.w,
            vertical: 48.h,
          ),
          sliver: SliverList.builder(
            itemCount: Project.portfolio.length,
            itemBuilder: (_, index) => AnimationConfiguration.staggeredList(
              duration: const Duration(milliseconds: 675),
              position: index,
              child: FadeInAnimation(
                child: ScaleAnimation(
                  child: AspectRatio(
                    aspectRatio: 0.7,
                    child: ProjectItem(
                      project: Project.portfolio[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
