import 'package:flutter_modular/flutter_modular_test.dart';    
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/googlemap-c_controller.dart';
import 'package:app_flutter_biblioteca/app/app_module.dart';

void main() {

  initModule(AppModule());
  Googlemap-cController googlemap-c;
  
  setUp(() {
      googlemap-c = AppModule.to.get<Googlemap-cController>();
  });

  group('Googlemap-cController Test', () {
    test("First Test", () {
      expect(googlemap-c, isInstanceOf<Googlemap-cController>());
    });

    test("Set Value", () {
      expect(googlemap-c.value, equals(0));
      googlemap-c.increment();
      expect(googlemap-c.value, equals(1));
    });
  });

}
  