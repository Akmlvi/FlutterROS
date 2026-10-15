import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Урок 11: шрифты через пакет google_fonts (нужен интернет при первом показе).
class Lesson11Fonts extends StatelessWidget {
  const Lesson11Fonts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 11. Шрифты')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Roboto (шрифт всего приложения)',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16),
          Text('Lobster: Привет, Flutter!',
              style: GoogleFonts.lobster(fontSize: 28)),
          const SizedBox(height: 16),
          Text('Pacifico: Привет, Flutter!',
              style: GoogleFonts.pacifico(fontSize: 28)),
          const SizedBox(height: 16),
          Text('Oswald: Привет, Flutter!',
              style: GoogleFonts.oswald(fontSize: 28, fontWeight: FontWeight.w700)),
          const SizedBox(height: 16),
          Text('Fira Code: void main() {}',
              style: GoogleFonts.firaCode(fontSize: 20)),
        ],
      ),
    );
  }
}
