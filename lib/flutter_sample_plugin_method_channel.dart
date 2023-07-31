import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_sample_plugin_platform_interface.dart';

/// An implementation of [FlutterSamplePluginPlatform] that uses method channels.
class MethodChannelFlutterSamplePlugin extends FlutterSamplePluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_sample_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
