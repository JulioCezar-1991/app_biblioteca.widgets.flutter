import 'package:app_flutter_biblioteca/app/modules/alertdisplay/alertdisplay_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/alertdisplay/alertdisplay_module.dart';

import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(AlertDisplayModule());
  AlertDisplayController alertDisplay;

  setUp(() {
    alertDisplay = AlertDisplayModule.to.get<AlertDisplayController>();
  });

  group('AlertDisplayController Test', () {
    test("First Test", () {
      expect(alertDisplay, isInstanceOf<AlertDisplayController>());
    });

    test("Set Value", () {
      expect(alertDisplay.value, equals(0));
      alertDisplay.increment();
      expect(alertDisplay.value, equals(1));
    });
  });
}
