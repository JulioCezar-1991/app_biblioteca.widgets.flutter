import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/buttons/button_page.dart';

main() {
  testWidgets('ButtonPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ButtonPage(title: 'Button')));
    final titleFinder = find.text('Button');
    expect(titleFinder, findsOneWidget);
  });
}
