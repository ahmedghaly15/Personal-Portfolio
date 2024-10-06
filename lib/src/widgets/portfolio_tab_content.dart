import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/utils/app_utils.dart';
import 'package:personal_portfolio/src/widgets/project_item.dart';

class PortfolioTabContent extends StatelessWidget {
  const PortfolioTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LocaleCubit>().isArabic;
    return SlideInLeft(
      child: GridView.builder(
        padding: AppUtils.tabContentEdgeInsets(isArabic).add(
          EdgeInsets.symmetric(
            vertical: 32.h,
          ),
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: AppConstants.portfolio.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 24.h,
          crossAxisCount: 1,
          childAspectRatio: 2,
        ),
        itemBuilder: (_, index) => ProjectItem(
          project: AppConstants.portfolio[index],
          index: index,
        ),
      ),
    );
  }
}
