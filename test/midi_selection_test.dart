// import 'package:flutter_test/flutter_test.dart';
// import 'package:midi_selection/midi_selection.dart';
// import 'package:midi_selection/midi_selection_platform_interface.dart';
// import 'package:midi_selection/midi_selection_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockMidiSelectionPlatform
//     with MockPlatformInterfaceMixin
//     implements MidiSelectionPlatform {

//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final MidiSelectionPlatform initialPlatform = MidiSelectionPlatform.instance;

//   test('$MethodChannelMidiSelection is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelMidiSelection>());
//   });

//   test('getPlatformVersion', () async {
//     MidiSelection midiSelectionPlugin = MidiSelection();
//     MockMidiSelectionPlatform fakePlatform = MockMidiSelectionPlatform();
//     MidiSelectionPlatform.instance = fakePlatform;

//     expect(await midiSelectionPlugin.getPlatformVersion(), '42');
//   });
// }
