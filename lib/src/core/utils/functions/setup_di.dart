import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../view_model/landing_cubit.dart';


final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  getIt.registerFactory<LandingCubit>(
    () => LandingCubit(getIt<SupabaseClient>()),
  );

}
