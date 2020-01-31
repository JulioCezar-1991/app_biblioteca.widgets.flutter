import 'package:app_flutter_biblioteca/app/modules/audioplay/audioplay_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/audioplay/audioplay_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(AudioPlayModule());
  AudioPlayController audio;

  setUp(() {
    audio = AudioPlayModule.to.get<AudioPlayController>();
  });

  group('AudioController Test', () {
    test("First Test", () {
      expect(audio, isInstanceOf<AudioPlayController>());
    });

    test("Set Value", () {
      expect(audio.value, equals(0));
      audio.increment();
      expect(audio.value, equals(1));
    });
  });
}
