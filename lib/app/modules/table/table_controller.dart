import 'package:mobx/mobx.dart';

part 'table_controller.g.dart';

class TableController = _TableBase with _$TableController;

abstract class _TableBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
