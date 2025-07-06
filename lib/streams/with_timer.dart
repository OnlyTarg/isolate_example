void main() async {
  print('\n🔹 Stream.periodic');

  final periodicStream =
      Stream.periodic(const Duration(milliseconds: 500), (index) {
    return 'index: $index';
  }).take(10);

  await for (var value in periodicStream) {
    print('periodic: $value');
  }
}
