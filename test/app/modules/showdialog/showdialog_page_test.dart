import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/showdialog/showdialog_page.dart';

main() {
  testWidgets('ShowdialogPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(ShowdialogPage(title: 'Showdialog')));
    final titleFinder = find.text('Showdialog');
    expect(titleFinder, findsOneWidget);
  });
}
