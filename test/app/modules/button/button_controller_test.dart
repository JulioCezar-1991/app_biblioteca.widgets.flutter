import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/buttons/button_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/buttons/button_module.dart';

void main() {
  initModule(ButtonModule());
  ButtonController button;

  setUp(() {
    button = ButtonModule.to.get<ButtonController>();
  });

  group('ButtonController Test', () {
    test("First Test", () {
      expect(button, isInstanceOf<ButtonController>());
    });

    test("Set Value", () {
      expect(button.value, equals(0));
      button.increment();
      expect(button.value, equals(1));
    });
  });
}
