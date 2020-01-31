import 'package:mobx/mobx.dart';

part 'inputdata_controller.g.dart';

class InputdataController = _InputdataBase with _$InputdataController;

abstract class _InputdataBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
