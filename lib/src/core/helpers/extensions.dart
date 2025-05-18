import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

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
