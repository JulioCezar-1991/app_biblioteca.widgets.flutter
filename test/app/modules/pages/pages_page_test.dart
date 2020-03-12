import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/pages/pages_page.dart';

main() {
  testWidgets('PagesPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PagesPage(title: 'Pages')));
    final titleFinder = find.text('Pages');
    expect(titleFinder, findsOneWidget);
  });
}
