import 'package:mobx/mobx.dart';

part 'audioplay_controller.g.dart';

class AudioPlayController = _AudioPlayBase with _$AudioPlayController;

abstract class _AudioPlayBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
