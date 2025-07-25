/// A simple Service Locator (Dependency Injection container)
/// implemented as a **singleton**, so only one instance exists.
class ServiceLocator {
  /// The single, static instance of this class.
  /// Created once when the class is first loaded.
  static final ServiceLocator _instance = ServiceLocator._internal();

  /// The public factory constructor.
  /// Always returns the **same instance** (`_instance`),
  /// no matter how many times you call `ServiceLocator()`.
  factory ServiceLocator() => _instance;

  /// A private named constructor.
  /// Used internally to create the singleton instance.
  /// Cannot be called from outside this class.
  ServiceLocator._internal();

  /// ================================
  /// Internal storage for registrations
  /// ================================
  final _singletons = <Type, dynamic>{}; // Eager singletons
  final _lazySingletonBuilders =
      <Type, dynamic Function()>{}; // Lazy singletons
  final _factories = <Type, dynamic Function()>{}; // Factories

  /// Register a **singleton instance** (eagerly created).
  /// Example: `locator.registerSingleton<Logger>(Logger());`
  void registerSingleton<T>(T instance) {
    _singletons[T] = instance;
  }

  /// Register a **lazy singleton** (created when first requested).
  /// Example: `locator.registerLazySingleton<Database>(() => Database());`
  void registerLazySingleton<T>(T Function() builder) {
    _lazySingletonBuilders[T] = builder;
  }

  /// Register a **factory** (new instance every time).
  /// Example: `locator.registerFactory<ApiService>(() => ApiService());`
  void registerFactory<T>(T Function() factory) {
    _factories[T] = factory;
  }

  /// Resolve an instance of type [T].
  /// Checks singletons → lazy singletons → factories (in that order).
  T get<T>() {
    // 1. Return already created singleton
    if (_singletons.containsKey(T)) {
      return _singletons[T] as T;
    }

    // 2. Create and cache a lazy singleton on first request
    if (_lazySingletonBuilders.containsKey(T)) {
      final instance = _lazySingletonBuilders[T]!();
      _singletons[T] = instance; // store it as a singleton
      _lazySingletonBuilders.remove(T); // remove builder (no longer needed)
      return instance as T;
    }

    // 3. Create a new factory instance every time
    if (_factories.containsKey(T)) {
      return _factories[T]!() as T;
    }

    // 4. If not found, throw error
    throw Exception("Service of type $T not registered");
  }
}
