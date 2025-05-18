import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../view_model/landing_cubit.dart';

final GetIt getIt = GetIt.instance;

void _setupForExternal() {
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
}

void _setupForeCubits() {
  getIt.registerFactory<LandingCubit>(
    () => LandingCubit(getIt<SupabaseClient>()),
  );
}

Future<void> setupDI() async {
  _setupForExternal();
  _setupForeCubits();
}
