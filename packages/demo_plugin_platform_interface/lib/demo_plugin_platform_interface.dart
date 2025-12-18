import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// {@template demo_plugin_platform}
/// The interface that implementations of demo_plugin must implement.
///
/// Platform implementations should extend this class
/// rather than implement it as `DemoPlugin`.
///
/// Extending this class (using `extends`) ensures that the subclass will get
/// the default implementation, while platform implementations that `implements`
/// this interface will be broken by newly added [DemoPluginPlatform] methods.
/// {@endtemplate}
abstract class DemoPluginPlatform extends PlatformInterface {
  /// {@macro demo_plugin_platform}
  DemoPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DemoPluginPlatform? _instance;

  /// The default instance of [DemoPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDemoPlugin].
  static DemoPluginPlatform get instance => _instance!;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [DemoPluginPlatform] when they register themselves.
  static set instance(DemoPluginPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  /// Return the current platform name.
  void callback();
}
