import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../core/utils/app_constants.dart';
import '../../core/utils/functions/get_work_experience_img.dart';
import '../../models/about.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key, required this.workExperience});

  final WorkExperienceModel workExperience;

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
          Image.asset(getWorkExperienceImg(workExperience.experienceStatus)),
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
                    '${workExperience.startDate} - ${workExperience.endDate}',
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
                    workExperience.experienceStatus,
                    style: AppTextStyles.font13Medium(context),
                  ),
                ],
              ),
              Text(
                _getWorkExperienceDescription(),
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

  String _getWorkExperienceDescription() {
    return workExperience.description.map((item) => '• $item').join('\n');
  }
}
