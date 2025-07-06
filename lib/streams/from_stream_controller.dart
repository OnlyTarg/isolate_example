import 'dart:async';

void main() async {
  print('\n🔹 StreamController');

  final controller = StreamController<int>();

  controller.stream.listen((value) => print('controller: $value'));

  controller.add(10);
  controller.add(20);

  await Future.delayed(const Duration(milliseconds: 1000));

  controller.add(30);

  await Future.delayed(const Duration(milliseconds: 2000));

  await controller.close();
}
