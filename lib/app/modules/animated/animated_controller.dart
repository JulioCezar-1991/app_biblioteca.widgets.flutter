import 'package:mobx/mobx.dart';

part 'animated_controller.g.dart';

class AnimatedController = _AnimatedBase with _$AnimatedController;

abstract class _AnimatedBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
