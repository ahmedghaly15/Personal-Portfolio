import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  // Use WidgetBuilder to avoid building / creating the widget when it is not needed
  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Break points are specified according to the design
        if (constraints.maxWidth < 800) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < 1200) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
      },
    );
  }
}
