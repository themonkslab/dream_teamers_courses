// void main() {
//   group('Given a group of diners', () {
//     test('When there are more than 4 diners, Then askForTable returns false',
//         () {
//       expectLater(askForTable(5), completion(isFalse));
//     });

//     test(
//         'When there are less than or equal to 4 diners, Then askForTable returns true',
//         () {
//       expectLater(askForTable(4), completion(isTrue));
//     });
//   });
// }

Future<bool> askForTable(int diners) {
  return Future.delayed(Duration(seconds: 3), () {
    if (diners > 4) {
      return false;
    } else {
      return true;
    }
  });
}

void main() {
  askForTable(5).then((value) {
    if (value == true) {
      print('You have a table! 🥳');
    } else {
      print('You don\'t have a table! 😋');
    }
    // El método catchError se ejecuta cuando se produce un error
  }).catchError((error) {
    print('Error: $error');
  }).whenComplete(() => print('The process has finished! 🤓'));
}
