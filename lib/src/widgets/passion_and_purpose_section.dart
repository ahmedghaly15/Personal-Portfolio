import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/animated_copy_my_email_card.dart';
import 'package:personal_portfolio/src/widgets/animated_prioritize_img.dart';
import 'package:personal_portfolio/src/widgets/animated_tech_enthusiast_card.dart';

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
          child: AnimatedPrioritizeImg(),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30.h,
            children: const [
              AspectRatio(
                aspectRatio: 351 / 180,
                child: AnimatedTechEnthusiastCard(),
              ),
              AspectRatio(
                aspectRatio: 351 / 180,
                child: AnimatedCopyMyEmailCard(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
