# Solution 2

```dart
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
      } else if (playerMove == Move.Spock && computerMove == Move.Rock) {
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
```
