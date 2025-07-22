import 'package:animate_do/animate_do.dart' show ElasticIn;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../themes/app_text_styles.dart';
import '../utils/app_assets.dart';
import '../utils/app_strings.dart';

class FlutterErrorDetailsView extends StatelessWidget {
  const FlutterErrorDetailsView({super.key, required this.details});

  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          spacing: 16.h,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Lottie.asset(
                Assets.lottieShyLottie,
                fit: BoxFit.cover,
                repeat: false,
              ),
            ),
            ElasticIn(
              child: Text(
                AppStrings.dontWorry,
                style: AppTextStyles.font16Medium(context),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
