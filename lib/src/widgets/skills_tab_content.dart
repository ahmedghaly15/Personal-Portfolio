import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/utils/app_utils.dart';
import 'package:personal_portfolio/src/models/skill.dart';

class SkillsTabContent extends StatelessWidget {
  const SkillsTabContent({super.key, this.margin});

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final isArabic = context.watch<LocaleCubit>().isArabic;
    return Container(
      margin: margin ??
          AppUtils.tabContentEdgeInsets(isArabic)
              .add(EdgeInsets.only(top: 32.h)),
      child: Wrap(
        children: List.generate(
          AppConstants.skills.length,
          (index) => Container(
            margin: EdgeInsets.only(bottom: 12.h),
            child: _buildSkillItem(
              context,
              skill: AppConstants.skills[index],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkillItem(BuildContext context, {required Skill skill}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill.name,
          style: AppTextStyles.ralewayFont20SemiBold(context),
        ),
        LinearPercentIndicator(
          animation: true,
          lineHeight: 16.h,
          animationDuration: 2000,
          percent: skill.percent,
          backgroundColor: context.isDarkModeActive
              ? AppColors.closeToBlackColor
              : Colors.grey.shade200,
          padding: EdgeInsets.zero,
          barRadius: Radius.circular(24.r),
          progressColor: AppColors.primaryColor,
        ),
      ],
    );
  }
}
