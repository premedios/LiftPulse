import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/workouts/workouts_screen.dart';
import '../screens/trends/trends_screen.dart';
import '../screens/profile/profile_screen.dart';

class AppRouter {
  static const List<String> _tabTitles = [
    'Home',
    'Workouts',
    'Trends',
    'Profile',
  ];

  static List<Widget> getScreens() {
    return [
      const HomeScreen(),
      const WorkoutsScreen(),
      const TrendsScreen(),
      const ProfileScreen(),
    ];
  }

  static List<BottomNavigationBarItem> getBottomNavItems() {
    return [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(
        icon: Icon(Icons.fitness_center),
        label: 'Workouts',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.trending_up),
        label: 'Trends',
      ),
      const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
    ];
  }

  static String getTabTitle(int index) {
    return _tabTitles[index];
  }
}
