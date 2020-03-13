import 'package:app_flutter_biblioteca/app/modules/googlemap/pages/polygons_polylines_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('PolygonspolylinesPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(PolygonsPolylinesPage(title: 'Polygonspolylines')));
    final titleFinder = find.text('Polygonspolylines');
    expect(titleFinder, findsOneWidget);
  });
}
