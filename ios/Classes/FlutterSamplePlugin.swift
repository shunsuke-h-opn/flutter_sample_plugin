import Flutter
import UIKit

public class FlutterSamplePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_sample_plugin", binaryMessenger: registrar.messenger())
    let instance = FlutterSamplePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
    print("Hiratsuka Plugin Test")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
      print("Hiratsuka Plugin Test")
  }
}
