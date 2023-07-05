import Cocoa
import FlutterMacOS
import CoreAudioKit

public class MidiSelectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "midi_selection", binaryMessenger: registrar.messenger)
    let instance = MidiSelectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    case "presentMidiSelection":
      let midiWindowController = CABTLEMIDIWindowController()
      midiWindowController.showWindow(self)
      break;
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
