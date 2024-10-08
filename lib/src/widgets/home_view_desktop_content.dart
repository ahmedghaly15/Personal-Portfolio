import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/widgets/my_sized_box.dart';
import 'package:personal_portfolio/src/cubit/app_cubit.dart';
import 'package:personal_portfolio/src/widgets/locale_and_theme_icon_buttons.dart';
import 'package:personal_portfolio/src/widgets/selected_tab_content_bloc_builder.dart';
import 'package:personal_portfolio/src/widgets/tabs_and_my_image.dart';

class HomeViewDesktopContent extends StatelessWidget {
  const HomeViewDesktopContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic =
        context.watch<LocaleCubit>().isArabic; // Watch the locale change here

    return isArabic
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTabsAndMyImageWidget(),
              MySizedBox.width114,
              _buildSelectedTabContentAndHeaderIconButtons(),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSelectedTabContentAndHeaderIconButtons(),
              MySizedBox.width114,
              _buildTabsAndMyImageWidget(),
            ],
          );
  }

  Expanded _buildSelectedTabContentAndHeaderIconButtons() {
    return const Expanded(
      child: SelectedTabContentAndHeaderIconButtons(),
    );
  }

  Widget _buildTabsAndMyImageWidget() {
    return const TabsAndMyImage(
      isLayoutLargerThanMobile: true,
      backgroundSvgImage: Assets.svgsLavenderBg,
    );
  }
}

class SelectedTabContentAndHeaderIconButtons extends StatelessWidget {
  const SelectedTabContentAndHeaderIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic =
        context.watch<LocaleCubit>().isArabic; // Watch the locale change here
    return Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(
            top: 8.h,
            start: isArabic ? 0.w : 72.w,
            end: isArabic ? 72.w : 0,
          ),
          child: const LocaleAndThemeIconButtons(),
        ),
        BlocBuilder<AppCubit, AppState>(
          buildWhen: (_, current) => current is UpdateSelectedTab,
          builder: (context, state) {
            final selectedTab = context.watch<AppCubit>().selectedTab;
            if (selectedTab == 0) return MySizedBox.height140;
            return const SizedBox.shrink();
          },
        ),
        const SelectedTabContentBlocBuilder(),
      ],
    );
  }
}
