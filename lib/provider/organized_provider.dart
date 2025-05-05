import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class OrganizedProvider extends ChangeNotifier {
  bool gridStyle = false;

  OrganizedProvider() {
    _loadThemeFromHive();
  }

  void _loadThemeFromHive() async {
    final box = await Hive.openBox('organizedBox');
    gridStyle = box.get('isGrid', defaultValue: false) as bool;
    notifyListeners();
  }

  void _saveThemeToHive() async {
    final box = await Hive.openBox('organizedBox');
    await box.put('isGrid', gridStyle);
  }

  void toggleOrgnize() {
    gridStyle = !gridStyle;
    _saveThemeToHive();
    notifyListeners();
  }
}
