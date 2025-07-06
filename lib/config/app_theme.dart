import 'package:flutter/material.dart';

// ----------------------------
// Theme Class
// ----------------------------
class AppTheme {
  final bool useResponsive;

  const AppTheme({required this.useResponsive});

  // Predefined themes
  static final appLightTheme = AppTheme(useResponsive: true).light;
  static final appDarkTheme = AppTheme(useResponsive: true).dark;

  // Light Theme
  ThemeData get light => ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.blueGrey,
      secondary: Colors.indigoAccent,
      surface: Color(0xFF363232),
      onSurface: Colors.white60,
    ),
    textTheme: _textTheme,
  );

  // Dark Theme
  ThemeData get dark => ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.white60,
      secondary: Colors.deepPurple,
      surface: Colors.black45,
      onSurface: Colors.white38,
    ),
    textTheme: _textTheme,
  );

  // Custom TextTheme
  static TextTheme get _textTheme {
    return const TextTheme(
      bodyMedium: TextStyle(color: Colors.deepOrange),
      titleLarge: TextStyle(fontSize: 20),
    );
  }
}
