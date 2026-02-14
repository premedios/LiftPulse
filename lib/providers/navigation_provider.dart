import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationState {
  final int selectedIndex;

  const NavigationState({required this.selectedIndex});

  NavigationState copyWith({int? selectedIndex}) {
    return NavigationState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}

class NavigationNotifier extends StateNotifier<NavigationState> {
  NavigationNotifier() : super(const NavigationState(selectedIndex: 0));

  void setIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}

final navigationProvider =
    StateNotifierProvider<NavigationNotifier, NavigationState>(
      (ref) => NavigationNotifier(),
    );
