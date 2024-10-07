import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/widgets/mobile_layout_top_section.dart';
import 'package:personal_portfolio/src/widgets/selected_tab_content_bloc_builder.dart';

class HomeViewMobileLayout extends StatelessWidget {
  const HomeViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: MobileLayoutTopSection(),
        ),
        SliverToBoxAdapter(
          child: SelectedTabContentBlocBuilder(
            aboutTabMargin: EdgeInsetsDirectional.only(
              top: 16.h,
              start: 48.w,
              end: 56.w,
              bottom: 24.h,
            ),
          ),
        ),
      ],
    );
  }
}
