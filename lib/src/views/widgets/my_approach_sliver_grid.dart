import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/about.dart';
import 'approach_item.dart';

class MyApproachSliverGrid extends StatelessWidget {
  const MyApproachSliverGrid({
    super.key,
    required this.approaches,
    this.tabletCrossAxisCount,
  });

  final int? tabletCrossAxisCount;
  final List<ApproachModel> approaches;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: approaches.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: tabletCrossAxisCount ?? 3,
        childAspectRatio: 387 / 620,
        crossAxisSpacing: 40.w,
        mainAxisSpacing: 24.h,
      ),
      itemBuilder: (_, index) => ApproachItem(
        index: index,
        approach: approaches[index],
      ),
    );
  }
}
