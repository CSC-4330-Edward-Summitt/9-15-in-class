import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flooter/main.dart';

void main() {
  testWidgets('Counter decrements three times when minus is pressed', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);

    final minusButton = find.byIcon(Icons.remove);
    await tester.tap(minusButton);
    await tester.tap(minusButton);
    await tester.tap(minusButton);
    await tester.pump();

    expect(find.text('-3'), findsOneWidget);
  });
}
