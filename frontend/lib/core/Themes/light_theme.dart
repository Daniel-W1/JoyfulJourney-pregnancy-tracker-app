import 'package:flutter/material.dart';

class LightTheme {
  late ThemeData _themeData;
  LightTheme() {
    _themeData = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          onSecondary: const Color.fromARGB(255, 0, 0, 0),
          shadow: const Color.fromARGB(255, 236, 236, 236),
          seedColor: Colors.deepPurple,
          secondary: Colors.white),
      useMaterial3: true,
    );
  }
  get getThemeData => _themeData;
}
