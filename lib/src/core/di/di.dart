import 'package:get_it/get_it.dart';
import 'package:personal_portfolio/src/cubit/landing_cubit.dart';

final GetIt getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton<LandingCubit>(() => LandingCubit());
}
