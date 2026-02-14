import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liftpulse/screens/workouts/workouts_screen.dart';

void main() {
  testWidgets('WorkoutsScreen displays app bar with Workouts title', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: WorkoutsScreen()));

    expect(find.text('Workouts'), findsOneWidget);

    final appBarFinder = find.byType(AppBar);
    expect(appBarFinder, findsOneWidget);

    final titleFinder = find.descendant(
      of: appBarFinder,
      matching: find.text('Workouts'),
    );
    expect(titleFinder, findsOneWidget);
  });
}
