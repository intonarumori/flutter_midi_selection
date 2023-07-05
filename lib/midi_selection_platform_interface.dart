import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'midi_selection_method_channel.dart';

abstract class MidiSelectionPlatform extends PlatformInterface {
  /// Constructs a MidiSelectionPlatform.
  MidiSelectionPlatform() : super(token: _token);

  static final Object _token = Object();

  static MidiSelectionPlatform _instance = MethodChannelMidiSelection();

  /// The default instance of [MidiSelectionPlatform] to use.
  ///
  /// Defaults to [MethodChannelMidiSelection].
  static MidiSelectionPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MidiSelectionPlatform] when
  /// they register themselves.
  static set instance(MidiSelectionPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> presentMidiSelection() {
    throw UnimplementedError('presentMidiSelection() has not been implemented.');
  }
}
