# Solution 1

```dart
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
```
