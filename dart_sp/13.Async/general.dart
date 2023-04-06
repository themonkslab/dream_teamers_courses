void main() async {
  print('🚀 The process has started!');
  bool firstOrder;
  bool secondOrder;
  bool thirdOrder;
  try {
    firstOrder = await askForTable(5);
    printResult(firstOrder);
    secondOrder = await askForTable(4);
    printResult(secondOrder);
    thirdOrder = await askForTable(3);
    printResult(thirdOrder);
  } catch (e) {
    print('Error: ${e}');
  } finally {
    print(' The process has ended! 🥳');
  }
}

void printResult(bool value) {
  if (value == true) {
    print('You have a table! 🥳');
  } else {
    print('You don\'t have a table! 😋');
  }
}

Future<bool> askForTable(int diners) {
  return Future.delayed(Duration(seconds: 3), () {
    // throw Exception('No tables available');
    if (diners > 4) {
      return false;
    } else {
      return true;
    }
  });
}
