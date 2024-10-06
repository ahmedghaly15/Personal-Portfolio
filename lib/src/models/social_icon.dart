class SocialIcon {
  final String icon, url, hoveredIcon;
  final bool isEmail;

  const SocialIcon({
    required this.hoveredIcon,
    required this.icon,
    required this.url,
    this.isEmail = false,
  });
}
