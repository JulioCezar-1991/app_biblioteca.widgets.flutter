import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/sharedpreference/sharedpreference_page.dart';

main() {
  testWidgets('SharedpreferencePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(SharedpreferencePage(title: 'Sharedpreference')));
    final titleFinder = find.text('Sharedpreference');
    expect(titleFinder, findsOneWidget);
  });
}
