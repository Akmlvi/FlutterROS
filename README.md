# Pro Flutter: выполненные задания

Проект по курсу «Pro Flutter уроки на русском». Автор: Камалов Амир, группа 23.314.

## Как открыть
1. Установите Flutter SDK и Android Studio или VS Code.
2. Откройте папку `pro_flutter_lessons` в IDE.
3. В терминале внутри папки выполните (один раз создаст android/ios/web/windows):
   flutter create .
4. Затем:
   flutter pub get
   flutter run

## Уроки
Главное меню (lib/main.dart) ведёт на экраны с заданиями из lib/lessons/:
3 Stateless, 4 Stateful, 5 Container, 6 Column/Row, 7 ListView, 8 GridView,
9 PageView, 10 Stack, 11 Шрифты, 12 Картинки/SVG, 13 Тема (lib/theme.dart),
14-15 Навигация и параметры.

## Бонус (уроки 16-17)
Desktop:  flutter config --enable-windows-desktop && flutter build windows
Web:      flutter build web  (хостинг Firebase + GitHub Actions настраивается в своём аккаунте)
