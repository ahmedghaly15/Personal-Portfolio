import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_styles.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_constants.dart';
import '../../core/utils/functions/get_work_experience_img.dart';
import '../../models/about.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key, required this.workExperience});

  final WorkExperienceModel workExperience;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(23.r),
            child: Lottie.asset(
              Assets.lottieExperienceBackground,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23.r),
            gradient: AppConstants.boxPrimaryLinearGradient,
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          margin:
              EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 16.h),
          child: OverflowBar(
            spacing: 30.w,
            overflowSpacing: 20.h,
            alignment: MainAxisAlignment.center,
            overflowAlignment: OverflowBarAlignment.start,
            children: [
              Image.asset(
                  getWorkExperienceImg(workExperience.experienceStatus)),
              Column(
                spacing: 12.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OverflowBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    overflowAlignment: OverflowBarAlignment.start,
                    overflowSpacing: 10.h,
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
                        workExperience.experienceStatus.getName,
                        style: AppTextStyles.font13Medium(context),
                      ),
                    ],
                  ),
                  Text(
                    _getWorkExperienceDescription(),
                    style: AppTextStyles.font16Medium(context).copyWith(
                      color: AppColors.colorBEC1DD,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _getWorkExperienceDescription() {
    return workExperience.description.map((item) => '• $item').join('\n\n');
  }
}
