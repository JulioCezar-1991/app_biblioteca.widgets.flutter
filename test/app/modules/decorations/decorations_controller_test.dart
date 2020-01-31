import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/decorations/decorations_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/decorations/decorations_module.dart';

void main() {
  initModule(DecorationsModule());
  DecorationsController decorations;

  setUp(() {
    decorations = DecorationsModule.to.get<DecorationsController>();
  });

  group('DecorationsController Test', () {
    test("First Test", () {
      expect(decorations, isInstanceOf<DecorationsController>());
    });

    test("Set Value", () {
      expect(decorations.value, equals(0));
      decorations.increment();
      expect(decorations.value, equals(1));
    });
  });
}
