void main() {
  final list1 = [1, 2, 3];
  final list2 = List.from(list1);

  list2.add(4);

  print(list1); // affiche: [1, 2, 3]
  print(list2); // affiche: [1, 2, 3, 4]

  List<int> numbers = [25, 42, 79, 12];

  //tri décroissant
  numbers.sort((a, b) => b.compareTo(a));
  print('tri décroissant : $numbers');

  //multiplier chaque élément par 2
  List<int> multiplied = numbers.map((e) => e * 2).toList();
  print('multiplié par 2 : $multiplied');

  //garder que les nombres pairs
  List<int> pairs = multiplied.where((e) => e.isEven).toList();
  print('nombres pairs : $pairs');
}
