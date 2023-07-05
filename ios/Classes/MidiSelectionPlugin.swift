import Flutter
import UIKit
import CoreAudioKit

public class MidiSelectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "midi_selection", binaryMessenger: registrar.messenger())
    let instance = MidiSelectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "presentMidiSelection":
      let viewController = CABTMIDICentralViewController()
      let barButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(close))
      viewController.navigationItem.rightBarButtonItem = barButtonItem
      let navigationController = UINavigationController(rootViewController: viewController)
      UIApplication.shared.keyWindow?.rootViewController?.present(navigationController, animated: true, completion: nil)
      break
    default:
      result(FlutterMethodNotImplemented)
    }
  }
    
  @objc func close() {
    UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true)
  }
}
