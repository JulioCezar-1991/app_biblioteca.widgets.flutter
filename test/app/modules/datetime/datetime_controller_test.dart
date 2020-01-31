import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/datetime/datetime_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/datetime/datetime_module.dart';

void main() {
  initModule(DatetimeModule());
  DatetimeController datetime;

  setUp(() {
    datetime = DatetimeModule.to.get<DatetimeController>();
  });

  group('DatetimeController Test', () {
    test("First Test", () {
      expect(datetime, isInstanceOf<DatetimeController>());
    });

    test("Set Value", () {
      expect(datetime.value, equals(0));
      datetime.increment();
      expect(datetime.value, equals(1));
    });
  });
}
