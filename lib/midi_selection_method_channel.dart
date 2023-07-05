import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'midi_selection_platform_interface.dart';

/// An implementation of [MidiSelectionPlatform] that uses method channels.
class MethodChannelMidiSelection extends MidiSelectionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('midi_selection');

  @override
  Future<String?> getPlatformVersion() async {
    if (!Platform.isIOS && !Platform.isMacOS) {
      return Future.error('midi_selection only supports iOS and MacOS.');
    }
    return await methodChannel.invokeMethod<String>('getPlatformVersion');
  }

  @override
  Future<void> presentMidiSelection() async {
    if (!Platform.isIOS && !Platform.isMacOS) {
      return Future.error('midi_selection only supports iOS and MacOS.');
    }
    await methodChannel.invokeMethod('presentMidiSelection');
  }
}
