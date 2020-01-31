import 'package:app_flutter_biblioteca/app/modules/alertdisplay/alertdisplay_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('AlertDisplayPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(AlertDisplayPage(title: 'AlertDisplay')));
    final titleFinder = find.text('AlertDisplay');
    expect(titleFinder, findsOneWidget);
  });
}
