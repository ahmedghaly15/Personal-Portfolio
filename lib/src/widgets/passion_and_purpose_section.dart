import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/widgets/copy_my_email_card.dart';
import 'package:personal_portfolio/src/widgets/tech_enthusiast_card.dart';

class PassionAndPurposeSection extends StatelessWidget {
  const PassionAndPurposeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30.w,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 2,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(23.r),
                child: Image.asset(
                  Assets.imagesPrioritizeImage,
                  fit: BoxFit.cover,
                ),
              ),
              PositionedDirectional(
                start: 40.w,
                bottom: 60.h,
                child: Text(
                  AppStrings.iPrioritizeClient,
                  style: AppTextStyles.font32Bold(context),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30.h,
            children: const [
              AspectRatio(
                aspectRatio: 351 / 180,
                child: TechEnthusiastCard(),
              ),
              AspectRatio(
                aspectRatio: 351 / 180,
                child: CopyMyEmailCard(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
