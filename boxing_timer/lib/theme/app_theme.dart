import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get snesTheme {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFF1a1a2e),
      primaryColor: const Color(0xFF16213e),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF0f3460),
        secondary: Color(0xFFe94560),
        surface: Color(0xFF16213e),
        background: Color(0xFF1a1a2e),
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.pressStart2p(
          fontSize: 48,
          color: const Color(0xFFf5f5f5),
          fontWeight: FontWeight.bold,
        ),
        displayMedium: GoogleFonts.pressStart2p(
          fontSize: 36,
          color: const Color(0xFFf5f5f5),
          fontWeight: FontWeight.bold,
        ),
        displaySmall: GoogleFonts.pressStart2p(
          fontSize: 24,
          color: const Color(0xFFf5f5f5),
        ),
        bodyLarge: GoogleFonts.pressStart2p(
          fontSize: 16,
          color: const Color(0xFFf5f5f5),
        ),
        bodyMedium: GoogleFonts.pressStart2p(
          fontSize: 14,
          color: const Color(0xFFf5f5f5),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0f3460),
          foregroundColor: const Color(0xFFf5f5f5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(color: Color(0xFFe94560), width: 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: GoogleFonts.pressStart2p(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF16213e),
        elevation: 0,
        titleTextStyle: GoogleFonts.pressStart2p(
          fontSize: 20,
          color: const Color(0xFFf5f5f5),
        ),
      ),
    );
  }

  static const Color backgroundColor = Color(0xFF1a1a2e);
  static const Color primaryColor = Color(0xFF16213e);
  static const Color accentColor = Color(0xFFe94560);
  static const Color textColor = Color(0xFFf5f5f5);
  static const Color buttonColor = Color(0xFF0f3460);
}
