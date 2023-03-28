//Exercise 1

/* 
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
*/

//Exercise 2

/* 
import 'dart:io';
import 'dart:math';

enum Move { Rock, Paper, Scissors, Lizard, Spock } 

void main() {
  final rng = Random();

  while (true) {
    print('-----------------------------------');
    print('Rock, Paper, Scissors, Lizard, Spock? (r/p/s/l/sp): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's' || userInput == 'l' || userInput == 'sp') {
      var playerMove;
      if (userInput == 'r') {
        playerMove = Move.Rock;
      } else if (userInput == 'p') {
        playerMove = Move.Paper;
      } else if (userInput == 's') {
        playerMove = Move.Scissors;
      } else if (userInput == 'l') {
        playerMove = Move.Lizard;
      } else {
        playerMove = Move.Spock;
      }
      final randomNumber = rng.nextInt(5);
      final computerMove = Move.values[randomNumber];
      print('You played: ${playerMove.toString().replaceAll('Move.', '')}');
      print('Computer played: ${computerMove.toString().replaceAll('Move.', '')}');
      print('-----------------------------------');
      if (playerMove == computerMove) {
        print('It\'s a draw 😄');
      } else if (playerMove == Move.Scissors && computerMove == Move.Paper) {
        print('Scissors cut Paper \nYou win!!! 🥳');
      } else if (playerMove == Move.Paper && computerMove == Move.Rock) {
        print('Paper covers Rock \nYou win!!! 🥳');
      } else if (playerMove == Move.Rock && computerMove == Move.Lizard) {
        print('Rock crushes Lizard \nYou win!!! 🥳');
      } else if (playerMove == Move.Lizard && computerMove == Move.Spock) {
        print('Lizard poisons Spock \nYou win!!! 🥳');
      } else if (playerMove == Move.Spock && computerMove == Move.Scissors) {
        print('Spock smashes Scissors \nYou win!!! 🥳');
      } else if (playerMove == Move.Scissors && computerMove == Move.Lizard) {
        print('Scissors decapitates Lizard \nYou win!!! 🥳');
      } else if (playerMove == Move.Lizard && computerMove == Move.Paper) {
        print('Lizard eats Paper \nYou win!!! 🥳');
      } else if (playerMove == Move.Paper && computerMove == Move.Spock) {
        print('Paper disproves Spock \nYou win!!! 🥳');
      } else if (playerMove == Move.Spock	&& computerMove == Move.Rock) {
        print('Spock vaporizes Rock \nYou win!!! 🥳');
      } else if (playerMove == Move.Rock && computerMove == Move.Scissors) {
        print('Rock crushes Scissors \nYou win!!! 🥳');
      } else {
        print('You lose 😭');
      }        
    } else if (userInput == 'q') {
      print('-----------------------------------');
      print('I hope you enjoyed the game! 😃');
      print('-----------------------------------');
      break;
    } else {
      print('-----------------------------------');
      print('Invalid input! 😳');
    }
  }
}
*/

//Exercise 3

/* 
import 'dart:io';
import 'dart:math';

void main () {
  print('''\nYou are a detective and you need to find the stolen diamond.
you will have a random number of attempts between 1 and 5 to find the safe where it is stored. 
Additionally every two unsuccessful attempts the diamond will change from one safe to another''');
  print('\n----------------------');
  
  while (true) {
    bool diamondFound = false;
    var safeNumber = Random().nextInt(5);
    var attemptsQuantity = Random().nextInt(5) + 1;
    print('\nYou have $attemptsQuantity attempts to find the diamond');
    for (var i = 1; i <= attemptsQuantity; i++) {
      stdout.write('Choose a safe: ');
      var safeChoose = int.tryParse(stdin.readLineSync().toString());
      while (safeChoose == null || (safeChoose <1 || safeChoose >5)) {
        print('Invalid input. Enter a number between 1 and 5');
        stdout.write('\nChoose a safe: ');
        safeChoose = int.tryParse(stdin.readLineSync().toString());        
      }
      if (safeChoose == safeNumber) {
        print('\nGood job detective! You found the diamond in safe $safeChoose');
        diamondFound = true;
        break;
      } else {
        if ((attemptsQuantity - 1) == 0) {
          print('\nYou could not find the diamond');
        } else {
          print('\nThe diamond is not there. You have ${attemptsQuantity-i} attempts left');
        }
      }
      if (i == 2) {
        safeNumber = Random().nextInt(5);
      }
    }            
    if (diamondFound == true) {
      print('----------------------\nYou win!\n');
    } else {
      print('----------------------\nYou loose\n');
    }
    stdout.write("Press 'q' to quit or any to play again: ");
    final playAgain = stdin.readLineSync();
    if ( playAgain == 'q') {
      break;
    } else {
      continue;
    }
  }
}
*/