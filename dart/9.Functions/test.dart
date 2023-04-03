/* void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = [];
  for (var person in people) {
     peopleWithTitle.add('Dr. $person');
  }
  print( peopleWithTitle);
} */

void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = people.map((person)=> 'Dr. $person');
  print( peopleWithTitle);
}