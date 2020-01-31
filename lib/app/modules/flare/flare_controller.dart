import 'package:mobx/mobx.dart';

part 'flare_controller.g.dart';

class FlareController = _FlareBase with _$FlareController;

abstract class _FlareBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
