import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/animated_project_item.dart';

import 'package:personal_portfolio/src/models/project.dart';

class SmallSelectionSliverGrid extends StatelessWidget {
  const SmallSelectionSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      crossAxisSpacing: 40.w,
      children: List.generate(
        2,
        (index) => AnimatedProjectItem(
          project: Project.portfolio[index],
          index: index,
        ),
        growable: false,
      ),
    );
  }
}
