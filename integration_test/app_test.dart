import 'package:riverpod_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Home Screen', () {
    testWidgets('renders correct AppBar test', (tester) async {
      await tester.pumpApp();
      expect(find.text('Home Screen'), findsOneWidget);
    });
  });
}

extension on WidgetTester {
  Future<void> pumpApp() async {
    app.main();
    await pumpAndSettle();
  }
}
