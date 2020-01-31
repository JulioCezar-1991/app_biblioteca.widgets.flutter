import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:app_flutter_biblioteca/app/modules/animated/animated_page.dart';

main() {
  testWidgets('AnimatedPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(AnimatedPage(title: 'Animated')));
    final titleFinder = find.text('Animated');
    expect(titleFinder, findsOneWidget);
  });
}
