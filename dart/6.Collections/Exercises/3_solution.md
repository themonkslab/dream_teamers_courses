# Solution 3

```dart
import 'dart:io';

void main () {
//List of all the different types of coffee the coffee shop offers
  const coffeeTypes = ['espresso', 'cappuccino', 'latte', 'macchiato'];

//Dictionary that holds each location and the amount of each coffee they currently have in stock
  final inventory = {
    'New York': {
        'espresso': 50,
        'cappuccino': 25,
        'latte': 40,
        'macchiato': 30
    },
    'Los Angeles': {
        'espresso': 20,
        'cappuccino': 15,
        'latte': 30,
        'macchiato': 10
    },
    'Chicago': {
        'espresso': 35,
        'cappuccino': 30,
        'latte': 20,
        'macchiato': 25
    }
  };

//Displays a list of all the different types of coffee the coffee shop offers.
  print('\nWe offer the following types of coffee:');
  int i = 1;
  for (var coffee in coffeeTypes) {
    print('${i} - ${coffee.toUpperCase()}');
    i++;
  }
//Allow the user to select a coffee from the list
  while (true) {
    stdout.write('''\nChoose a coffee from the list to see the amount of that coffee currently in stock across all locations or to update it's amounts
or add a new location (1 to 4 for coffee - 'a' to add a new location - 'q' to quit): ''');
    final coffeeInput = stdin.readLineSync().toString().toLowerCase();
//Display the amount of that coffee currently in stock across all locations or update them
    if (coffeeInput == 'q') {
      print('\nGood bye!');
      break;
    } else if (coffeeInput == '1' || coffeeInput == '2' || coffeeInput == '3' || coffeeInput == '4') {
      final coffeeChoise = coffeeTypes[int.parse(coffeeInput)-1];
      while (true) {
        stdout.write("\nYou chose ${coffeeChoise.toUpperCase()}. Do you want to see the amounts or update them? ('s' to see - 'u' to update): ");
        final userChoice = stdin.readLineSync().toString().toLowerCase();
        if (userChoice == 's') {
          print('');
          var totalCoffeeChoise = 0; 
          for (var location in inventory.entries) {
            print('${location.key}: ${location.value['$coffeeChoise']}');
            totalCoffeeChoise += (location.value['$coffeeChoise'])?? 0;
          }
          print('------------');
          print('The total amount of ${coffeeChoise.toUpperCase()} between all locations is $totalCoffeeChoise');
          break;

//Allows the user to update the amount of that coffee in stock at a specific location.
        } else if (userChoice == 'u') {
          print('\nEnter the new amounts in each location (if input is not an integer by default the new amount is 0)\n');
          for (var location in inventory.entries) {
            stdout.write('${location.key}: ');
            location.value['$coffeeChoise'] = int.tryParse(stdin.readLineSync().toString())?? 0;
          }
          break;  
        } else {
          print('Invalid input. Try again');
        }
      }
//Allows the user to add a new location to the inventory system.      
    } else if (coffeeInput == 'a') {
      stdout.write('\nEnter the new location name: ');
      final newLocation = stdin.readLineSync().toString();
      inventory['$newLocation'] = Map.identity();
      print('\nEnter the amount of each coffee type (if input is not an integer by default the new amount is 0)\n');
      for (var coffe in coffeeTypes) {
        stdout.write('Amount of ${coffe.toUpperCase()}: ');
        inventory['$newLocation']?['$coffe'] = int.tryParse(stdin.readLineSync().toString())?? 0;
      } 
      print('\nThis is the update inventory:');
      for (var location in inventory.entries) {
        print (location.key);
        print(location.value);
        
      }
    } else {
      print('Invalid input. Try again');
    }
  }
}
```
