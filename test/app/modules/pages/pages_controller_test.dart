import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/pages/pages_controller.dart';
import 'package:app_flutter_biblioteca/app/app_module.dart';

void main() {
  initModule(AppModule());
  PagesController pages;

  setUp(() {
    pages = AppModule.to.get<PagesController>();
  });

  group('PagesController Test', () {
    test("First Test", () {
      expect(pages, isInstanceOf<PagesController>());
    });

    test("Set Value", () {
      expect(pages.value, equals(0));
      pages.increment();
      expect(pages.value, equals(1));
    });
  });
}
