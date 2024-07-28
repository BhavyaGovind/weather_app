import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeClass{
  static ThemeData themeData = ThemeData(
    useMaterial3: true,

    // Define the default brightness and colors.
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 43, 42, 44),
      // ···
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
      // ···
      titleLarge: GoogleFonts.oswald(
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.merriweather(),
      displaySmall: GoogleFonts.pacifico(
        fontSize: 20,
        fontWeight: FontWeight.normal
      ),
    ),
  );
}