# Implementing the game logic

We have our _loop_ ready and it's time to implement the rest of the logic.

According to our _pseudo code_ and if we follow the proposed order, we should implement the _random_ movement of the computer. We know that we have three possible moves. Which _feature_ of Dart could we use to represent them?

```dart
import 'dart:io';

enum Move { rock, paper, scissors } // Note that we do not put trailing comma
                                    // as it is easier to read it on one line

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

We already have our _enum_ but before implementing the random movement of the computer, we should properly assign the user's _input_:

```dart
import 'dart:io';

enum Move { rock, paper, scissors } // Note that we do not put trailing comma
                                    // as it is easier to read it on one line

void main() {
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      var playerMove;
      if (userInput == 'r') {
        playerMove = Move.rock;
      } else if (userInput == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      print('Selected: $input');
    } else if (userInput == 'q') {
      print('I hope you enjoyed the game! 😃');
      break;
    } else {
      print('Invalid input! 😳');
    }
  }
}
```

We already created our `playerMove` variable without initialization so its initial value is null, however, __by using an _enum_ we know that we only have those three possibilities__ and at the end of the conditionals (`if`, `if else` and `else`), this variable is going to be initialized.

Now we have to implement the movement of the computer and for this, we will use a _random number generator_. We can do it with another library!

Right on the first line after and inside the `main`, we create the variable `final rng` and assign a value of `Random()` to it. You will see that Dart tells us it doesn't know that name but you know what to do! `cmd/ctrl + .` (called _magic wand_) and choose to import `dart:math`. Also, remember that you can view the documentation by _hovering over_ not only the library but also that specific method:

![_Random number generator_](https://raw.githubusercontent.com/themonkslab/courses/blob/main/dart/5.app_linea_comando/5.9.1_random_number_generator.gif)

We already have our random number generator and now we are going to use it by creating the variable for the random number (`final randomNumber`) and making use of the generator to assign its value (`rng.nextInt(3)`). You can observe three things:

1. You can see the documentation of the method in advance when you go through the list. This method will create a random number between a minimum included and a maximum not included.
2. You may ask 'if there are three possible movements, why the maximum is 3 when it does not include it and the minimum is 0'? Because we are going to work with lists (which we will see in detail in the next chapter) and these lists count their elements starting with zero, and assign them implicitly so that we can call them by this value (_index_).
3. You can enter inside the documentation with `cmd/ctrl + click`. It is super useful to understand how that method or library works and learn a lot more. Dart and Flutter have some of the best documentation so go ahead and dive in!

![Creando número aleatorio](https://raw.githubusercontent.com/themonkslab/courses/blob/main/dart/5.app_linea_comando/5.9.2_creando_numero_aleatorio.gif)

Now, taking into account what we learned in point two above, let's implement the movement of the computer. As we said, we are going to use a list. Which list? The one that comes out from calling our _enum_ and accessing its values. Like this: `Move.values`. There we have the list but we want to access to some of its three possible movements and for it, it is enough to open `[ ]` which is the way to access to the values using the _index_ of a list and there we put the _random_ number that we generated: `Move.values[randomNumber];`. All together it would look like this:

```dart
import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors } // Note that we do not put trailing comma
                                    // as it is easier to read it on one line

void main() {
  final rng = Random();

  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      var playerMove;
      if (userInput == 'r') {
        playerMove = Move.rock;
      } else if (userInput == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final randomNumber = rng.nextInt(3);
      final computerMove = Move.values[randomNumber];
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

And since now we have two moves of the same class (`userMove` and `computerMove`, both from the _enum Move_), we can compare them and determine the rest of the logic. Let's start with the possible cases in which the user could win or draw and then, with an `else` those in which he loses.

```dart
import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors } // Note that we do not put trailing comma
                                    // as it is easier to read it on one line

void main() {
  final rng = Random();

  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      var playerMove;
      if (userInput == 'r') {
        playerMove = Move.rock;
      } else if (userInput == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final randomNumber = rng.nextInt(3);
      final computerMove = Move.values[randomNumber];
      if (playerMove == computerMove) {
        print('It\'s a draw 😄');
      } else if (playerMove == Move.rock && computerMove == Move.scissors ||
          playerMove == Move.paper && computerMove == Move.rock ||
          playerMove == Move.scissors && computerMove == Move.paper) {
        print('You win!!! 🥳');
      } else {
        print('You lose 😭');
      }
    } else if (userInput == 'q') {
      print('I hope you enjoyed the game! 😃');
      break;
    } else {
      print('Invalid input! 😳');
    }
  }
}
```

You now have your first game! At this point, we could make some adjustments: since we eliminated the `print('Selected...')`, we could include that it tells us the user's choice and the computer's choice as well as a few lines to make our game more understandable.

```dart
import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors } // Note that we do not put trailing comma
                                    // as it is easier to read it on one line

void main() {
  final rng = Random();

  while (true) {
    print('-----------------------------------');
    stdout.write('Rock, paper or scissors? (r/p/s): ');
    final userInput = stdin.readLineSync();
    if (userInput == 'r' || userInput == 'p' || userInput == 's') {
      var playerMove;
      if (userInput == 'r') {
        playerMove = Move.rock;
      } else if (userInput == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final randomNumber = rng.nextInt(3);
      final computerMove = Move.values[randomNumber];
      print('You played: $playerMove');
      print('Computer played: $computerMove');
      print('-----------------------------------');
      if (playerMove == computerMove) {
        print('It\'s a draw 😄');
      } else if (playerMove == Move.rock && computerMove == Move.scissors ||
          playerMove == Move.paper && computerMove == Move.rock ||
          playerMove == Move.scissors && computerMove == Move.paper) {
        print('You win!!! 🥳');
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

Now yes, our game is finished, and while this game may seem simple to you, we learned a lot of things with it:

- How to run programs on the command line and create them.
- How to read the user's _input_.
- How to generate _random_ numbers.
- How to solve problems!
