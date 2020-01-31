import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/navigation/navigation_page.dart';

main() {
  testWidgets('NavigationPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(NavigationPage(title: 'Navigation')));
    final titleFinder = find.text('Navigation');
    expect(titleFinder, findsOneWidget);
  });
}
