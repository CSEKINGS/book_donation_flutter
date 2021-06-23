import 'package:flutter/material.dart';

/// dark custom theme
final darkTheme = ThemeData(
  primarySwatch: Colors.indigo,
  fontFamily: 'Product Sans',
  primaryColor: const Color(0xFF1F1F1F),
  scaffoldBackgroundColor: const Color(0xFF1F1F1F),
  brightness: Brightness.dark,
  backgroundColor: const Color(0xFF262626),
  accentColor: const Color(0xFF617BF3),
  iconTheme: const IconThemeData(color: Color(0xFF617BF3)),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(foregroundColor: Colors.white),
);

/// light custom theme
final lightTheme = ThemeData(
  primarySwatch: Colors.indigo,
  primaryColor: const Color(0xFF617BF3),
  fontFamily: 'Product Sans',
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  accentColor: const Color(0xFF617BF3),
  iconTheme: const IconThemeData(color: Color(0xFF617BF3)),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(foregroundColor: Colors.white),
);
