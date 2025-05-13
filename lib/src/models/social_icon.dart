import 'package:personal_portfolio/src/core/utils/app_assets.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class SocialIcon {
  final String icon, url;

  const SocialIcon({
    required this.icon,
    required this.url,
  });

  static const List<SocialIcon> socialIcons = [
    SocialIcon(
      url: AppStrings.gitHubUrl,
      icon: Assets.svgsGithubIcon,
    ),
    SocialIcon(
      url: "https://www.linkedin.com/in/ahmed-ghaly15/",
      icon: Assets.svgsLinkedInIcon,
    ),
    SocialIcon(
      url: "https://medium.com/@ahmedghaly15",
      icon: Assets.svgsMediumIcon,
    ),
  ];
}
