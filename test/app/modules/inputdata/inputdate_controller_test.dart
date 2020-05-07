import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/inputdata_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/inputdata/inputdata_module.dart';

void main() {
  initModule(InputdataModule());
  InputdataController inputdate;

  setUp(() {
    inputdate = InputdataModule.to.get<InputdataController>();
  });

  group('InputdateController Test', () {
    test("First Test", () {
      expect(inputdate, isInstanceOf<InputdataController>());
    });

    test("Set Value", () {});
  });
}
