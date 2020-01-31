import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/text/text_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/text/text_module.dart';

void main() {
  initModule(TextModule());
  TextController text;

  setUp(() {
    text = TextModule.to.get<TextController>();
  });

  group('TextController Test', () {
    test("First Test", () {
      expect(text, isInstanceOf<TextController>());
    });

    test("Set Value", () {
      expect(text.value, equals(0));
      text.increment();
      expect(text.value, equals(1));
    });
  });
}
