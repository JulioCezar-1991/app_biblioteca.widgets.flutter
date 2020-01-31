import 'package:mobx/mobx.dart';

part 'charts_controller.g.dart';

class ChartsController = _ChartsBase with _$ChartsController;

abstract class _ChartsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
