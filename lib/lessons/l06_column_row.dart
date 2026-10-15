import 'package:flutter/material.dart';

/// Урок 6: Column и Row, выравнивание, Expanded.
class Lesson6ColumnRow extends StatelessWidget {
  const Lesson6ColumnRow({super.key});

  Widget _box(Color color, String text, {double size = 60}) => Container(
        width: size,
        height: size,
        color: color,
        alignment: Alignment.center,
        child: Text(text, style: const TextStyle(color: Colors.white)),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 6. Column и Row')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('Row: spaceBetween', textAlign: TextAlign.center),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _box(Colors.red, '1'),
              _box(Colors.green, '2'),
              _box(Colors.blue, '3'),
            ],
          ),
          const Text('Row с Expanded (flex 1:2:1)', textAlign: TextAlign.center),
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.orange)),
                Expanded(flex: 2, child: Container(color: Colors.purple)),
                Expanded(flex: 1, child: Container(color: Colors.teal)),
              ],
            ),
          ),
          const Text('Row: crossAxisAlignment.end', textAlign: TextAlign.center),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _box(Colors.red, 'A', size: 40),
              _box(Colors.green, 'B', size: 80),
              _box(Colors.blue, 'C', size: 60),
            ],
          ),
        ],
      ),
    );
  }
}
