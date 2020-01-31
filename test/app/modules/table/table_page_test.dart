import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/table/table_page.dart';

main() {
  testWidgets('TablePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TablePage(title: 'Table')));
    final titleFinder = find.text('Table');
    expect(titleFinder, findsOneWidget);
  });
}
