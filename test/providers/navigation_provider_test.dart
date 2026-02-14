import 'package:flutter_test/flutter_test.dart';
import 'package:liftpulse/providers/navigation_provider.dart';

void main() {
  group('NavigationNotifier', () {
    test('initial state is 0', () {
      final notifier = NavigationNotifier();
      expect(notifier.state.selectedIndex, 0);
    });

    test('setIndex updates selectedIndex', () {
      final notifier = NavigationNotifier();
      notifier.setIndex(2);
      expect(notifier.state.selectedIndex, 2);
    });

    test('copyWith creates new state', () {
      const state = NavigationState(selectedIndex: 1);
      final newState = state.copyWith(selectedIndex: 3);
      expect(newState.selectedIndex, 3);
      expect(state.selectedIndex, 1);
    });
  });
}
