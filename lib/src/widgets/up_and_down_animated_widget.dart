import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpAndDownAnimatedWidget extends StatefulWidget {
  final Widget child;

  const UpAndDownAnimatedWidget({super.key, required this.child});

  @override
  State<UpAndDownAnimatedWidget> createState() =>
      _UpAndDownAnimatedWidgetState();
}

class _UpAndDownAnimatedWidgetState extends State<UpAndDownAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _initAndRepeatAnimation();
    _animation = Tween<double>(begin: 0.0, end: 30.0.h).animate(_controller);
  }

  void _initAndRepeatAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) => Transform.translate(
        offset: Offset(0, _animation.value),
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
