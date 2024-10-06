import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/models/skill.dart';
import 'package:personal_portfolio/src/models/social_icon.dart';

class AppConstants {
  AppConstants._();

  static const List<String> headerTitlesKeys = [
    LangKeys.about,
    LangKeys.skills,
    LangKeys.projects,
    LangKeys.contact,
  ];
  static const List<SocialIcon> socialIcons = [
    SocialIcon(
      url: AppStrings.myGmail,
      icon: Assets.svgsEmailIcon,
      hoveredIcon: Assets.svgsEmailDarkModeIcon,
      isEmail: true,
    ),
    SocialIcon(
      url: "https://github.com/ahmedghaly15",
      icon: Assets.svgsGithubIcon,
      hoveredIcon: Assets.svgsGithubDarkModeIcon,
    ),
    SocialIcon(
      url: "https://www.linkedin.com/in/ahmed-ghaly15/",
      icon: Assets.svgsLinkedinIcon,
      hoveredIcon: Assets.svgsLinkedinDarkModeIcon,
    ),
    SocialIcon(
      url: "https://medium.com/@ahmedghaly15",
      icon: Assets.svgsMediumIcon,
      hoveredIcon: Assets.svgsMediumDarkModeIcon,
    ),
  ];

  static const List<String> myDescriptionLangKeys = [
    LangKeys.flutterDeveloper,
    LangKeys.helloMyNameIs,
    LangKeys.myDescription,
  ];

  static const List<double> myDescriptionTextsBottomMargins = [12, 32, 32];

  static List<TextStyle> myDescriptionTextStyles(BuildContext context) => [
        AppTextStyles.nunitoFont20Bold(context).copyWith(
          color: AppColors.primaryColor,
        ),
        AppTextStyles.playfairFont64Bold(context).copyWith(
          color: context.isDarkModeActive
              ? Colors.white60
              : AppColors.closeToBlackColor,
        ),
        AppTextStyles.nunitoFont24Regular(context).copyWith(
          color: AppColors.mediumGrey,
        ),
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
}
