import 'package:mobx/mobx.dart';

part 'datetime_controller.g.dart';

class DatetimeController = _DatetimeBase with _$DatetimeController;

abstract class _DatetimeBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
