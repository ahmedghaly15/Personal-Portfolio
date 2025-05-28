import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'const_strings.dart';

/// Helper class for getting environment variables from either .env file or dart-define
class EnvironmentHelper {
  EnvironmentHelper._();

  /// Get environment variable from either .env file or dart-define
  static String? getEnvironmentVariable(String key) {
    // First try to get from dart-define (for web builds)
    String dartDefineValue = '';

    // Check for each specific key since String.fromEnvironment requires compile-time constants
    switch (key) {
      case ConstStrings.supabaseUrlKey:
        dartDefineValue =
            const String.fromEnvironment(ConstStrings.supabaseUrlKey);
        break;
      case ConstStrings.supabaseAnonKey:
        dartDefineValue =
            const String.fromEnvironment(ConstStrings.supabaseAnonKey);
        break;
      case ConstStrings.myIdKey:
        dartDefineValue = const String.fromEnvironment(ConstStrings.myIdKey);
        break;
    }

    if (dartDefineValue.isNotEmpty) {
      return dartDefineValue;
    }

    // Fallback to .env file (for local development)
    return dotenv.env[key];
  }
}
