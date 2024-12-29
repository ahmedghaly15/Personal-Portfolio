import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/models/project.dart';
import 'package:personal_portfolio/src/widgets/project_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

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

class AnimatedProjectItem extends StatefulWidget {
  const AnimatedProjectItem({
    super.key,
    required this.project,
    required this.index,
  });

  final Project project;
  final int index;

  @override
  State<AnimatedProjectItem> createState() => _AnimatedProjectItemState();
}

class _AnimatedProjectItemState extends State<AnimatedProjectItem> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ValueKey('small_selection_sliver_grid_${widget.index}'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.95 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? (widget.index.isEven
              ? FadeInLeft(
                  duration: const Duration(milliseconds: 500),
                  child: ProjectItem(
                    key:
                        ValueKey('small_selection_sliver_grid_${widget.index}'),
                    project: widget.project,
                  ),
                )
              : FadeInRight(
                  key: ValueKey('small_selection_sliver_grid_${widget.index}'),
                  duration: const Duration(milliseconds: 500),
                  child: ProjectItem(project: widget.project),
                ))
          : const SizedBox.shrink(),
    );
  }
}
