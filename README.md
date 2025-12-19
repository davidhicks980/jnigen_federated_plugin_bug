Running `packages/demo_plugin/example` throws immediately.

Deleting the `dartPluginClass` line from
`packages/demo_plugin_android/pubspec.yaml` should allow the example to run
normally, but the plugin will print "Hello Friend" (the default platform
interface behavior) instead of "Howdy Partner".

You may need to run `flutter clean` from the example directory after making this
change.

```yaml
flutter:
  plugin:
    implements: demo_plugin
    platforms:
      android:
        dartPluginClass: DemoPluginAndroid # Delete this line to fix the example
        ffiPlugin: true
```

Manually calling `DemoPluginAndroid.registerWith()` in the example's `main()` function will ensure that the correct platform implementation is used, and the plugin will print "Howdy Partner" as expected.

```dart
void main() {
  DemoPluginAndroid.registerWith();
  runApp(MyApp());
}
```
