import 'package:flutter/material.dart';

class DarkTheme {
  late ThemeData _themeData;
  DarkTheme() {
    _themeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        onSecondary: Colors.white,
        shadow: const Color.fromARGB(255, 79, 67, 94),
        seedColor: Colors.deepPurple,
        background: const Color.fromARGB(255, 59, 0, 71),
        secondary: const Color.fromARGB(255, 59, 0, 71),
      ),
      useMaterial3: true,
    );
  }
  get getThemeData => _themeData;
}
