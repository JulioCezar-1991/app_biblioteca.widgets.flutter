import 'package:mobx/mobx.dart';

part 'validator_controller.g.dart';

class ValidatorController = _ValidatorBase with _$ValidatorController;

abstract class _ValidatorBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
