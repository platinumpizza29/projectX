// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: Colors.lightBlue,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black));
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.deepPurpleAccent.shade400,
      backgroundColor: Colors.deepPurple.shade900,
      scaffoldBackgroundColor: Colors.deepPurple.shade900,
      iconTheme: IconThemeData(color: Colors.white),
    );
  }
}
