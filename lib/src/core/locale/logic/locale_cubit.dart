import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_repo.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_state.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class LocaleCubit extends Cubit<LocaleState> {
  final LocaleRepo _localeRepo;

  LocaleCubit(this._localeRepo)
      : super(
          const LocaleInitial(Locale(AppStrings.englishLangCode)),
        );

  // late final String savedLangCode;

  void getSavedLang() async {
    final savedLangCode = await _localeRepo.getSavedLang();
    emit(LocaleChanged(Locale(savedLangCode)));
  }

  Future<void> _changeLang(String langCode) async {
    await _localeRepo.changeLang(langCode);
  }

  void _toEnglish() => _changeLang(AppStrings.englishLangCode);

  void _toArabic() => _changeLang(AppStrings.arabicLangCode);

  void toggleLocale() {
    state.locale.languageCode == AppStrings.englishLangCode
        ? _toArabic()
        : _toEnglish();
  }
}
