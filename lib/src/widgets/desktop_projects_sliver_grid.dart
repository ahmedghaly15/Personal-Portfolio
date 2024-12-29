import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:personal_portfolio/src/models/project.dart';
import 'package:personal_portfolio/src/widgets/project_item.dart';

class DesktopProjectsSliverGrid extends StatelessWidget {
  const DesktopProjectsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 40.w,
        mainAxisSpacing: 32.h,
      ),
      itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
        duration: const Duration(milliseconds: 675),
        columnCount: Project.portfolio.length,
        position: index,
        child: FadeInAnimation(
          child: ScaleAnimation(
            child: ProjectItem(
              project: Project.portfolio[index],
            ),
          ),
        ),
      ),
      itemCount: Project.portfolio.length,
    );
  }
}
