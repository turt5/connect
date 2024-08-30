import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData getTheme() => ThemeData(
      fontFamily: GoogleFonts.inter().fontFamily,
      colorScheme: const ColorScheme.light(
          brightness: Brightness.dark,
          primary: Color(0xFF96543A),
          onPrimary: Colors.white,
          secondary: Color(0xFFBA7C63),
          onSecondary: Colors.white,
          tertiary: Color(0xFF171717),
          onTertiary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface:Color(0xFF171717)));
}
