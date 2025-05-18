import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../core/themes/app_text_styles.dart';
import '../../models/skill_tab_model.dart';


class SkillsProgressList extends StatelessWidget {
  const SkillsProgressList({super.key, required this.skills});

  final List<SkillModel> skills;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: List.generate(
        skills.length,
        (index) => Container(
          margin: EdgeInsets.only(bottom: 12.h),
          child: Column(
            spacing: 5.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                skills[index].name,
                style: AppTextStyles.font20Medium(context),
              ),
              LinearPercentIndicator(
                animation: true,
                lineHeight: 16.h,
                animationDuration: 2000,
                percent: skills[index].percentage,
                linearGradient: const LinearGradient(
                  colors: [Color(0xffFF00C1), Color(0xffF4AC24)],
                  stops: [0, 1],
                ),
                backgroundColor: const Color(0xff5C1CB2).withAlpha(77),
                padding: EdgeInsets.zero,
                barRadius: Radius.circular(24.r),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
