import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = false;
  bool isLoading = true;

  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  ThemeProvider() {
    _loadThemeFromHive();
  }

  void _loadThemeFromHive() async {
    final box = await Hive.openBox('settingsBox');
    isDarkMode = box.get('isDarkMode', defaultValue: false) as bool;
    isLoading = false;
    notifyListeners();
  }

  void _saveThemeToHive() async {
    final box = await Hive.openBox('settingsBox');
    await box.put('isDarkMode', isDarkMode);
  }

  void toggleTheme() {
    isDarkMode = !isDarkMode;
    _saveThemeToHive();
    notifyListeners();
  }
}
