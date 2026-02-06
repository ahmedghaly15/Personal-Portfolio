import 'dart:async';

import 'package:jaspr/browser.dart';

import 'src/personal_portfolio_app.dart';

Future<void> main() async {
  Object? startupError;
  StackTrace? startupStackTrace;

  await runZonedGuarded(() async {
    // Reserved for async startup configuration (env loading, service setup, etc.).
    await Future<void>.value();
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
