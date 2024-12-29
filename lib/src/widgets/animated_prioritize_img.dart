import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:personal_portfolio/src/widgets/prioritize_img.dart';

class AnimatedPrioritizeImg extends StatefulWidget {
  const AnimatedPrioritizeImg({super.key});

  @override
  State<AnimatedPrioritizeImg> createState() => _AnimatedPrioritizeImgState();
}

class _AnimatedPrioritizeImgState extends State<AnimatedPrioritizeImg> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey('animated_prioritize_img'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.5 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FadeInLeft(child: const PrioritizeImg())
          : const Opacity(
              opacity: 0,
              child: PrioritizeImg(),
            ),
    );
  }
}
