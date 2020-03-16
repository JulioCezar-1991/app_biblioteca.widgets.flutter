import 'package:mobx/mobx.dart';

part 'navigation_controller.g.dart';

class NavigationController = _NavigationBase with _$NavigationController;

abstract class _NavigationBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
