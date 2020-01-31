import 'package:mobx/mobx.dart';

part 'boxcontroller_controller.g.dart';

class BoxcontrollerController = _BoxcontrollerBase
    with _$BoxcontrollerController;

abstract class _BoxcontrollerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
