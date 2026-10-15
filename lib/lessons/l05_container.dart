import 'package:flutter/material.dart';

/// Урок 5: Container и BoxDecoration.
class Lesson5Container extends StatelessWidget {
  const Lesson5Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 5. Container')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 220,
              height: 100,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(blurRadius: 8, offset: Offset(2, 4), color: Colors.black26),
                ],
              ),
              child: const Text('Цвет + тень',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            Container(
              width: 220,
              height: 100,
              margin: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text('Градиент + рамка',
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
