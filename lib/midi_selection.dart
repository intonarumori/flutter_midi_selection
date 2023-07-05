import 'midi_selection_platform_interface.dart';

class MidiSelection {
  Future<String?> getPlatformVersion() {
    return MidiSelectionPlatform.instance.getPlatformVersion();
  }

  Future<void> presentMidiSelection() {
    return MidiSelectionPlatform.instance.presentMidiSelection();
  }
}
