import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/acessibility/acessibility_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/acessibility/acessibility_module.dart';

void main() {
  initModule(AcessibilityModule());
  AcessibilityController acessibility;

  setUp(() {
    acessibility = AcessibilityModule.to.get<AcessibilityController>();
  });

  group('AcessibilityController Test', () {
    test("First Test", () {
      expect(acessibility, isInstanceOf<AcessibilityController>());
    });

    test("Set Value", () {
      expect(acessibility.value, equals(0));
      acessibility.increment();
      expect(acessibility.value, equals(1));
    });
  });
}
