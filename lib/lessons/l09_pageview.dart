import 'package:flutter/material.dart';

/// Урок 9: PageView и PageController с анимированным переходом.
class Lesson9PageView extends StatefulWidget {
  const Lesson9PageView({super.key});

  @override
  State<Lesson9PageView> createState() => _Lesson9PageViewState();
}

class _Lesson9PageViewState extends State<Lesson9PageView> {
  final _controller = PageController();
  int _page = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _go(int page) => _controller.animateToPage(
        page,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.indigo, Colors.teal, Colors.orange];
    return Scaffold(
      appBar: AppBar(title: const Text('Урок 9. PageView')),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (i) => setState(() => _page = i),
              children: [
                for (var i = 0; i < colors.length; i++)
                  Container(
                    color: colors[i],
                    alignment: Alignment.center,
                    child: Text('Страница ${i + 1}',
                        style: const TextStyle(color: Colors.white, fontSize: 32)),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _page > 0 ? () => _go(_page - 1) : null,
                  child: const Text('Назад'),
                ),
                Text('${_page + 1} / ${colors.length}'),
                ElevatedButton(
                  onPressed: _page < colors.length - 1 ? () => _go(_page + 1) : null,
                  child: const Text('Вперёд'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
