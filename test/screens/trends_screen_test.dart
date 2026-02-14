import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liftpulse/screens/trends/trends_screen.dart';

void main() {
  testWidgets('TrendsScreen displays app bar with Trends title', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: TrendsScreen()));

    expect(find.text('Trends'), findsOneWidget);

    final appBarFinder = find.byType(AppBar);
    expect(appBarFinder, findsOneWidget);

    final titleFinder = find.descendant(
      of: appBarFinder,
      matching: find.text('Trends'),
    );
    expect(titleFinder, findsOneWidget);
  });
}
