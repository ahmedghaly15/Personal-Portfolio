import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppUtils {
  AppUtils._();

  static EdgeInsetsDirectional tabContentEdgeInsets(bool isArabic) {
    return EdgeInsetsDirectional.only(
      start: isArabic ? 0.w : 72.w,
      end: isArabic ? 72.w : 0,
    );
  }
}
