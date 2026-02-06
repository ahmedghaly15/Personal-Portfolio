import 'package:jaspr/jaspr.dart';

import 'core/utils/app_strings.dart';

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
    final hasStartupError = startupError != null;

    yield document(
      title: AppStrings.appTitle,
      styles: [
        css('''
          :root {
            color-scheme: dark;
            font-family: Inter, Arial, sans-serif;
            background: #030014;
            color: #ffffff;
          }

          * {
            box-sizing: border-box;
          }

          body {
            margin: 0;
            min-height: 100vh;
            background: radial-gradient(circle at top, #170d3d 0%, #030014 50%, #02000a 100%);
          }

          main {
            width: min(960px, 100% - 48px);
            margin: 0 auto;
            padding: 64px 0;
          }

          .card {
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid rgba(255, 255, 255, 0.12);
            border-radius: 16px;
            padding: 24px;
          }

          .muted {
            color: rgba(255, 255, 255, 0.72);
          }

          pre {
            overflow: auto;
            white-space: pre-wrap;
            word-break: break-word;
          }
        '''),
      ],
      body: [
        main([
          h1([text(AppStrings.appTitle)]),
          p(classes: 'muted', [
            text('Jaspr root component initialized for portfolio rendering.')
          ]),
          AppErrorBoundary(
            child: hasStartupError
                ? StartupErrorView(
                    error: startupError,
                    stackTrace: startupStackTrace,
                  )
                : const PortfolioShell(),
          ),
        ]),
      ],
    );
  }
}

class PortfolioShell extends StatelessComponent {
  const PortfolioShell({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'card', [
      h2([text('Welcome')]),
      p([
        text(
          'This shell replaces Flutter\'s MaterialApp bootstrap and acts as '
          'the global layout entry point for Jaspr components.',
        ),
      ]),
    ]);
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
  const StartupErrorView({
    super.key,
    this.error,
    this.stackTrace,
  });

  final Object? error;
  final StackTrace? stackTrace;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: 'card', [
      h2([text('Something went wrong')]),
      p(classes: 'muted', [text(AppStrings.dontWorry)]),
      if (error != null) ...[
        h3([text('Details')]),
        pre([text('$error')]),
      ],
      if (stackTrace != null) ...[
        h3([text('Stack trace')]),
        pre([text('$stackTrace')]),
      ],
    ]);
  }
}
