import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/widgets/my_image_and_tabs.dart';
import 'package:personal_portfolio/src/widgets/social_icons.dart';
import 'package:personal_portfolio/src/widgets/introducing_myself_section.dart';

class HomeViewDesktopLayout extends StatelessWidget {
  const HomeViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic =
        context.watch<LocaleCubit>().isArabic; // Watch the locale change here

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: isArabic
              ? const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyImageAndTabs(),
                    MySizedBox.width114,
                    Expanded(
                      child: IntroducingMyselfSection(),
                    ),
                  ],
                )
              : const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: IntroducingMyselfSection(),
                    ),
                    MySizedBox.width114,
                    MyImageAndTabs(),
                  ],
                ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 32.h),
                child: const SocialIcons(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
