
import 'flutter_sample_plugin_platform_interface.dart';

class FlutterSamplePlugin {
  Future<String?> getPlatformVersion() {
    return FlutterSamplePluginPlatform.instance.getPlatformVersion();
  }
}
