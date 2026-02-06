import 'package:jaspr/jaspr.dart';

import 'core/utils/app_strings.dart';
import 'views/landing_view.dart';
import 'views/styles/landing_view_styles.dart';

class PersonalPortfolioApp extends StatelessComponent {
  const PersonalPortfolioApp({
    super.key,
    this.startupError,
    this.startupStackTrace,
  });

  final Object? startupError;
  final StackTrace? startupStackTrace;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield document(
      title: AppStrings.appTitle,
      styles: [css(landingViewStyles)],
      body: [
        AppErrorBoundary(
          child: startupError != null
              ? StartupErrorView(error: startupError, stackTrace: startupStackTrace)
              : const LandingView(),
        ),
      ],
    );
  }
}

class AppErrorBoundary extends StatefulComponent {
  const AppErrorBoundary({super.key, required this.child});

  final Component child;

  @override
  State<StatefulComponent> createState() => _AppErrorBoundaryState();
}

class _AppErrorBoundaryState extends State<AppErrorBoundary> {
  Object? _error;
  StackTrace? _stackTrace;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    if (_error != null) {
      yield StartupErrorView(error: _error, stackTrace: _stackTrace);
      return;
    }

    try {
      yield component.widget.child;
    } catch (error, stackTrace) {
      _error = error;
      _stackTrace = stackTrace;
      yield StartupErrorView(error: error, stackTrace: stackTrace);
    }
  }
}

class StartupErrorView extends StatelessComponent {
  const StartupErrorView({super.key, this.error, this.stackTrace});

  final Object? error;
  final StackTrace? stackTrace;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      h2([text('Something went wrong')]),
      p([text(AppStrings.dontWorry)]),
      if (error != null) pre([text('$error')]),
      if (stackTrace != null) pre([text('$stackTrace')]),
    ], classes: 'landing-view shell-card');
  }
}
