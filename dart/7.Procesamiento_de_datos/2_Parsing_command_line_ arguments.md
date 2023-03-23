# Parsing command-line arguments

I think we already said that to _parse_ means analyze and convert a value into another, typically from an internal format, a value that we can use for our specific purposes.

Well, here we are going to create a program that allows us to read a `.csv` file, parse it to convert it into values that we can use, do something useful with them, and finally show us the expected result!

Let's start by remembering how to create a project in Dart and our first file:

1. Go to your command line or terminal.
2. Create a directory for this project: `mkdir data_processing`.
3. Enter the directory: `cd data_processing` (remember you can use the tab key to autocomplete).
4. Open a new instance of VSCode within it: `code .`.
5. Create a new file called `data_processing.dart`.

Once there, what we want to do now is to create a command-line program that receives an argument representing the _path_ where our file to be processed is located, so that we can do something with it.

We already know how to start a Dart program, how to establish its entry point, but how do we make it receive arguments? We haven't seen functions yet, but `void main() {}` is a function and inside the parentheses, it can receive arguments of the type that we establish. See what happens if we do the following:

```dart
void main(List<String> arguments) {
    print(arguments);
}
```

We are creating a program that receives a list of arguments of type `String` and then prints them out. 💀 Save that program right now and run it like this: `dart data_processing.dart My arguments!`. What do you think will happen?

![Imprimiendo arguments](https://raw.githubusercontent.com/themonkslab/courses/main/dart/7.Procesamiento_de_datos/2.2_imprimiendo_argumentos.png)

Interesting, right? Okay! Now, as we will need a file to process, this program cannot run without entering the _path_ of that file as an argument. What if we warn the user about it?

```dart
void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
  } else {
    print(arguments); //should not print anything since there are no argumnets yet
  }
  print('This should not be printed');
}
```

However, the program should automatically terminate when we run it without arguments. To do this, we will use the `dart:io` library and its `exit` function that allows us to terminate the program by asking for an argument: `0` if it has no errors and `1` if it has an error. This way, we avoid using `else` and we can see on our terminal that it is executed but the it do not print the last two lines thanks to the `exit` function:

```dart
import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  print(arguments);
  print('This should not be printed');
}
```

Finally we could run our program adding the _path_ of the _input file_ and that is what we will print:

```dart
void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart data_processing.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = arguments.first; //if the program received two files as command line arguments this variable would take the value of the path of the first of them
  print(inputFile);
}
```
