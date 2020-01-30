import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/showdialog/showdialog_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/showdialog/showdialog_module.dart';

void main() {
  initModule(ShowdialogModule());
  ShowdialogController showdialog;

  setUp(() {
    showdialog = ShowdialogModule.to.get<ShowdialogController>();
  });

  group('ShowdialogController Test', () {
    test("First Test", () {
      expect(showdialog, isInstanceOf<ShowdialogController>());
    });

    test("Set Value", () {
      expect(showdialog.value, equals(0));
      showdialog.increment();
      expect(showdialog.value, equals(1));
    });
  });
}
