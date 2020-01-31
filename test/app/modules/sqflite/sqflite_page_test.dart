import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/sqflite/sqflite_page.dart';

main() {
  testWidgets('SqflitePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SqflitePage(title: 'Sqflite')));
    final titleFinder = find.text('Sqflite');
    expect(titleFinder, findsOneWidget);
  });
}
