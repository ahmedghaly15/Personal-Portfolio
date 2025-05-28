import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Helper class for getting environment variables from either .env file or dart-define
class EnvironmentHelper {
  EnvironmentHelper._();

  /// Get environment variable from either .env file or dart-define
  static String? getEnvironmentVariable(String key) {
    // First try to get from dart-define (for web builds)
    String dartDefineValue = '';
    
    // Check for each specific key since String.fromEnvironment requires compile-time constants
    switch (key) {
      case 'SUPABASE_URL':
        dartDefineValue = const String.fromEnvironment('SUPABASE_URL');
        break;
      case 'SUPABASE_ANON_KEY':
        dartDefineValue = const String.fromEnvironment('SUPABASE_ANON_KEY');
        break;
      case 'MY_ID':
        dartDefineValue = const String.fromEnvironment('MY_ID');
        break;
    }
    
    if (dartDefineValue.isNotEmpty) {
      return dartDefineValue;
    }
    
    // Fallback to .env file (for local development)
    return dotenv.env[key];
  }
}
