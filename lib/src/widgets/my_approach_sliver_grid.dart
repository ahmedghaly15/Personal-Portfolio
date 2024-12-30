import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/models/approach.dart';
import 'package:personal_portfolio/src/widgets/approach_item.dart';

class MyApproachSliverGrid extends StatelessWidget {
  const MyApproachSliverGrid({super.key, this.tabletCrossAxisCount});

  final int? tabletCrossAxisCount;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: Approach.myApproach.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: tabletCrossAxisCount ?? 3,
        childAspectRatio: 387 / 620,
        crossAxisSpacing: 40.w,
        mainAxisSpacing: 24.h,
      ),
      itemBuilder: (_, index) => ApproachItem(
        index: index,
        approach: Approach.myApproach[index],
      ),
    );
  }
}
