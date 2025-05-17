import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/views/widgets/contact_me_content.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({
    super.key,
    required this.aspectRatio,
    this.contactMeButtonWidth,
  });

  final double aspectRatio;
  final double? contactMeButtonWidth;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesFooterGridPattern,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: AnimatedContactMeContent(
              contactMeButtonWidth: contactMeButtonWidth,
            ),
          ),
        ],
      ),
    );
  }
}
