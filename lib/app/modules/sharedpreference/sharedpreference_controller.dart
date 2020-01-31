import 'package:mobx/mobx.dart';

part 'sharedpreference_controller.g.dart';

class SharedpreferenceController = _SharedpreferenceBase
    with _$SharedpreferenceController;

abstract class _SharedpreferenceBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
