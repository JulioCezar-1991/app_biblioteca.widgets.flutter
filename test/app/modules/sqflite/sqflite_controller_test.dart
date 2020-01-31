import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/sqflite/sqflite_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/sqflite/sqflite_module.dart';

void main() {
  initModule(SqfliteModule());
  SqfliteController sqflite;

  setUp(() {
    sqflite = SqfliteModule.to.get<SqfliteController>();
  });

  group('SqfliteController Test', () {
    test("First Test", () {
      expect(sqflite, isInstanceOf<SqfliteController>());
    });

    test("Set Value", () {
      expect(sqflite.value, equals(0));
      sqflite.increment();
      expect(sqflite.value, equals(1));
    });
  });
}
