import 'package:mobx/mobx.dart';

part 'datetime_controller.g.dart';

class DatetimeController = _DatetimeBase with _$DatetimeController;

abstract class _DatetimeBase with Store {
  @observable
  String time = '';

  @observable
  String date = '';
}
