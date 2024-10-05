import 'package:personal_portfolio/src/core/helpers/cache_keys.dart';
import 'package:personal_portfolio/src/core/helpers/extensions.dart';
import 'package:personal_portfolio/src/core/helpers/shared_pref_helper.dart';
import 'package:personal_portfolio/src/core/utils/app_strings.dart';

class LocaleRepo {
  Future<bool> changeLang(String langCode) async {
    return await SharedPrefHelper.setData(CacheKeys.locale, langCode);
  }

  Future<String> getSavedLang() async {
    final savedLang = await SharedPrefHelper.getString(CacheKeys.locale);
    return savedLang.nullOrEmpty ? AppStrings.englishLangCode : savedLang;
  }
}
