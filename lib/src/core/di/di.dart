import 'package:get_it/get_it.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_cubit.dart';
import 'package:personal_portfolio/src/core/locale/logic/locale_repo.dart';
import 'package:personal_portfolio/src/core/themes/themes_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupDI() {
  _setupForRepos();
  _setupForCubits();
}

void _setupForRepos() {
  getIt.registerLazySingleton<LocaleRepo>(() => LocaleRepo());
}

void _setupForCubits() {
  getIt.registerLazySingleton<LocaleCubit>(
    () => LocaleCubit(getIt<LocaleRepo>()),
  );
  getIt.registerLazySingleton<ThemingCubit>(() => ThemingCubit());
}
