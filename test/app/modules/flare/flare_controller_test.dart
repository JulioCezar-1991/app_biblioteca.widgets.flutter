import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/flare/flare_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/flare/flare_module.dart';

void main() {
  initModule(FlareModule());
  FlareController flare;

  setUp(() {
    flare = FlareModule.to.get<FlareController>();
  });

  group('FlareController Test', () {
    test("First Test", () {
      expect(flare, isInstanceOf<FlareController>());
    });

    test("Set Value", () {
      expect(flare.value, equals(0));
      flare.increment();
      expect(flare.value, equals(1));
    });
  });
}
