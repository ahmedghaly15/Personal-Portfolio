import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/widgets/settings_and_social_icon_buttons.dart';
import 'package:personal_portfolio/src/widgets/tabs_and_my_image.dart';

class LayoutTopSection extends StatelessWidget {
  const LayoutTopSection({
    super.key,
    required this.backgroundSvgImage,
    this.myImageRadius = 280,
    this.topPosition,
    this.bottomPosition,
    this.myImageHorizontalPosition,
    required this.isLayoutLargerThanMobile,
  });

  final String backgroundSvgImage;
  final double myImageRadius;
  final double? topPosition, myImageHorizontalPosition, bottomPosition;
  final bool isLayoutLargerThanMobile;

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LocaleCubit>().isArabic;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isArabic
            ? _buildTabsAndMyImage(context)
            : _buildSettingsAndSocialIconButtons(),
        isArabic
            ? _buildSettingsAndSocialIconButtons()
            : _buildTabsAndMyImage(context),
      ],
    );
  }

  Widget _buildSettingsAndSocialIconButtons() =>
      const Expanded(child: SettingsAndSocialIconButtons());

  Widget _buildTabsAndMyImage(BuildContext context) {
    return TabsAndMyImage(
      backgroundSvgImage: backgroundSvgImage,
      isLayoutLargerThanMobile: isLayoutLargerThanMobile,
      myImageRadius: myImageRadius,
      topPosition: topPosition,
      bottomPosition: bottomPosition,
      myImageHorizontalPosition: myImageHorizontalPosition,
    );
  }
}
