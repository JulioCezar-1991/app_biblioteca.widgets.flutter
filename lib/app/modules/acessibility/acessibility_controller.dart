import 'package:mobx/mobx.dart';

part 'acessibility_controller.g.dart';

class AcessibilityController = _AcessibilityBase with _$AcessibilityController;

abstract class _AcessibilityBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
