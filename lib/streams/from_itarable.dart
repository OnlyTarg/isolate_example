import 'dart:async';

void main() async {
  print('🔹 Stream.fromIterable');

  final iterableStream = Stream.fromIterable([1, 2, 3]);

  await for (var value in iterableStream) {
    print('fromIterable: $value');
  }
}

// void main() async {
//   print('🔹 Stream.fromIterable');

//   const fullString = 'Привіт, мене звати Павло';
//   final chrList = fullString.split('');

//   final iterableStream = Stream.fromIterable(chrList);

//   await for (var value in iterableStream) {
//     stdout.write(value);
//     await Future.delayed(const Duration(milliseconds: 100));
//   }
// }
