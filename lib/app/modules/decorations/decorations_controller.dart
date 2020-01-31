import 'package:mobx/mobx.dart';

part 'decorations_controller.g.dart';

class DecorationsController = _DecorationsBase with _$DecorationsController;

abstract class _DecorationsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
