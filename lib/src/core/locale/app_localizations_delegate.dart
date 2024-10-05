import 'package:flutter/material.dart' show Locale, LocalizationsDelegate;
import 'package:personal_portfolio/src/core/locale/app_localizations.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) {
    return [AppStrings.englishLangCode, AppStrings.arabicLangCode]
        .contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.load();
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}
