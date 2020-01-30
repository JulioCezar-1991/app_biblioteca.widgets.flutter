import 'package:mobx/mobx.dart';

part 'card_controller.g.dart';

class CardController = _CardBase with _$CardController;

abstract class _CardBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
