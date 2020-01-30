import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/cameragallery/cameragallery_page.dart';

main() {
  testWidgets('CameragalleryPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(CameragalleryPage(title: 'Cameragallery')));
    final titleFinder = find.text('Cameragallery');
    expect(titleFinder, findsOneWidget);
  });
}
