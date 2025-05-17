import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../models/about.dart';
import 'project_item.dart';

class DesktopProjectsSliverGrid extends StatelessWidget {
  const DesktopProjectsSliverGrid({
    super.key,
    required this.projects,
    this.childAspectRatio,
  });

  final double? childAspectRatio;
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 40.w,
        mainAxisSpacing: 32.h,
        childAspectRatio: childAspectRatio ?? 1,
      ),
      itemBuilder: (_, index) => AnimationConfiguration.staggeredGrid(
        duration: const Duration(milliseconds: 675),
        columnCount: projects.length,
        position: index,
        child: FadeInAnimation(
          child: ScaleAnimation(
            child: ProjectItem(
              project: projects[index],
            ),
          ),
        ),
      ),
      itemCount: projects.length,
    );
  }
}
