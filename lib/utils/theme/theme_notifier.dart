import 'package:flutter/material.dart';

/// theme notifier
class ThemeNotifier with ChangeNotifier {
  /// default constructor
  ThemeNotifier(this._themeData);

  ThemeData _themeData;

  /// getter
  ThemeData getTheme() => _themeData;

  /// setter
  void setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}
