import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/locale/lang_keys.dart';
import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/models/social_icon.dart';

class AppConstants {
  AppConstants._();

  static const List<String> headerTitlesKeys = [
    LangKeys.about,
    LangKeys.projects,
    LangKeys.contact,
  ];
  static List<SocialIcon> socialIcons(BuildContext context) => [
        SocialIcon(
          url: "ahmedghaly0767@gmail.com",
          icon: context.isDarkModeActive
              ? Assets.svgsEmailDarkModeIcon
              : Assets.svgsEmailIcon,
          onPressed: () {},
        ),
        SocialIcon(
          url: "https://github.com/ahmedghaly15",
          icon: context.isDarkModeActive
              ? Assets.svgsGithubDarkModeIcon
              : Assets.svgsGithubIcon,
          onPressed: () {},
        ),
        SocialIcon(
          url: "https://www.linkedin.com/in/ahmed-ghaly15/",
          icon: context.isDarkModeActive
              ? Assets.svgsLinkedinDarkModeIcon
              : Assets.svgsLinkedinIcon,
          onPressed: () {},
        ),
        SocialIcon(
          url: "https://medium.com/@ahmedghaly15",
          icon: context.isDarkModeActive
              ? Assets.svgsMediumDarkModeIcon
              : Assets.svgsMediumIcon,
          onPressed: () {},
        ),
      ];
}
