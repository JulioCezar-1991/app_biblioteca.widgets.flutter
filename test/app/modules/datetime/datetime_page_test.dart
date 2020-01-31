import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/datetime/datetime_page.dart';

main() {
  testWidgets('DatetimePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(DatetimePage(title: 'Datetime')));
    final titleFinder = find.text('Datetime');
    expect(titleFinder, findsOneWidget);
  });
}
