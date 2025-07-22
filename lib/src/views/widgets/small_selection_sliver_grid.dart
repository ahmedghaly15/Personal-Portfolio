import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/about.dart';
import 'animated_project_item.dart';

class SmallSelectionSliverGrid extends StatelessWidget {
  const SmallSelectionSliverGrid({
    super.key,
    required this.projects,
    this.tabletLayoutChildAspectRatio,
  });

  final double? tabletLayoutChildAspectRatio;
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: tabletLayoutChildAspectRatio ?? 1.0,
        mainAxisSpacing: 20.h,
        crossAxisSpacing: 20.w,
      ),
      itemBuilder: (_, index) => AnimatedProjectItem(
        project: projects[index],
        index: index,
        isDescriptionTextExpanded: false,
      ),
    );
  }
}
