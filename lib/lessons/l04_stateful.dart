import 'package:flutter/material.dart';

/// Урок 4: StatefulWidget - виджет с состоянием и setState().
class Lesson4Stateful extends StatefulWidget {
  const Lesson4Stateful({super.key});

  @override
  State<Lesson4Stateful> createState() => _Lesson4StatefulState();
}

class _Lesson4StatefulState extends State<Lesson4Stateful> {
  int _count = 0;
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 4. Stateful')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Счётчик: $_count',
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _count--),
                  child: const Text('-1'),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () => setState(() => _count++),
                  child: const Text('+1'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            IconButton(
              iconSize: 48,
              color: Colors.red,
              icon: Icon(_liked ? Icons.favorite : Icons.favorite_border),
              onPressed: () => setState(() => _liked = !_liked),
            ),
          ],
        ),
      ),
    );
  }
}
