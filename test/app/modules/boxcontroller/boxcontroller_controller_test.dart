import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/boxcontroller_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/boxcontroller_module.dart';

void main() {
  initModule(BoxcontrollerModule());
  BoxcontrollerController boxcontroller;

  setUp(() {
    boxcontroller = BoxcontrollerModule.to.get<BoxcontrollerController>();
  });

  group('BoxcontrollerController Test', () {
    test("First Test", () {
      expect(boxcontroller, isInstanceOf<BoxcontrollerController>());
    });

    test("Set Value", () {
      expect(boxcontroller.value, equals(0));
      boxcontroller.increment();
      expect(boxcontroller.value, equals(1));
    });
  });
}
