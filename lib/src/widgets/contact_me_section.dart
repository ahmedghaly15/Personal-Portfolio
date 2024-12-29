import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/widgets/encourage_contacting_me.dart';
import 'package:personal_portfolio/src/widgets/social_icons.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesFooterGridPattern,
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: EncourageContactingMe(),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 56.h,
            child: const SocialIcons(),
          ),
        ],
      ),
    );
  }
}
