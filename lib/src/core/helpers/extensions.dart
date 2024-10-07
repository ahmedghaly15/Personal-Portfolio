import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/locale/app_localizations.dart';

extension MediaQueryExtension on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}

extension NullOrEmptyString on String? {
  /// Check if the string is null or empty
  bool get nullOrEmpty => this == null || this == '';
}

extension Translate on BuildContext {
  /// Translate the given [key] to the current locale
  String translate(String key) => AppLocalizations.of(this)!.translate(key)!;
}

extension CheckDarkThemeActivation on BuildContext {
  bool get isDarkModeActive => Theme.of(this).brightness == Brightness.dark;
}
