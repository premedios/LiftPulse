import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liftpulse/screens/profile/profile_screen.dart';

void main() {
  testWidgets('ProfileScreen displays app bar with Profile title', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: ProfileScreen()));

    expect(find.text('Profile'), findsOneWidget);

    final appBarFinder = find.byType(AppBar);
    expect(appBarFinder, findsOneWidget);

    final titleFinder = find.descendant(
      of: appBarFinder,
      matching: find.text('Profile'),
    );
    expect(titleFinder, findsOneWidget);
  });
}
