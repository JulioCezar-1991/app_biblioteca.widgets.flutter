import 'package:app_flutter_biblioteca/app/modules/googlemap/pages/geolocator_from_address_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('GeolocatorFromAddressPage has title',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(
        GeolocatorFromAddressPage(title: 'GeolocatorFromAddress')));
    final titleFinder = find.text('GeolocatorFromAddress');
    expect(titleFinder, findsOneWidget);
  });
}
