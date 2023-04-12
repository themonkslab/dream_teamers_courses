# Getting user input

Let's start by __changing the first thing the user will see__ in our program:

```dart
void main() {
    print('Rock, paper or scissors? (r/p/s)');


    //  Pseudo code
    //  
    //  As long as it is true
    //        Show the prompt to the user
    //        Read your response from the console
    //        If the input is valid ('r', 'p', 's')
    //            Execute computer random option
    //            Compare that move with the user's move
    //            Show the result
    //        If input is 'q
    //            Exit program
    //        If the input is another key
    //            Show 'Invalid input'
}
```

After that, we need to get what the user enters and for that we are going to make use of a function inside a _package_, which is something we will use often.

## Packages

They are __libraries of functions and utilities that we can make use of, without having to write them ourselves__. To do this, we need to import these libraries.

Let's begin by writing the function we need and Dart will help us to find out which library we are talking about. Write after the `print` the function `stdin;` (_standard input_). You will see a red underline and next to it, Dart tells you what the error is: `Undefined name 'stdin'`. It's not recognizing that name in our code and that's because we haven't imported it yet.

Hover the cursor over that name, and press the `cmd/ctrl + .` keys and a help menu will open. Once there, select `Import library dart:io`. Dart takes care of importing the library for us and you will see that there is no longer any failure:

![Importando dart:io](https://raw.githubusercontent.com/themonkslab/courses/main/dart/5.app_linea_comando/5.7_importando_dart_io.gif)

In addition, __if you hover over that `import` (and this is something you can keep trying), you will be able to see a documentation of that library__, with the most common functions and utilities. Super useful!

## `readLineSync`

So, we already have the library. Now let's use it by typing a dot after `stdin` and then choosing `readLineSync()`. With this function (which we will talk about soon), we are going to capture what the user writes. How about saving it in a variable and printing it out 💀 Try it yourself and see how it works! Remember to save the changes and run it from the command line! Oh, and you don't have to type everything back into the terminal: __you can scroll through the last commands you executed with the up and down arrows__.

```dart
import 'dart:io';

void main() {
  print('Rock, paper or scissors? (r/p/s)');
  final userInput = stdin.readLineSync();
  print(userInput);
}
```

Perfect! The program already catches what the user enters! Don't you think it's beautiful? Good! We can make some adjustments: It would be better if we don't have a line between our program's question and the user's _input_. We can achieve this by changing our `print` for another method of the library called `stdout.write`, adding a ':' at the end and a space.  It would be something like this:

```dart
import 'dart:io';

void main() {
  stdout.write('Rock, paper or scissors? (r/p/s): ');
  final userInput = stdin.readLineSync();
  print(userInput);
}
```
