import 'package:flutter/material.dart';

/// Урок 8: GridView - count, extent, builder.
class Lesson8GridView extends StatelessWidget {
  const Lesson8GridView({super.key});

  Widget _cell(int i) => Container(
        color: Colors.primaries[i % Colors.primaries.length],
        alignment: Alignment.center,
        child: Text('$i', style: const TextStyle(color: Colors.white, fontSize: 20)),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Урок 8. GridView'),
          bottom: const TabBar(tabs: [
            Tab(text: 'count'),
            Tab(text: 'extent'),
            Tab(text: 'builder'),
          ]),
        ),
        body: TabBarView(
          children: [
            GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              padding: const EdgeInsets.all(8),
              children: List.generate(18, _cell),
            ),
            GridView.extent(
              maxCrossAxisExtent: 120,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              padding: const EdgeInsets.all(8),
              children: List.generate(18, _cell),
            ),
            GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1.5,
              ),
              itemCount: 20,
              itemBuilder: (_, i) => _cell(i),
            ),
          ],
        ),
      ),
    );
  }
}
