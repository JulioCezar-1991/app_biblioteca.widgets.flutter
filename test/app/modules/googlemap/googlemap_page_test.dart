import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:app_flutter_biblioteca/app/modules/googlemap/googlemap_page.dart';

main() {
  testWidgets('GooglemapPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(GooglemapPage(title: 'Googlemap')));
    final titleFinder = find.text('Googlemap');
    expect(titleFinder, findsOneWidget);
  });
}
