import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../view_model/landing_cubit.dart';
import '../../api/dio_factory.dart';

final GetIt getIt = GetIt.instance;

void _setupForExternal() {
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
}

void _setupForCore() {
  getIt.registerLazySingleton<Dio>(() => DioFactory.getDio());
}

void _setupForeCubits() {
  getIt.registerFactory<LandingCubit>(
    () => LandingCubit(getIt<SupabaseClient>(), getIt<Dio>()),
  );
}

Future<void> setupDI() async {
  _setupForExternal();
  _setupForCore();
  _setupForeCubits();
}
