import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_app_template/src/features/home/presentation/home_screen.dart';

void main() {
  group("Home screen", () {
    testWidgets("is a StatelessWidget", (tester) async {
      expect(const HomeScreen(), isA<StatelessWidget>());
    });
  });
}
