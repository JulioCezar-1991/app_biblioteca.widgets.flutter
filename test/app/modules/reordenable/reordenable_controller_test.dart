import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/reordenable/reordenable_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/reordenable/reordenable_module.dart';

void main() {
  initModule(ReordenableModule());
  ReordenableController reordenable;

  setUp(() {
    reordenable = ReordenableModule.to.get<ReordenableController>();
  });

  group('ReordenableController Test', () {
    test("First Test", () {
      expect(reordenable, isInstanceOf<ReordenableController>());
    });

    test("Set Value", () {
      expect(reordenable.value, equals(0));
      reordenable.increment();
      expect(reordenable.value, equals(1));
    });
  });
}
