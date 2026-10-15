import 'package:flutter/material.dart';

/// Урок 10: Stack, Positioned, IndexedStack и AnimatedContainer.
class Lesson10Stack extends StatefulWidget {
  const Lesson10Stack({super.key});

  @override
  State<Lesson10Stack> createState() => _Lesson10StackState();
}

class _Lesson10StackState extends State<Lesson10Stack> {
  int _index = 0;
  bool _big = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 10. Stack')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Stack + Positioned'),
            const SizedBox(height: 8),
            SizedBox(
              width: 240,
              height: 200,
              child: Stack(
                children: [
                  Container(color: Colors.indigo.shade100),
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Container(width: 100, height: 100, color: Colors.red),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(width: 100, height: 100, color: Colors.blue),
                  ),
                  const Positioned(
                    left: 0,
                    right: 0,
                    top: 85,
                    child: Center(child: Text('Поверх всех')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Text('IndexedStack'),
            const SizedBox(height: 8),
            SizedBox(
              height: 80,
              child: IndexedStack(
                index: _index,
                children: [
                  Container(color: Colors.green, alignment: Alignment.center, child: const Text('Слой 0')),
                  Container(color: Colors.orange, alignment: Alignment.center, child: const Text('Слой 1')),
                  Container(color: Colors.purple, alignment: Alignment.center, child: const Text('Слой 2')),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: [
                for (var i = 0; i < 3; i++)
                  ElevatedButton(
                    onPressed: () => setState(() => _index = i),
                    child: Text('Слой $i'),
                  ),
              ],
            ),
            const SizedBox(height: 24),
            const Text('AnimatedContainer'),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => setState(() => _big = !_big),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                width: _big ? 220 : 100,
                height: _big ? 120 : 60,
                decoration: BoxDecoration(
                  color: _big ? Colors.teal : Colors.pink,
                  borderRadius: BorderRadius.circular(_big ? 30 : 8),
                ),
                alignment: Alignment.center,
                child: const Text('Нажми', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
