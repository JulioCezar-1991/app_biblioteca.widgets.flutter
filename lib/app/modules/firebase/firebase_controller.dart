import 'package:mobx/mobx.dart';

part 'firebase_controller.g.dart';

class FirebaseController = _FirebaseBase with _$FirebaseController;

abstract class _FirebaseBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
