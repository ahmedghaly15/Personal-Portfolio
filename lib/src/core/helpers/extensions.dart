import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../enums/experience_status.dart';
import '../themes/app_text_styles.dart';
import '../utils/app_assets.dart';

extension MediaQueryExtension on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}

extension ShowMyToast on BuildContext {
  void showToast(String message) => ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          backgroundColor: Colors.black54,
          elevation: 0,
          duration: const Duration(seconds: 2),
          dismissDirection: DismissDirection.startToEnd,
          behavior: SnackBarBehavior.floating,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
          content: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8.w,
            children: [
              Lottie.asset(
                Assets.lottieLoadingAnimation,
                height: 32.h,
                width: 32.h,
                repeat: false,
              ),
              Expanded(
                child: Text(
                  message,
                  style: AppTextStyles.font14Medium(this)
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
}

extension GetResponsiveFontSize on BuildContext {
  double getResponsiveFontSize(double fontSize) {
    final double scaleFactor = _getScaleFactor();
    final double responsiveFontSize = fontSize * scaleFactor;

    final double lowerLimit = fontSize * 0.8;
    final double upperLimit = fontSize * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double _getScaleFactor() {
    // To get the same width of Media query use below steps :

    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // double width = physicalWidth / devicePixelRatio;

    final double width = screenWidth;
    if (width < 800) {
      return width / 550;
    } else if (width < 1200) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }
}

extension ExperienceStatusEnumName on ExperienceStatus {
  String get getName {
    switch (this) {
      case ExperienceStatus.fullTime:
        return 'Full-time';
      case ExperienceStatus.partTime:
        return 'Part-time';
      case ExperienceStatus.remote:
        return 'Remote';
      case ExperienceStatus.freelance:
        return 'Freelance';
    }
  }
}
