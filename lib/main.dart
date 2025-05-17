import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'src/core/utils/bloc_observer.dart';
import 'src/core/utils/const_strings.dart';
import 'src/personal_portfolio_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  VisibilityDetectorController.instance.updateInterval = Duration.zero;
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();
  await dotenv.load();
  await Supabase.initialize(
    url: dotenv.env[ConstStrings.supabaseUrlKey]!,
    anonKey: dotenv.env[ConstStrings.supabaseAnonKey]!,
  );
  runApp(const PersonalPortfolioApp());
}
