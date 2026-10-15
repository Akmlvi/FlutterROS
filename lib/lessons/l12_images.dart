import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Урок 12: виджет Image (конструкторы) и SVG через flutter_svg.
/// Для Image.asset положите файл в assets/ и пропишите его в pubspec.yaml:
///   flutter:
///     assets:
///       - assets/photo.png
class Lesson12Images extends StatelessWidget {
  const Lesson12Images({super.key});

  static const _svg = '''
<svg width="120" height="120" viewBox="0 0 120 120" xmlns="http://www.w3.org/2000/svg">
  <circle cx="60" cy="60" r="50" fill="#3F51B5"/>
  <polygon points="60,25 72,52 100,55 78,74 85,100 60,86 35,100 42,74 20,55 48,52" fill="#FFC107"/>
</svg>
''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 12. Картинки')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Image.network'),
          const SizedBox(height: 8),
          Image.network(
            'https://flutter.dev/assets/flutter-lockup-c13da9c9c3b6ae2b4c3fdb1a1f4d3d7c.png',
            height: 80,
            errorBuilder: (_, __, ___) =>
                const Text('Не удалось загрузить (нет интернета)'),
          ),
          const SizedBox(height: 24),
          const Text('SVG (flutter_svg)'),
          const SizedBox(height: 8),
          Center(child: SvgPicture.string(_svg, width: 120, height: 120)),
          const SizedBox(height: 24),
          const Text('Иконки Material'),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.image, size: 40),
              Icon(Icons.photo_camera, size: 40),
              Icon(Icons.collections, size: 40),
            ],
          ),
        ],
      ),
    );
  }
}
