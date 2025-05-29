import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizedBox extends StatelessWidget {
  final double? height, width;

  const CustomSizedBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
    );
  }
}

class MySizedBox {
  static const CustomSizedBox height32 = CustomSizedBox(height: 32);
  static const CustomSizedBox height18 = CustomSizedBox(height: 18);
  static const CustomSizedBox height14 = CustomSizedBox(height: 14);
  static const CustomSizedBox height20 = CustomSizedBox(height: 20);
}
