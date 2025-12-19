import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class DemoPluginPlatform extends PlatformInterface {
  DemoPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  // _instance should be set by
  // packages/demo_plugin/example/.dart_tool/flutter_build/dart_plugin_registrant.dart.
  //
  // No default implementation should be needed.
  static DemoPluginPlatform _instance = FallbackDemoPluginPlatform();
  static DemoPluginPlatform get instance => _instance;
  static set instance(DemoPluginPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  String callback();
}

class FallbackDemoPluginPlatform implements DemoPluginPlatform {
  @override
  String callback() {
    return "Hello Friend";
  }
}
