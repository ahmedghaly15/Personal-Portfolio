import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/themes/app_colors.dart';
import 'package:personal_portfolio/src/core/themes/app_text_styles.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';
import 'package:personal_portfolio/src/models/project.dart';
import 'package:personal_portfolio/src/models/skill.dart';
import 'package:personal_portfolio/src/models/social_icon.dart';

class AppConstants {
  AppConstants._();

  static const List<String> headerTitlesKeys = [
    LangKeys.about,
    LangKeys.skills,
    LangKeys.portfolio,
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
    SocialIcon(
      url: "https://x.com/aboghaly___",
      icon: Assets.svgsXIcon,
      hoveredIcon: Assets.svgsHoveredXIcon,
    ),
    SocialIcon(
      hoveredIcon: Assets.svgsHoveredFacebookIcon,
      icon: Assets.svgsFacebookIcon,
      url: "https://www.facebook.com/profile.php?id=100011409033548",
    ),
    SocialIcon(
      hoveredIcon: Assets.svgsHoveredInstagramIcon,
      icon: Assets.svgsInstagramIcon,
      url: "https://www.instagram.com/aboghaly___/",
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
              ? Colors.white
              : AppColors.closeToBlackColor,
        ),
        AppTextStyles.nunitoFont24Regular(context).copyWith(
          color:
              context.isDarkModeActive ? Colors.white60 : AppColors.mediumGrey,
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

  static const List<Project> portfolio = [
    Project(
      name: 'ICare',
      descriptionKey: LangKeys.icareDescription,
      image: Assets.imagesIcareIcon,
      url: "https://www.mediafire.com/file/p9f89wxv63mgity/ICare.apk/file",
      canBeDownloaded: true,
    ),
    Project(
      name: "Linkup",
      descriptionKey: LangKeys.linkupDescription,
      image: Assets.imagesLinkupIcon,
      url: "https://www.mediafire.com/file/ow4ilvobb6jxb04/Linkup.apk/file",
      canBeDownloaded: true,
    ),
    Project(
      name: "Storeify",
      descriptionKey: LangKeys.storeifyDescription,
      image: Assets.imagesStoreifyIcon,
      neitherDownloadedNorViewed: true,
    ),
    Project(
      name: "Roome",
      descriptionKey: LangKeys.roomeDescription,
      image: Assets.imagesRoomeIcon,
      url: "https://github.com/ahmedghaly15/Roome",
    ),
  ];
}
