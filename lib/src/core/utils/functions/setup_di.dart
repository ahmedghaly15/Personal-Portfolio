import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDI() async {
  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
}
