import 'package:demo_plugin_platform_interface/demo_plugin_platform_interface.dart';

DemoPluginPlatform get _platform => DemoPluginPlatform.instance;

/// Returns a friendly greeting.
String getPlatformGreeting() {
  return _platform.callback();
}
