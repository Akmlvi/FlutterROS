import 'package:flutter/material.dart';

/// Урок 3: StatelessWidget - виджет без изменяемого состояния.
class Lesson3Stateless extends StatelessWidget {
  const Lesson3Stateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 3. Stateless')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InfoCard(title: 'Первый виджет', text: 'Создан как StatelessWidget'),
            InfoCard(title: 'Второй виджет', text: 'Тот же класс, другие параметры'),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String text;
  const InfoCard({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}
