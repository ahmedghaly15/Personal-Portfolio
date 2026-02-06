import 'package:supabase/supabase.dart';

import '../../../data/portfolio_repository.dart';
import '../../../view_model/landing_data_loader.dart';
import '../../helpers/environment_helper.dart';
import '../const_strings.dart';
import '../service_locator.dart';

final locator = ServiceLocator();

void _setupForExternal() {
  final supabaseUrl =
      EnvironmentHelper.requiredEnvironmentVariable(ConstStrings.supabaseUrlKey);
  final supabaseAnonKey = EnvironmentHelper.requiredEnvironmentVariable(
    ConstStrings.supabaseAnonKey,
  );

  locator.registerLazySingleton<SupabaseClient>(
    () => SupabaseClient(supabaseUrl, supabaseAnonKey),
  );
}

void _setupRepositories() {
  locator.registerLazySingleton<PortfolioRepository>(
    () => PortfolioRepository(locator.get<SupabaseClient>()),
  );
}

void _setupDataLoaders() {
  locator.registerFactory<LandingDataLoader>(
    () => LandingDataLoader(locator.get<PortfolioRepository>()),
  );
}

Future<void> setupDI() async {
  _setupForExternal();
  _setupRepositories();
  _setupDataLoaders();
}
