import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/selected_tab_content_bloc_builder.dart';

class MobileOrTabletSelectedTabContent extends StatelessWidget {
  const MobileOrTabletSelectedTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectedTabContentBlocBuilder(
      aboutTabMargin: EdgeInsetsDirectional.only(
        top: 16.h,
        start: 48.w,
        end: 56.w,
        bottom: 24.h,
      ),
      skillsTabMargin: EdgeInsets.symmetric(
        vertical: 32.h,
        horizontal: 48.w,
      ),
      portfolioGridPadding: EdgeInsets.symmetric(
        vertical: 32.h,
        horizontal: 48.w,
      ),
    );
  }
}
