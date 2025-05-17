import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_constants.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

import '../../models/work_experience.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key, required this.workExperience});

  final WorkExperience workExperience;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        top: 52.h,
        bottom: 30.h,
        start: 52.w,
        end: 52.w,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.r),
        gradient: AppConstants.boxPrimaryLinearGradient,
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      ),
      child: OverflowBar(
        spacing: 30.w,
        overflowSpacing: 20.h,
        alignment: MainAxisAlignment.center,
        overflowAlignment: OverflowBarAlignment.start,
        children: [
          Image.asset(workExperience.imgPath),
          Column(
            spacing: 12.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    workExperience.title,
                    style: AppTextStyles.font26Bold(context),
                  ),
                  Text(
                    workExperience.period,
                    style: AppTextStyles.font16Regular(context),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    workExperience.company,
                    style: AppTextStyles.font13Medium(context),
                  ),
                  Text(
                    workExperience.jobMode,
                    style: AppTextStyles.font13Medium(context),
                  ),
                ],
              ),
              Text(
                AppStrings.myInternDescription,
                style: AppTextStyles.font16Medium(context).copyWith(
                  color: AppColors.colorBEC1DD,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
