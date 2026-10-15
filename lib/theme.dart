import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Урок 13: собственная тема приложения (ThemeData).
ThemeData buildTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
    // Урок 11: шрифт для всего приложения через google_fonts
    textTheme: GoogleFonts.robotoTextTheme(),
    appBarTheme: const AppBarTheme(centerTitle: true),
    iconTheme: const IconThemeData(color: Colors.indigo, size: 28),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
