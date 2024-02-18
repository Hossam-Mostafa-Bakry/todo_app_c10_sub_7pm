import 'package:flutter/material.dart';
import 'package:todo_c10_sun_10pm/features/tasks/pages/tasks_view.dart';

import 'settings/pages/settings_view.dart';

class SettingsProvider extends ChangeNotifier {

  List<Widget> screens = [
    TasksView(),
    SettingsView(),
  ];

  int currentIndex = 0;

  changeIndex(int index) {

    currentIndex = index;
    notifyListeners();

  }

  ThemeMode currentThemeMode = ThemeMode.light;

  changeTheme(ThemeMode newThemeMode) {
    if (currentThemeMode == newThemeMode) return;

    currentThemeMode = newThemeMode;
    notifyListeners();

  }
  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}