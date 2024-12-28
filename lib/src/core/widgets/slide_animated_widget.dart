import 'package:flutter/material.dart';

class SlideAnimatedWidget extends StatefulWidget {
  const SlideAnimatedWidget({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 1500),
    this.curve = Curves.easeIn,
    this.begin,
  });

  final Widget child;
  final Duration duration;
  final Offset? begin;
  final Curve curve;

  @override
  State<SlideAnimatedWidget> createState() => _SlideAnimatedWidgetState();
}

class _SlideAnimatedWidgetState extends State<SlideAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _initSlideAnimation();
  }

  void _initSlideAnimation() {
    _initController();
    _animateController();
    _animationController.forward();
  }

  void _initController() {
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
  }

  void _animateController() {
    final tween = Tween<Offset>(
      begin: widget.begin ?? const Offset(-1.0, -0.5),
      end: const Offset(0.0, 0.0),
    );

    _animation = tween.animate(_animationController);
    _animation = tween.animate(
      CurvedAnimation(
        parent: _animationController,
        curve: widget.curve,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
