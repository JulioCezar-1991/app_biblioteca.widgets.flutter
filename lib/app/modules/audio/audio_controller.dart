import 'package:mobx/mobx.dart';

part 'audio_controller.g.dart';

class AudioController = _AudioBase with _$AudioController;

abstract class _AudioBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
