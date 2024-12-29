import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/models/project.dart';
import 'package:personal_portfolio/src/widgets/project_item.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

class LandingViewMobilePortfolioTab extends StatelessWidget {
  const LandingViewMobilePortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          sliver: const SliverToBoxAdapter(child: TabsNav()),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 48.h),
          sliver: SliverList.separated(
            itemCount: Project.portfolio.length,
            itemBuilder: (_, index) => AnimationConfiguration.staggeredList(
              duration: const Duration(milliseconds: 675),
              position: index,
              child: FadeInAnimation(
                child: ScaleAnimation(
                  child: AspectRatio(
                    aspectRatio: 0.75,
                    child: ProjectItem(
                      project: Project.portfolio[index],
                    ),
                  ),
                ),
              ),
            ),
            separatorBuilder: (_, __) => MySizedBox.height24,
          ),
        ),
      ],
    );
  }
}
