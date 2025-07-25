import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../view_model/landing_cubit.dart';
import '../service_locator.dart';

final locator = ServiceLocator();

void _setupForExternal() {
  locator.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
}

void _setupForeCubits() {
  locator.registerFactory<LandingCubit>(
    () => LandingCubit(locator.get<SupabaseClient>()),
  );
}

Future<void> setupDI() async {
  _setupForExternal();
  _setupForeCubits();
}
