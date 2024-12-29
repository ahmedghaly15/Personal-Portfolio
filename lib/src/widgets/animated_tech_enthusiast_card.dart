import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'package:personal_portfolio/src/widgets/tech_enthusiast_card.dart';

class AnimatedTechEnthusiastCard extends StatefulWidget {
  const AnimatedTechEnthusiastCard({super.key});

  @override
  State<AnimatedTechEnthusiastCard> createState() =>
      _AnimatedTechEnthusiastCardState();
}

class _AnimatedTechEnthusiastCardState
    extends State<AnimatedTechEnthusiastCard> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const ValueKey('animated_tech_enthusiast_card'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction >= 0.5 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: _isVisible
          ? FadeInRight(
              delay: const Duration(milliseconds: 300),
              child: const TechEnthusiastCard(),
            )
          : const Opacity(
              opacity: 0,
              child: TechEnthusiastCard(),
            ),
    );
  }
}
