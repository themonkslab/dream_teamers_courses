# Solution 2

```dart
import 'dart:io';

void main() {
  List<String> itemsList = ['bread', 'milk', 'eggs', 'flour', 'sugar'];
  List<int> quantitiesList = [10, 5, 12, 8, 15];
  List<double> pricesList = [1.50, 2.00, 0.25, 1.00, 0.75];

//Create a map that associates each item with its quantity and price as a list
  Map <String, List <dynamic>> inventory = {};
  int i = 0;
  for (var item in itemsList) {
    inventory['$item'] = [quantitiesList[i], pricesList[i]];
    i++;
  }

//Create an order
  while (true) {
    stdout.write('What will you order (bread, milk, eggs, flour, or sugar) - Enter "q" to quit: ');
    final itemOrder = stdin.readLineSync().toString().toLowerCase();
    if (itemsList.contains(itemOrder)) {      
      while (true) {
        stdout.write('How many will you order: ');
        final quantityOder = int.tryParse(stdin.readLineSync().toString())?? 0; //if not a valid input by default it will be 0
        if (quantityOder <= inventory['$itemOrder']!.first) {
          final orderCost = inventory['$itemOrder']!.last*quantityOder;
          print('The order cost is \$$orderCost');
          inventory['$itemOrder']!.first -= quantityOder;  
          print('The actualiced inventory is: ');
          print (inventory);
          break;
        } else {
          print('That amout is not available. The maximun is ${inventory['$itemOrder']!.first}. Try again');
        }
      }      
    } else if (itemOrder == 'q') {
      print('Good bye!');
      break;
    } else {
      print('Invalid input. Try again');
    }
  }
}

```
