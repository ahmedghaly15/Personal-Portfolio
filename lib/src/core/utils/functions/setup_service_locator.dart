import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../view_model/landing_data_loader.dart';
import '../service_locator.dart';

final locator = ServiceLocator();

void _setupForExternal() {
  locator.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
}

void _setupDataLoaders() {
  locator.registerFactory<LandingDataLoader>(
    () => LandingDataLoader(locator.get<SupabaseClient>()),
  );
}

Future<void> setupDI() async {
  _setupForExternal();
  _setupDataLoaders();
}
