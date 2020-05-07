import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter_biblioteca/app/modules/googlemap/googlemap_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/googlemap/googlemap_module.dart';

void main() {
  initModule(GooglemapModule());
  GooglemapController googlemap;

  setUp(() {
    googlemap = GooglemapModule.to.get<GooglemapController>();
  });

  group('GooglemapController Test', () {
    test("First Test", () {
      expect(googlemap, isInstanceOf<GooglemapController>());
    });

    test("Set Value", () {
      expect(googlemap.value, equals(0));
      googlemap.increment();
      expect(googlemap.value, equals(1));
    });
  });
}
