import 'package:mobx/mobx.dart';

part 'text_controller.g.dart';

class TextController = _TextBase with _$TextController;

abstract class _TextBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
