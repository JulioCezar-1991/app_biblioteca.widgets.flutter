import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/validator/validator_page.dart';

main() {
  testWidgets('ValidatorPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ValidatorPage(title: 'Validator')));
    final titleFinder = find.text('Validator');
    expect(titleFinder, findsOneWidget);
  });
}
