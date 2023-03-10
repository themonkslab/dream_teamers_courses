# Solution 1

```dart
import 'dart:io';

void main() {
  const coffePrice = 1.0;
  const tePrice = 0.8;
  const pastryPrice = 1.2;
  int coffeQuantity = 0;
  int teQuantity = 0;
  int pastryQuantity = 0;
  double totalSales = 0;
  
  while (true) {
    print("Welcome to the Coffee Shop! \nWhat will you order? ('c' for coffe, 't' for te, 'p' for pastry, 'q' to exit)");
    final userInput = stdin.readLineSync();
    if (userInput == 'q') {
      break;
    } else if (userInput == 'c' || userInput == 't' || userInput == 'p') {
      print('Great! How many? (by defaul the minimun quantity is one)');
      var quantity = int.parse (stdin.readLineSync()?? '1');
      double price = 0;
      if (userInput == 'c') {
        price = coffePrice;
        coffeQuantity += quantity;  
      } else if (userInput == 't') {
        price = tePrice;
        teQuantity += quantity;
      } else if (userInput == 'p') {
        price = pastryPrice;
        pastryQuantity += quantity;
      }
      final orderCost  = price * quantity;
      print('Ok! the cost is \$${orderCost.toStringAsFixed(2)} \nThanks for buying!');
      totalSales += orderCost;
    } else {
      print('Invalid input. Tray again');
    }
    print('-------------------');       
  }
  print('''\nFINAL REPORT
      
Quantity of coffee sold: $coffeQuantity
Quantity of tea sold: $teQuantity
Quantity of pastry sold: $pastryQuantity
    
Total sales for: \$$totalSales
     
''');
}
```
