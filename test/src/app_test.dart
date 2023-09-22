import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_app_template/src/app.dart';

void main() {
  group('CounterApp', () {
    testWidgets('is a StatelessWidget', (tester) async {
      expect(const MyApp(), isA<StatelessWidget>());
    });
  });
}
