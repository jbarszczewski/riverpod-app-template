import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_app_template/src/app.dart';

void main() {
  group('MyApp', () {
    testWidgets('is a ConsumerWidget', (tester) async {
      expect(const MyApp(), isA<ConsumerWidget>());
    });
  });
}
