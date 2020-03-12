import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:app_flutter_biblioteca/app/modules/firebase/firebase_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/firebase/firebase_module.dart';

void main() {
  initModule(FirebaseModule());
  FirebaseController firebase;

  setUp(() {
    firebase = FirebaseModule.to.get<FirebaseController>();
  });

  group('FirebaseController Test', () {
    test("First Test", () {
      expect(firebase, isInstanceOf<FirebaseController>());
    });

    test("Set Value", () {
      expect(firebase.value, equals(0));
      firebase.increment();
      expect(firebase.value, equals(1));
    });
  });
}
