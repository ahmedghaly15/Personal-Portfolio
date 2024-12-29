import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/copy_my_email_card.dart';
import 'package:personal_portfolio/src/widgets/prioritize_img.dart';
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
        const Flexible(
          flex: 2,
          child: PrioritizeImg(),
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
