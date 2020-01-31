import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/table/table_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/table/table_module.dart';

void main() {
  initModule(TableModule());
  TableController table;

  setUp(() {
    table = TableModule.to.get<TableController>();
  });

  group('TableController Test', () {
    test("First Test", () {
      expect(table, isInstanceOf<TableController>());
    });

    test("Set Value", () {
      expect(table.value, equals(0));
      table.increment();
      expect(table.value, equals(1));
    });
  });
}
