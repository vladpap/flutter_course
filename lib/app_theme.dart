import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

    return ThemeData(
      colorScheme: colorScheme,

      appBarTheme:  AppBarTheme(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        centerTitle: true,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(8),
          ),
        ),
      ),

      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 57, color: colorScheme.onSurface),
        displayMedium: TextStyle(fontSize: 45, color: colorScheme.onSurface),
        displaySmall: TextStyle(fontSize: 36, color: colorScheme.onSurface),
        headlineLarge: TextStyle(fontSize: 32, color: colorScheme.onSurface),
        headlineMedium: TextStyle(fontSize: 28, color: colorScheme.onSurface),
        headlineSmall: TextStyle(fontSize: 24, color: colorScheme.onSurface),
        titleLarge: TextStyle(fontSize: 22, color: colorScheme.onSurface),
        titleMedium: TextStyle(fontSize: 16, color: colorScheme.onSurface),
        titleSmall: TextStyle(fontSize: 14, color: colorScheme.onSurface),
        bodyLarge: TextStyle(fontSize: 16, color: colorScheme.onSurface),
        bodyMedium: TextStyle(fontSize: 14, color: colorScheme.onSurface),
        bodySmall: TextStyle(fontSize: 12, color: colorScheme.onSurface),
        labelLarge: TextStyle(fontSize: 14, color: colorScheme.onSurface),
        labelMedium: TextStyle(fontSize: 12, color: colorScheme.onSurface),
        labelSmall: TextStyle(fontSize: 11, color: colorScheme.onSurface),
      ),
    );
  }
}