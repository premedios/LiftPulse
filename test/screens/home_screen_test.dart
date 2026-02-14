import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liftpulse/screens/home/home_screen.dart';

void main() {
  testWidgets('HomeScreen displays centered Home text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    expect(find.text('Home'), findsOneWidget);

    final centerFinder = find.byType(Center);
    expect(centerFinder, findsOneWidget);

    final textFinder = find.descendant(
      of: centerFinder,
      matching: find.text('Home'),
    );
    expect(textFinder, findsOneWidget);
  });
}
