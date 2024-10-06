import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
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
          color: AppColors.lightModeFontColor,
        ),
        AppTextStyles.nunitoFont24Regular(context).copyWith(
          color: AppColors.mediumGrey,
        ),
      ];
}
