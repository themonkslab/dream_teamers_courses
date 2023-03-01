# Implementing the loop

We have already learned how to get _input_ from the user. Now, we need to implement the basic logic of our game: the _loop_.

We know that we need it to run indefinitely until the user enters a key to exit the game. What have we learned to do this? 💀 Try implementing an infinite loop; you can exit it using the `cmd/ctrl + c` combination. It would look like this:

```dart
import 'dart:io';

void main() {
  while(true) {
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    print(userInput); 
    // remember to use `cmd/ctrl + c` to exit the loop            
  }
}
```

Good! This is not very useful but it did serve to show you how we can __cut the execution of a program on the _command line_.__ Now let's implement the logic we want. 💀 Again, try implementing the _loop_ from the _pseudo code_ we had written:

```dart
import 'dart:io';

void main() {
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      print('Selected: $userInput');
    } else if (userInput == 'q') {
      print('I hope you enjoyed the game! 😃');
      break;
    } else {
      print('Invalid input! 😳');
    }
  }
}
```

You should see something like this:

![_Loop_ implementado](https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/5.8.1_loop_implementado.gif)
