import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ThemeProvider extends ChangeNotifier {
  static const String _themeKey = 'theme_mode';
  ThemeMode _mode = ThemeMode.light;
  ThemeMode get mode => _mode;
  ThemeProvider() {
    _loadThemeMode();
  }
  Future<void> _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt(_themeKey);
    if (themeIndex != null) {
      _mode = ThemeMode.values[themeIndex];
      notifyListeners();
    }
  }
  Future<void> changeMode(ThemeMode themeMode) async {
    _mode = themeMode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, themeMode.index);
    notifyListeners();
  }
}
