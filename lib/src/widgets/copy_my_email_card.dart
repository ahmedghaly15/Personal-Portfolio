import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/core/widgets/main_button.dart';

class CopyMyEmailCard extends StatelessWidget {
  const CopyMyEmailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        color: AppColors.color06091F,
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesCopyEmailAddressBackground,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12.h,
              children: [
                Text(
                  AppStrings.wantToStartProjectTogether,
                  style: AppTextStyles.font24Bold(context),
                  textAlign: TextAlign.center,
                ),
                MainButton(
                  onPressed: () async {
                    await Clipboard.setData(
                      const ClipboardData(text: AppStrings.myGmail),
                    );
                  },
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff161A31),
                      Color(0xff06091F),
                    ],
                    stops: [0, 1],
                    begin: AlignmentDirectional.centerStart,
                    end: AlignmentDirectional.centerEnd,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 5.w,
                    children: [
                      SvgPicture.asset(Assets.svgsCopyIcon),
                      Text(
                        AppStrings.copyMyEmailAddress,
                        style: AppTextStyles.font14Medium(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
