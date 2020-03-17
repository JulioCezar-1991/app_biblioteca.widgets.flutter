import 'package:app_flutter_biblioteca/app/modules/navigations/navigation_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('NavigationPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(NavigationPage(title: 'Navigation')));
    final titleFinder = find.text('Navigation');
    expect(titleFinder, findsOneWidget);
  });
}
