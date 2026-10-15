import 'package:flutter/material.dart';

/// Урок 7: ListView - обычный, builder (бесконечный) и separated.
class Lesson7ListView extends StatelessWidget {
  const Lesson7ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Урок 7. ListView'),
          bottom: const TabBar(tabs: [
            Tab(text: 'ListView'),
            Tab(text: 'builder'),
            Tab(text: 'separated'),
          ]),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: const [
                ListTile(leading: Icon(Icons.home), title: Text('Главная')),
                ListTile(leading: Icon(Icons.search), title: Text('Поиск')),
                ListTile(leading: Icon(Icons.settings), title: Text('Настройки')),
              ],
            ),
            // Без itemCount список бесконечный
            ListView.builder(
              itemBuilder: (_, i) => ListTile(title: Text('Бесконечный элемент $i')),
            ),
            ListView.separated(
              itemCount: 30,
              itemBuilder: (_, i) => ListTile(title: Text('Элемент $i')),
              separatorBuilder: (_, __) => const Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
