import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'navigation/app_router.dart';
import 'navigation/bottom_nav_bar.dart';
import 'providers/navigation_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationProvider);

    return MaterialApp(
      title: 'LiftPulse',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: IndexedStack(
          index: navigationState.selectedIndex,
          children: AppRouter.getScreens(),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
