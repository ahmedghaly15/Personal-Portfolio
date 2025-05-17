import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../core/themes/app_text_styles.dart';
import '../../core/utils/app_assets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16.h,
          children: [
            Lottie.asset(
              Assets.lottieErrorAnimation,
              repeat: false,
            ),
            Text(
              'Something went wrong. Please try again later.',
              style: AppTextStyles.font14Medium(context),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
