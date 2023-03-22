// Exercise 1

/* 
import 'dart:io';
void main () {
//Create map to store words and counts
  Map <String, int> wordMap =  {};
//Create list to store inputs
  List <String> wordCountPair = [];

  while (true) {
    print('\nEnter a word and its review count, separated by a comma (e.g. "apple,3"). Enter "done" to finish.');
    String userInput = stdin.readLineSync().toString().toLowerCase();
    if (userInput == 'done') {
      break;      
    } else {
      if (userInput.contains(',') && !userInput.contains(' ')) {
        wordCountPair.add(userInput);
        continue;
      } else {
        print('Invalid input. Try again');
      }
    }
  }
  for (var wordCount in wordCountPair) {
    final wordCountList = wordCount.toString().split(',');
    wordMap['${wordCountList.first}'] = int.tryParse(wordCountList.last)?? 0; //In this case if after the comma there's not a number by default it will be 0
  }
  while (true) {
    stdout.write('\nEnter "l" to see the your learning path. Enter "u" to update an specific count. Enter "q" to quit the program');
    String userInput = stdin.readLineSync().toString().toLowerCase();

    if (userInput == 'l') {
      int totalWords = 0;
      for (var count in wordMap.values) {
       totalWords += count;
      }
      print('The total number of reviews for all words is $totalWords');
      for (var word in wordMap.entries) {
        print('${word.key}: ${word.value} whit a ${(word.value/totalWords*100).toStringAsPrecision(3)} %'); 
      }
    } else if (userInput == 'u') {
      print('These are the words you entered. Choose one of them or a new one:');
      for (var word in wordMap.entries) {
        print(word.key);
      }
      stdout.write('Which one do you want to update? ');
      final wordToUpdate = stdin.readLineSync().toString().toLowerCase();
      stdout.write('Enter the new count: ');
      wordMap['$wordToUpdate'] = int.tryParse(stdin.readLineSync().toString())?? 0; // In this case if after the comma there's not a number by default it will be 0   
    } else if (userInput == 'q') {
      print('Good bye!');
      break;
    } else {
      print('Invalid input. Try again');
    }
  }
}
*/

// Exercise 2
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



// Exercise 3

/* 
import 'dart:io';
import 'dart:math';

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
*/