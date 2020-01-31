import 'package:mobx/mobx.dart';

part 'reordenable_controller.g.dart';

class ReordenableController = _ReordenableBase with _$ReordenableController;

abstract class _ReordenableBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
