import 'package:flutter/material.dart';

class SocialIcon {
  final String icon, url, hoveredIcon;
  final VoidCallback onPressed;

  SocialIcon({
    required this.hoveredIcon,
    required this.icon,
    required this.url,
    required this.onPressed,
  });
}
