import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:personal_portfolio/src/widgets/copy_my_email_card.dart';

class AnimatedCopyMyEmailCard extends StatefulWidget {
  const AnimatedCopyMyEmailCard({super.key});

  @override
  State<AnimatedCopyMyEmailCard> createState() =>
      _AnimatedCopyMyEmailCardState();
}

class _AnimatedCopyMyEmailCardState extends State<AnimatedCopyMyEmailCard> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey('animated_copy_my_email_card'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.5 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FadeInRight(
              delay: const Duration(milliseconds: 600),
              child: const CopyMyEmailCard(),
            )
          : const Opacity(
              opacity: 0,
              child: CopyMyEmailCard(),
            ),
    );
  }
}
