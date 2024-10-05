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
  static const CustomSizedBox height38 = CustomSizedBox(height: 38);
  static const CustomSizedBox height32 = CustomSizedBox(height: 32);
  static const CustomSizedBox height12 = CustomSizedBox(height: 12);
  static const CustomSizedBox width114 = CustomSizedBox(width: 114);
}
