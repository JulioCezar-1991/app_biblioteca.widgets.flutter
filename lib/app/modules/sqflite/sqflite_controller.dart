import 'package:mobx/mobx.dart';

part 'sqflite_controller.g.dart';

class SqfliteController = _SqfliteBase with _$SqfliteController;

abstract class _SqfliteBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
