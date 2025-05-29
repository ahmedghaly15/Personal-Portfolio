import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../core/utils/app_constants.dart';
import '../../core/widgets/my_sized_box.dart';
import '../../models/about.dart';
import 'project_item.dart';
import 'tabs_nav.dart';

class LandingViewMobilePortfolioTab extends StatelessWidget {
  const LandingViewMobilePortfolioTab({super.key, required this.projects});

  final List<Project> projects;

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
          sliver: SliverList.separated(
            separatorBuilder: (_, __) => MySizedBox.height20,
            itemCount: projects.length,
            itemBuilder: (_, index) => AnimationConfiguration.staggeredList(
              duration: const Duration(milliseconds: 675),
              position: index,
              child: FadeInAnimation(
                child: ScaleAnimation(
                  child: ProjectItem(project: projects[index]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
