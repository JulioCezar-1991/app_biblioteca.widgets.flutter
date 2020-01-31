import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/reordenable/reordenable_page.dart';

main() {
  testWidgets('ReordenablePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ReordenablePage(title: 'Reordenable')));
    final titleFinder = find.text('Reordenable');
    expect(titleFinder, findsOneWidget);
  });
}
