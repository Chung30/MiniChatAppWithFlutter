import "package:flutter/material.dart";
import "package:mini_chat/themes/dark_mode.dart";
import "package:mini_chat/themes/light_mode.dart";

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if(_themeData == lightMode) {
      themData = darkMode;
    } else {
      themData = lightMode;
    }
  }
}