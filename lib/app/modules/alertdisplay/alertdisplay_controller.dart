import 'package:mobx/mobx.dart';

part 'alertdisplay_controller.g.dart';

class AlertDisplayController = _AlertDisplayBase with _$AlertDisplayController;

abstract class _AlertDisplayBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
