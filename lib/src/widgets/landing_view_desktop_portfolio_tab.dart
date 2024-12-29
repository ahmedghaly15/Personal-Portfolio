import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/widgets/tabs_nav.dart';

class LandingViewDesktopPortfolioTab extends StatelessWidget {
  const LandingViewDesktopPortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Align(
            alignment: Alignment.center,
            child: TabsNav(),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(top: 73.h, bottom: 22.h),
            child: Text(
              AppStrings.dynamicAppMagic,
              style: AppTextStyles.font16Regular(context),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
