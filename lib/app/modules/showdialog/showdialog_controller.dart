import 'package:mobx/mobx.dart';

part 'showdialog_controller.g.dart';

class ShowdialogController = _ShowdialogBase with _$ShowdialogController;

abstract class _ShowdialogBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
