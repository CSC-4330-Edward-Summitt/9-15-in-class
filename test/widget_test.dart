import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flooter/main.dart';

void main() {
  testWidgets('Counter supports increment, decrement, and reset', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('1'), findsNothing);
    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.exposure_zero));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });
}
