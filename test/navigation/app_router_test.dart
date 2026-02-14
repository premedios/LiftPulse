import 'package:flutter_test/flutter_test.dart';
import 'package:liftpulse/navigation/app_router.dart';

void main() {
  group('AppRouter', () {
    test('getScreens returns 4 screens', () {
      final screens = AppRouter.getScreens();
      expect(screens.length, 4);
    });

    test('getBottomNavItems returns 4 items', () {
      final items = AppRouter.getBottomNavItems();
      expect(items.length, 4);
    });

    test('getTabTitle returns correct titles', () {
      expect(AppRouter.getTabTitle(0), 'Home');
      expect(AppRouter.getTabTitle(1), 'Workouts');
      expect(AppRouter.getTabTitle(2), 'Trends');
      expect(AppRouter.getTabTitle(3), 'Profile');
    });
  });
}
