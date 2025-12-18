import 'package:demo_plugin_platform_interface/demo_plugin_platform_interface.dart';

import 'demo_android_bindings.dart';

/// The Android implementation of [DemoPluginPlatform].
class DemoPluginAndroid extends DemoPluginPlatform {
  DemoPluginAndroid() : binding = DemoPlugin();

  DemoPlugin binding;

  /// Registers this class as the default instance of [DemoPluginPlatform].
  static void registerWith() {
    DemoPluginPlatform.instance = DemoPluginAndroid();
  }

  void callback() {
    binding.callback();
  }
}
