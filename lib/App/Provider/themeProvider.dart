import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  changeThemeMode(ThemeMode newThemeMode) {
    themeMode = newThemeMode;
    saveThemeMode();
    notifyListeners();
  }

  List<ThemeMode> get themes => [
    ThemeMode.light,
    ThemeMode.dark,
    ThemeMode.system,
  ];

  saveThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('themeMode', themeMode.name);
  }

  loadThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveTheme = prefs.getString('themeMode');
    if (saveTheme != null) {
      themeMode = ThemeMode.values.firstWhere((mode) => mode.name == saveTheme);
    }
  }
}
