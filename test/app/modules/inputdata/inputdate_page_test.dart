import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/inputdata/inputdata_page.dart';

main() {
  testWidgets('InputdatePage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(InputdataPage(title: 'Inputdate')));
    final titleFinder = find.text('Inputdate');
    expect(titleFinder, findsOneWidget);
  });
}
