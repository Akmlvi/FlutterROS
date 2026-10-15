import 'package:flutter/material.dart';

/// Урок 13: использование собственной темы (см. lib/theme.dart).
class Lesson13Theme extends StatelessWidget {
  const Lesson13Theme({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 13. Тема')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('headlineMedium', style: t.textTheme.headlineMedium),
          Text('titleLarge', style: t.textTheme.titleLarge),
          Text('bodyLarge: обычный текст темы', style: t.textTheme.bodyLarge),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star),
              Icon(Icons.favorite),
              Icon(Icons.settings),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: const Text('Кнопка из темы')),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            color: t.colorScheme.primaryContainer,
            child: Text('Цвет из colorScheme.primaryContainer',
                style: TextStyle(color: t.colorScheme.onPrimaryContainer)),
          ),
        ],
      ),
    );
  }
}
