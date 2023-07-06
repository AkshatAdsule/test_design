import 'package:flutter/material.dart';

class BrandConstants {
  static const Color awhcBlue = Color(0xFF0033A0);
  static const Color awhcRed = Color(0xFFFF0000);

  static ThemeData awhcTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: awhcBlue,
      secondary: awhcRed,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
    ),
    fontFamily: "Graphik",
    brightness: Brightness.light,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: "Lola",
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: TextStyle(
        fontFamily: "Lola",
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: TextStyle(
        fontFamily: "Lola",
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Graphik",
        fontSize: 24,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Graphik",
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontFamily: "Graphik",
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: TextStyle(
        fontFamily: "Lola",
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontFamily: "Lola",
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontFamily: "Lola",
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
