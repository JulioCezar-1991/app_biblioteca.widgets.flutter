import 'package:app_flutter_biblioteca/app/modules/audioplay/audioplay_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('AudioPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(AudioPlayPage(title: 'Audio')));
    final titleFinder = find.text('Audio');
    expect(titleFinder, findsOneWidget);
  });
}
