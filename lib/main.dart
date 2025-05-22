import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'src/core/utils/bloc_observer.dart';
import 'src/core/utils/functions/setup_di.dart';
import 'src/personal_portfolio_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  VisibilityDetectorController.instance.updateInterval = Duration.zero;
  Bloc.observer = MyBlocObserver();
  await dotenv.load();
  await setupDI();
  await ScreenUtil.ensureScreenSize();
  await Supabase.initialize(
    url: "https://gsbdfmndkveqlqxenrtf.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdzYmRmbW5ka3ZlcWxxeGVucnRmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc0NjY4NTgsImV4cCI6MjA2MzA0Mjg1OH0.Bn-aq08RZmdSpYwFA5Pw2JO5RskcjXD4lsaOi8GCoCU",
  );
  runApp(const PersonalPortfolioApp());
}
