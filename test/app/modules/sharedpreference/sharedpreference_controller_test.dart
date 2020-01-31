import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/sharedpreference/sharedpreference_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/sharedpreference/sharedpreference_module.dart';

void main() {
  initModule(SharedpreferenceModule());
  SharedpreferenceController sharedpreference;

  setUp(() {
    sharedpreference =
        SharedpreferenceModule.to.get<SharedpreferenceController>();
  });

  group('SharedpreferenceController Test', () {
    test("First Test", () {
      expect(sharedpreference, isInstanceOf<SharedpreferenceController>());
    });

    test("Set Value", () {
      expect(sharedpreference.value, equals(0));
      sharedpreference.increment();
      expect(sharedpreference.value, equals(1));
    });
  });
}
