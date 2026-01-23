void method(int a, [int? b, int? c]) {
  print('a=$a, b=$b, c=$c');
}

String foo({required String name, int number = 0, bool toUpperCase = false}) =>
    '${(toUpperCase ? name.toUpperCase() : name)} $number';
