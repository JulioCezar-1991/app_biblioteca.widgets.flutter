import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/decorations/decorations_page.dart';

main() {
  testWidgets('DecorationsPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(DecorationsPage(title: 'Decorations')));
    final titleFinder = find.text('Decorations');
    expect(titleFinder, findsOneWidget);
  });
}
