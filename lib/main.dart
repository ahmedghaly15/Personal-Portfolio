import 'dart:async';

import 'package:jaspr/browser.dart';

import 'src/core/utils/functions/setup_service_locator.dart';
import 'src/personal_portfolio_app.dart';

Future<void> main() async {
  Object? startupError;
  StackTrace? startupStackTrace;

  await runZonedGuarded(() async {
    await setupDI();
  }, (error, stackTrace) {
    startupError = error;
    startupStackTrace = stackTrace;
  });

  runApp(
    PersonalPortfolioApp(
      startupError: startupError,
      startupStackTrace: startupStackTrace,
    ),
  );
}
