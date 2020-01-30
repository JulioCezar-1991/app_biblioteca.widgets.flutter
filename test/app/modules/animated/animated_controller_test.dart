import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/animated/animated_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/animated/animated_module.dart';

void main() {
  initModule(AnimatedModule());
  AnimatedController animated;

  setUp(() {
    animated = AnimatedModule.to.get<AnimatedController>();
  });

  group('AnimatedController Test', () {
    test("First Test", () {
      expect(animated, isInstanceOf<AnimatedController>());
    });

    test("Set Value", () {
      expect(animated.value, equals(0));
      animated.increment();
      expect(animated.value, equals(1));
    });
  });
}
