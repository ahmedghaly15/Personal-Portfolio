import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/widgets/locale_and_theme_icon_buttons.dart';
import 'package:personal_portfolio/src/widgets/social_icons_bloc_builder.dart';
import 'package:personal_portfolio/src/widgets/tabs_and_my_image.dart';

class MobileLayoutTopSection extends StatelessWidget {
  const MobileLayoutTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LocaleCubit>().isArabic;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isArabic
            ? _buildMyTabsAndImage()
            : _buildSocialAndServicesIconButtons(isArabic),
        isArabic
            ? _buildSocialAndServicesIconButtons(isArabic)
            : _buildMyTabsAndImage(),
      ],
    );
  }

  Widget _buildSocialAndServicesIconButtons(bool isArabic) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment:
          isArabic ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: const [
        LocaleAndThemeIconButtons(),
        MySizedBox.height38,
        SocialIconsBlocBuilder(direction: Axis.vertical),
      ],
    );
  }

  Widget _buildMyTabsAndImage() {
    return Expanded(
      child: TabsAndMyImage(
        backgroundSvgImage: Assets.imagesMobileLavenderBg,
        isDesktop: false,
        headerWidget: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 40.h,
          ),
        ),
        myImageRadius: 280,
      ),
    );
  }
}
