import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/text/text_page.dart';

main() {
  testWidgets('TextPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TextPage(title: 'Text')));
    final titleFinder = find.text('Text');
    expect(titleFinder, findsOneWidget);
  });
}
