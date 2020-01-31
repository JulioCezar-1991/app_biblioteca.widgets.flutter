import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/flare/flare_page.dart';

main() {
  testWidgets('FlarePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(FlarePage(title: 'Flare')));
    final titleFinder = find.text('Flare');
    expect(titleFinder, findsOneWidget);
  });
}
