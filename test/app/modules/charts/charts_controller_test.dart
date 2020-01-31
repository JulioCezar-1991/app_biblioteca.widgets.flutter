import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/charts_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/charts/charts_module.dart';

void main() {
  initModule(ChartsModule());
  ChartsController charts;

  setUp(() {
    charts = ChartsModule.to.get<ChartsController>();
  });

  group('ChartsController Test', () {
    test("First Test", () {
      expect(charts, isInstanceOf<ChartsController>());
    });

    test("Set Value", () {
      expect(charts.value, equals(0));
      charts.increment();
      expect(charts.value, equals(1));
    });
  });
}