import 'package:flutter/material.dart';

import 'lessons/l03_stateless.dart';
import 'lessons/l04_stateful.dart';
import 'lessons/l05_container.dart';
import 'lessons/l06_column_row.dart';
import 'lessons/l07_listview.dart';
import 'lessons/l08_gridview.dart';
import 'lessons/l09_pageview.dart';
import 'lessons/l10_stack.dart';
import 'lessons/l11_fonts.dart';
import 'lessons/l12_images.dart';
import 'lessons/l13_theme.dart';
import 'lessons/l14_navigation.dart';
import 'theme.dart';

// Урок 1-2: точка входа и структура приложения (main -> runApp -> дерево виджетов)
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Flutter',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      // Урок 14: именованные маршруты
      initialRoute: '/',
      routes: {
        '/': (_) => const MenuPage(),
        '/navigation': (_) => const NavigationPage(),
        '/second': (_) => const SecondPage(),
        '/args': (_) => const ArgsPage(),
      },
      // Урок 15: параметры внутри самого маршрута, например /user/42
      onGenerateRoute: (settings) {
        final name = settings.name ?? '';
        if (name.startsWith('/user/')) {
          final id = name.substring('/user/'.length);
          return MaterialPageRoute(
            builder: (_) => UserPage(userId: id),
            settings: settings,
          );
        }
        return null;
      },
    );
  }
}

class _Lesson {
  final String title;
  final String subtitle;
  final WidgetBuilder builder;
  const _Lesson(this.title, this.subtitle, this.builder);
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lessons = <_Lesson>[
      _Lesson('Урок 3', 'Stateless виджеты', (_) => const Lesson3Stateless()),
      _Lesson('Урок 4', 'Stateful виджеты', (_) => const Lesson4Stateful()),
      _Lesson('Урок 5', 'Container и BoxDecoration', (_) => const Lesson5Container()),
      _Lesson('Урок 6', 'Column и Row', (_) => const Lesson6ColumnRow()),
      _Lesson('Урок 7', 'ListView', (_) => const Lesson7ListView()),
      _Lesson('Урок 8', 'GridView', (_) => const Lesson8GridView()),
      _Lesson('Урок 9', 'PageView', (_) => const Lesson9PageView()),
      _Lesson('Урок 10', 'Stack, Positioned, IndexedStack', (_) => const Lesson10Stack()),
      _Lesson('Урок 11', 'Шрифты (google_fonts)', (_) => const Lesson11Fonts()),
      _Lesson('Урок 12', 'Картинки и SVG', (_) => const Lesson12Images()),
      _Lesson('Урок 13', 'Собственная тема', (_) => const Lesson13Theme()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Pro Flutter: задания')),
      body: ListView(
        children: [
          for (final l in lessons)
            ListTile(
              leading: const Icon(Icons.play_circle_outline),
              title: Text(l.title),
              subtitle: Text(l.subtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: l.builder),
              ),
            ),
          ListTile(
            leading: const Icon(Icons.alt_route),
            title: const Text('Уроки 14-15'),
            subtitle: const Text('Навигация и передача параметров'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.pushNamed(context, '/navigation'),
          ),
        ],
      ),
    );
  }
}
