import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// dark custom theme
final darkTheme = ThemeData(
  fontFamily: 'Rubik',
  primarySwatch: Colors.indigo,
  primaryColor: const Color(0xFF1F1F1F),
  scaffoldBackgroundColor: const Color(0xFF1F1F1F),
  brightness: Brightness.dark,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF1F1F1F),
    elevation: 0.0,
  ),
  backgroundColor: const Color(0xFF262626),
  accentColor: const Color(0xFF617BF3),
  iconTheme: const IconThemeData(color: Color(0xFF617BF3)),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(foregroundColor: Colors.white),
);

/// light custom theme
final lightTheme = ThemeData(
  fontFamily: 'Rubik',
  primarySwatch: Colors.indigo,
  primaryColor: const Color(0xFF617BF3),
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    elevation: 0.0,
  ),
  accentColor: const Color(0xFF617BF3),
  iconTheme: const IconThemeData(color: Color(0xFF617BF3)),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(foregroundColor: Colors.white),
);
