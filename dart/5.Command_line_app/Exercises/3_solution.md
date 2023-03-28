# Solution 3

```dart
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
```
