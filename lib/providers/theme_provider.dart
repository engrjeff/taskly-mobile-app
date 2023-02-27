import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode currentThemeMode = ThemeMode.light;

  ThemeMode get themeMode {
    return currentThemeMode;
  }

  changeTheme(ThemeMode theme) {
    currentThemeMode = theme;
    notifyListeners();
  }
}
