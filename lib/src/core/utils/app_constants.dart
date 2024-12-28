import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/models/skill.dart';

class AppConstants {
  AppConstants._();

  static const List<String> headerTitlesKeys = [
    AppStrings.about,
    AppStrings.skills,
    AppStrings.portfolio,
  ];

  static const List<Skill> skills = [
    Skill(name: 'Dart', percent: 0.85),
    Skill(name: 'OOP', percent: 0.8),
    Skill(name: 'Flutter Framework', percent: 0.8),
    Skill(name: 'Problem Solving', percent: 0.7),
    Skill(name: 'Version Control (Git)', percent: 0.85),
    Skill(name: 'UI/UX Implementation', percent: 0.8),
    Skill(name: 'State Management (Cubit & Bloc)', percent: 0.9),
    Skill(name: 'Firebase', percent: 0.8),
    Skill(name: 'APIs Handling', percent: 0.9),
    Skill(name: 'Clean Architecture', percent: 0.8),
    Skill(name: 'MVVM Pattern', percent: 0.9),
    Skill(name: 'Responsiveness', percent: 0.8),
  ];

  static BoxDecoration get boxDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(13.r),
        gradient: boxPrimaryLinearGradient,
        border: Border.all(
          color: AppColors.color6971A2.withAlpha(41),
          width: 1.w,
        ),
      );

  static LinearGradient get boxPrimaryLinearGradient => const LinearGradient(
        colors: [
          AppColors.color04071D,
          AppColors.color0C0E23,
        ],
        stops: [0, 1],
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
      );
}
