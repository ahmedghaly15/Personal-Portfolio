import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}
