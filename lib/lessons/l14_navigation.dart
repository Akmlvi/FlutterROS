import 'package:flutter/material.dart';

/// Уроки 14-15: Navigator (push, pop, pushNamed) и передача параметров.
class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Уроки 14-15. Навигация')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              // Анонимный маршрут + параметр через конструктор
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DetailPage(message: 'Передано через конструктор'),
                ),
              ),
              child: const Text('push (конструктор)'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              // Именованный маршрут
              onPressed: () => Navigator.pushNamed(context, '/second'),
              child: const Text('pushNamed /second'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              // Параметр через arguments
              onPressed: () => Navigator.pushNamed(
                context,
                '/args',
                arguments: 'Передано через arguments',
              ),
              child: const Text('pushNamed + arguments'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              // Параметр внутри маршрута (onGenerateRoute)
              onPressed: () => Navigator.pushNamed(context, '/user/42'),
              child: const Text('pushNamed /user/42'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String message;
  const DetailPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) => _SimpleScreen(title: 'DetailPage', text: message);
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) =>
      const _SimpleScreen(title: 'SecondPage', text: 'Именованный маршрут /second');
}

class ArgsPage extends StatelessWidget {
  const ArgsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as String? ?? 'нет данных';
    return _SimpleScreen(title: 'ArgsPage', text: args);
  }
}

class UserPage extends StatelessWidget {
  final String userId;
  const UserPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) =>
      _SimpleScreen(title: 'UserPage', text: 'ID пользователя из маршрута: $userId');
}

class _SimpleScreen extends StatelessWidget {
  final String title;
  final String text;
  const _SimpleScreen({required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Назад (pop)'),
            ),
          ],
        ),
      ),
    );
  }
}
