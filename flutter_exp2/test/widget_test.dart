import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_exp2/main.dart' as app;

void main() {
  testWidgets('Shop displays the product grid', (WidgetTester tester) async {
    app.main();
    await tester.pump();

    expect(find.text('My Shop'), findsOneWidget);
    expect(find.text('👟 Shoes'), findsOneWidget);
    expect(find.text('₹999'), findsWidgets);
    expect(find.byType(GridView), findsOneWidget);
  });
}
