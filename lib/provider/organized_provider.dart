import 'package:flutter/material.dart';

class OrganizedProvider extends ChangeNotifier {
  bool gridStyle = false;

  // ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleOrgnize() {
    gridStyle = !gridStyle;
    notifyListeners();
  }
}
