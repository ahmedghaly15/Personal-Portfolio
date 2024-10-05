import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/src/core/helpers/cache_keys.dart';
import 'package:personal_portfolio/src/core/helpers/shared_pref_helper.dart';
import 'package:personal_portfolio/src/core/themes/app_themes.dart';

class ThemingCubit extends Cubit<ThemeData> {
  ThemingCubit() : super(AppThemes.light) {
    _retrieveCachedTheme();
  }

  Future<void> _cacheSelectedTheme(Brightness brightness) async {
    final themeIndex = brightness == Brightness.light ? 0 : 1;
    debugPrint('THEME INDEX: $themeIndex');
    await SharedPrefHelper.setData(CacheKeys.appTheme, themeIndex);
  }

  Future<void> _retrieveCachedTheme() async {
    final cachedThemeIndex =
        await SharedPrefHelper.getInt(CacheKeys.appTheme) ?? 0;
    final savedTheme = cachedThemeIndex == 0 ? AppThemes.light : AppThemes.dark;
    emit(savedTheme);
  }

  void toggleTheme() {
    emit(state.brightness == Brightness.light
        ? AppThemes.dark
        : AppThemes.light);
    debugPrint('STATE: ${state.brightness.toString()}');
    _cacheSelectedTheme(state.brightness);
  }
}
