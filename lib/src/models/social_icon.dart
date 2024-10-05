import 'package:flutter/material.dart';

class SocialIcon {
  final String icon, url;
  final VoidCallback onPressed;

  SocialIcon({
    required this.icon,
    required this.url,
    required this.onPressed,
  });
}
