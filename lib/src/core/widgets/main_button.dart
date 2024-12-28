import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/utils/functions/get_responsive_font_size.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.textKey,
    this.child,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
    this.width,
    this.height,
    this.padding,
    this.fontSize,
    this.margin,
  });

  final String? textKey;
  final Widget? child;
  final double? borderRadius;
  final TextStyle? textStyle;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w,
      height: height?.h,
      margin: margin,
      decoration: AppConstants.boxDecoration.copyWith(
        borderRadius: BorderRadius.circular(borderRadius ?? 13.r),
      ),
      child: MaterialButton(
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 40.w,
              vertical: 22.h,
            ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            borderRadius?.r ?? 13.0.r,
          ),
        ),
        child: child ??
            Text(
              textKey!,
              style: textStyle ??
                  AppTextStyles.font18Medium(context).copyWith(
                    fontSize: getResponsiveFontSize(context,
                        fontSize: fontSize ?? 18),
                    color: Colors.white,
                  ),
            ),
      ),
    );
  }
}
