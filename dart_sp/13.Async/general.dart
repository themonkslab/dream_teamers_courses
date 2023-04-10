import 'dart:io';

// void main() async {

//   printResult(table);
// }

void printResult(bool value) {
  if (value == true) {
    print('You have a table! 🥳');
  } else {
    print('You don\'t have a table! 😋');
  }
  print('We hope to see you soon! 🤗');
}

void main() async {
  stdout.write('Welcome to our restaurant! 🍽️\nHow many people are you? ');
  int diners = int.parse(stdin.readLineSync()!);

  try {
    bool table = await doWeHaveTable(diners);
    printResult(table);
  } catch (e) {
    print('Error: ${e}');
  }
}

Future<bool> doWeHaveTable(int diners) {
  return Future.error(Exception('Something went wrong! 😱'));
}
