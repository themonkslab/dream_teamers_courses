// Exercise 1

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

  while (true) {
//Allow the user to select a coffee from the list
    stdout.write('''\nChoose a coffee from the list to see the amount of that coffee currently in stock across all locations (1 to 4 for coffee - 's' to skip): ''');
    final coffeeInput = stdin.readLineSync().toString().toLowerCase();
    
//Display the amount of that coffee currently in stock across all locations and ask to update
    if (coffeeInput == 's') {
      print('You chose to skip');
      break;
    } else if (coffeeInput == '1' || coffeeInput == '2' || coffeeInput == '3' || coffeeInput == '4') {
      final coffeeChoise = coffeeTypes[int.parse(coffeeInput)-1];
      print('You chose ${coffeeChoise.toUpperCase()}\n');
      var totalCoffeeChoise = 0; 
        for (var location in inventory.entries) {
        print('${location.key}: ${location.value['$coffeeChoise']}');
        totalCoffeeChoise += (location.value['$coffeeChoise'])?? 0;
      }
      print('------------');
      print('The total amount of ${coffeeChoise.toUpperCase()} between all locations is $totalCoffeeChoise');
    } else {
      print('Invalid input. Try again');
    }
  }
}

    final updateAmounts = true;
      while (true) {
        print('Do you want to update the amounts of coffee at each location?');
      updateAmounts = stdin.readLineSync().toString()