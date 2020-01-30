import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/acessibility/acessibility_page.dart';

main() {
  testWidgets('AcessibilityPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(AcessibilityPage(title: 'Acessibility')));
    final titleFinder = find.text('Acessibility');
    expect(titleFinder, findsOneWidget);
  });
}
