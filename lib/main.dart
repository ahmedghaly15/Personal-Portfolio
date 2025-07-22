import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:visibility_detector/visibility_detector.dart';

import 'src/core/utils/bloc_observer.dart';
import 'src/core/utils/const_strings.dart';
import 'src/core/helpers/environment_helper.dart';
import 'src/core/utils/functions/setup_di.dart';
import 'src/core/widgets/flutter_error_details_view.dart';
import 'src/personal_portfolio_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  VisibilityDetectorController.instance.updateInterval = Duration.zero;
  Bloc.observer = MyBlocObserver();

  await Future.wait([
    dotenv.load(),
    setupDI(),
    ScreenUtil.ensureScreenSize(),
  ]);

  // Get environment variables from either .env file or dart-define
  await Supabase.initialize(
    url: EnvironmentHelper.getEnvironmentVariable(ConstStrings.supabaseUrlKey)!,
    anonKey:
        EnvironmentHelper.getEnvironmentVariable(ConstStrings.supabaseAnonKey)!,
  );

  ErrorWidget.builder = (FlutterErrorDetails details) =>
      FlutterErrorDetailsView(details: details);

  runApp(const PersonalPortfolioApp());
}
