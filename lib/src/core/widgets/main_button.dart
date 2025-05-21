import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import '../utils/app_constants.dart';



class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.text,
    this.child,
    required this.onPressed,
    this.borderRadius,
    this.textStyle,
    this.width,
    this.height,
    this.padding,
    this.fontSize,
    this.margin,
    this.backgroundColor,
    this.borderColor,
    this.gradient,
  });

  final String? text;
  final Widget? child;
  final double? borderRadius;
  final TextStyle? textStyle;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final EdgeInsetsGeometry? margin;
  final Color? backgroundColor, borderColor;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w,
      height: height?.h,
      margin: margin,
      decoration: AppConstants.boxDecoration.copyWith(
        borderRadius: BorderRadius.circular(borderRadius ?? 13.r),
        color: backgroundColor,
        border: Border.all(
          color: borderColor ?? AppColors.color6971A2.withAlpha(41),
        ),
        gradient: gradient ?? AppConstants.boxPrimaryLinearGradient,
      ),
      child: MaterialButton(
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 40.w,
              vertical: 24.h,
            ),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            borderRadius?.r ?? 13.0.r,
          ),
        ),
        child: child ??
            Text(
              text!,
              style: textStyle ??
                  AppTextStyles.font18Medium(context).copyWith(
                    fontSize: context.getResponsiveFontSize(18),
                    color: Colors.white,
                  ),
            ),
      ),
    );
  }

  factory MainButton.icon({
    required BuildContext context,
    required String labelText,
    required String svgIcon,
    TextStyle? textStyle,
    double borderRadius = 14,
    void Function()? onPressed,
    double? width,
    double? height,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    Color? backgroundColor,
    Color? borderColor,
    Gradient? gradient,
  }) =>
      MainButton(
        height: height,
        width: width,
        padding: padding,
        gradient: gradient,
        margin: margin,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        onPressed: onPressed,
        child: Row(
          spacing: 16.w,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              labelText,
              style: textStyle ?? AppTextStyles.font18Medium(context),
            ),
            SvgPicture.asset(svgIcon),
          ],
        ),
      );
}
