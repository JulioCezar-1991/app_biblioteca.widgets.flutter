import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/firebase/firebase_page.dart';

main() {
  testWidgets('FirebasePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(FirebasePage(title: 'Firebase')));
    final titleFinder = find.text('Firebase');
    expect(titleFinder, findsOneWidget);
  });
}
