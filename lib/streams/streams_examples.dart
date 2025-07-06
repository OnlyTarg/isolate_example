import 'dart:async';

void main() async {
  print('\n🔹 StreamController');

  print('\n🔹 async* generator');
  await for (var value in generateStream()) {
    print('async*: $value');
  }

  print('\n✅ Готово!');
}

Stream<int> generateStream() async* {
  for (int i = 0; i < 3; i++) {
    await Future.delayed(const Duration(milliseconds: 400));
    yield i;
  }
}
