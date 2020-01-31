import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/boxcontroller/boxcontroller_page.dart';

main() {
  testWidgets('BoxcontrollerPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(BoxcontrollerPage(title: 'Boxcontroller')));
    final titleFinder = find.text('Boxcontroller');
    expect(titleFinder, findsOneWidget);
  });
}
