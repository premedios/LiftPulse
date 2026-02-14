import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/navigation_provider.dart';
import 'app_router.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigationState = ref.watch(navigationProvider);

    return BottomNavigationBar(
      currentIndex: navigationState.selectedIndex,
      onTap: (index) {
        ref.read(navigationProvider.notifier).setIndex(index);
      },
      items: AppRouter.getBottomNavItems(),
      type: BottomNavigationBarType.fixed,
    );
  }
}
