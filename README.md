# Flutter Isolates Example

Приклад Flutter додатку, який демонструє роботу з isolates для запобігання блокування основного потоку.

## 🎯 Що показує проект

- **Блокування основного потоку** - викликає фрізи UI
- **Використання isolates** - UI не блокується під час важких обчислень

## 🚀 Запуск

```bash
flutter pub get
flutter run
```

## 📱 Як використовувати

1. Натисніть кнопку "+" для збільшення лічильника
2. Спостерігайте за поведінкою UI під час обробки
3. Порівняйте з ізолятами та без

## 🔧 Ключовий код

### Поточна реалізація (блокуюча)
```dart
void _incrementCounter() {
  setState(() => _counter++);
  final result = _hardWork(); // Блокує основний потік
}
```

### З isolates (неблокуюча)
```dart
void _incrementCounter() async {
  setState(() => _counter++);
  final result = await Isolate.run(() => _hardWork()); // Не блокує UI
}
```




