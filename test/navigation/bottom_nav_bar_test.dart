import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liftpulse/navigation/bottom_nav_bar.dart';
import 'package:liftpulse/providers/navigation_provider.dart';

void main() {
  testWidgets('BottomNavBar displays all items', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(home: Scaffold(bottomNavigationBar: BottomNavBar())),
      ),
    );

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Workouts'), findsOneWidget);
    expect(find.text('Trends'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });

  testWidgets('BottomNavBar changes index on tap', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            bottomNavigationBar: Consumer(
              builder: (context, ref, child) {
                final state = ref.watch(navigationProvider);
                return Column(
                  children: [
                    Text('Index: ${state.selectedIndex}'),
                    const BottomNavBar(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );

    expect(find.text('Index: 0'), findsOneWidget);

    await tester.tap(find.text('Workouts'));
    await tester.pump();

    expect(find.text('Index: 1'), findsOneWidget);
  });
}
