import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'src/core/utils/bloc_observer.dart';
import 'src/core/utils/const_strings.dart';
import 'src/core/utils/functions/setup_di.dart';
import 'src/personal_portfolio_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  VisibilityDetectorController.instance.updateInterval = Duration.zero;
  Bloc.observer = MyBlocObserver();

  try {
    await dotenv.load();
  } catch (e) {
    print('Error loading .env file: $e');
    // For web deployment, environment variables might not be available
    // You can add fallback values or handle this case differently
  }

  await setupDI();
  await ScreenUtil.ensureScreenSize();

  // Add null checks and better error handling
  final supabaseUrl = dotenv.env[ConstStrings.supabaseUrlKey];
  final supabaseAnonKey = dotenv.env[ConstStrings.supabaseAnonKey];

  if (supabaseUrl == null || supabaseAnonKey == null) {
    print('Missing Supabase configuration:');
    print('SUPABASE_URL: ${supabaseUrl ?? 'NOT FOUND'}');
    print('SUPABASE_ANON_KEY: ${supabaseAnonKey ?? 'NOT FOUND'}');
    print('Available env vars: ${dotenv.env.keys.toList()}');
    throw Exception('Missing required environment variables for Supabase');
  }

  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );
  //
  runApp(const PersonalPortfolioApp());
}
