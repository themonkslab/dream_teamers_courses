# Exercise 2

## The Fibonacci sequence

Write a Dart program that generates the Fibonacci sequence up to a certain limit entered by the user. The Fibonacci sequence is a series of numbers where each number is the sum of the two preceding ones, starting from 0 and 1.

Here's some code to get you started:

```dart
import 'dart:io';

void main() {
  int limit = int.parse(stdin.readLineSync()!);
  int a = 0, b = 1;
  // TODO: Write code to generate the Fibonacci sequence up to the given limit.
}
```

In this code, the program imports a new library that allows us to use the `stdin.readLineSync()` command to obtain from the user the limit of the Fibonacci sequence (we will see it in the next section).
