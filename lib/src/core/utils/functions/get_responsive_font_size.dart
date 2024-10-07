// sacleFactor
// responsive font size
// (min , max) fontsize
import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  final double scaleFactor = _getScaleFactor(context);
  final double responsiveFontSize = fontSize * scaleFactor;

  final double lowerLimit = fontSize * 0.8;
  final double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double _getScaleFactor(BuildContext context) {
  // To get the same width of Media query use below steps :

  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  final double width = context.screenWidth;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
