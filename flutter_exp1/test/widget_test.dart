// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_exp1/main.dart' as fruit_shop;

void main() {
  testWidgets('Fruit shop displays its fruit list', (
    WidgetTester tester,
  ) async {
    fruit_shop.main();
    await tester.pump();

    expect(find.text('Fruit Shop'), findsOneWidget);
    expect(find.text('🍎 Apple'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('🍒 Cherry'), 300);
    expect(find.text('🍒 Cherry'), findsOneWidget);
  });
}
