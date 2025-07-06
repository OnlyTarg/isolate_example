// ignore_for_file: avoid_print

void main() {
  print('----------------Початок програми----------------\n');

  final list = List.generate(5000, (index) => index);

  print('list[0]: ${list[0]}');
  print('list[1]: ${list[1]}');
  print('list[2]: ${list[2]}');

  for (var i = 0; i < 5; i++) {
    print('from loop: ${list[i]}');
  }
  print('list.lastOrNull: ${list.lastOrNull}');

  print('----------------Початок програми----------------');
}
