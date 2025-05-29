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
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 40.w,
      childAspectRatio: tabletLayoutChildAspectRatio ?? 1,
      children: List.generate(
        2,
        (index) => AnimatedProjectItem(
          project: projects[index],
          index: index,
          isDescriptionTextExpanded: true,
        ),
        growable: false,
      ),
    );
  }
}
