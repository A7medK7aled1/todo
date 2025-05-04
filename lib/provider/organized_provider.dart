import 'package:flutter/material.dart';

class OrganizedProvider extends ChangeNotifier {
  bool gridStyle = false;


  void toggleOrgnize() {
    gridStyle = !gridStyle;
    notifyListeners();
  }
}
