import 'package:demo_plugin_platform_interface/demo_plugin_platform_interface.dart';

DemoPluginPlatform get _platform => DemoPluginPlatform.instance;

/// Returns the name of the current platform.
void demoPluginCallback() {
  _platform.callback();
}
