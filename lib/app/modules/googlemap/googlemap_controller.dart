import 'package:mobx/mobx.dart';

part 'googlemap_controller.g.dart';

class GooglemapController = _GooglemapBase with _$GooglemapController;

abstract class _GooglemapBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
