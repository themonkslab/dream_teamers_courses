/* void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = [];
  for (var person in people) {
     peopleWithTitle.add('Dr. $person');
  }
  print( peopleWithTitle);
} */

/* void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = people.map((person)=> 'Dr. $person');
  print( peopleWithTitle);
} */

void main() {
  const list = [1, 2, 3];
  print(transform(list, (x) => x * 2));
  print(transform(list, (x) => x * 10));
  print(transform(list, (x) => x / 2)); // 👁️ a problem arises here
}

List<int> transform(List<int> list, int Function(int) operation) {
  return list.map(operation).toList();
}