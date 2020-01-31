import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/cameragallery/cameragallery_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/cameragallery/cameragallery_module.dart';

void main() {
  initModule(CameragalleryModule());
  CameragalleryController cameragallery;

  setUp(() {
    cameragallery = CameragalleryModule.to.get<CameragalleryController>();
  });

  group('CameragalleryController Test', () {
    test("First Test", () {
      expect(cameragallery, isInstanceOf<CameragalleryController>());
    });

    test("Set Value", () {
      expect(cameragallery.value, equals(0));
      cameragallery.increment();
      expect(cameragallery.value, equals(1));
    });
  });
}
