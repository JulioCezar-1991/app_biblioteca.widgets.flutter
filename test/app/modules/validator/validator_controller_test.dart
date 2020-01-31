import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/validator/validator_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/validator/validator_module.dart';

void main() {
  initModule(ValidatorModule());
  ValidatorController validator;

  setUp(() {
    validator = ValidatorModule.to.get<ValidatorController>();
  });

  group('ValidatorController Test', () {
    test("First Test", () {
      expect(validator, isInstanceOf<ValidatorController>());
    });

    test("Set Value", () {
      expect(validator.value, equals(0));
      validator.increment();
      expect(validator.value, equals(1));
    });
  });
}
