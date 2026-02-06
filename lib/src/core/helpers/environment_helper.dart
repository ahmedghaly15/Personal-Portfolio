import '../utils/const_strings.dart';

/// Helper class for getting environment variables from compile-time defines.
class EnvironmentHelper {
  EnvironmentHelper._();

  static String? getEnvironmentVariable(String key) {
    switch (key) {
      case ConstStrings.supabaseUrlKey:
        final value = const String.fromEnvironment(ConstStrings.supabaseUrlKey);
        return value.isEmpty ? null : value;
      case ConstStrings.supabaseAnonKey:
        final value = const String.fromEnvironment(ConstStrings.supabaseAnonKey);
        return value.isEmpty ? null : value;
      case ConstStrings.myIdKey:
        final value = const String.fromEnvironment(ConstStrings.myIdKey);
        return value.isEmpty ? null : value;
      default:
        return null;
    }
  }

  static String requiredEnvironmentVariable(String key) {
    final value = getEnvironmentVariable(key);
    if (value == null || value.isEmpty) {
      throw StateError('Missing required compile-time define: $key');
    }
    return value;
  }
}
