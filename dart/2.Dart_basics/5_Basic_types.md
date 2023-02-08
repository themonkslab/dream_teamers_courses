# _Basic types_

When we say basic types, we refer to the different boxes we have to store values, but specifically, to the simplest ones to use.

We already know the `String` type box. Let's add some more:

`int`: it is used to store integers up to 64 bits of precision. Could you try saving your age and printing it? I leave you the base code that is going to break:

```dart
void main() {
    print(myAge);
}
```

💀

How did you solve it? I did something like this:

```dart
void main() {
    int myAge = 38;
    print(myAge);
}
```

`double`:  is used to store numbers that have a decimal part, with 32 bits of precision. 💀 How about representing your _height_? Note that I paste you directly my solution; you go and try it by yourselves!

```dart
void main() {
    double myHeight = 1.65;
    print(myHeight);
}
```

`bool`:  is used to represent two values, `true` or `false`. 🤓: It gets its name from the English mathematician who described it as a formal system of logic, the famous George Boole. 💀 And if you represent the answer of wondering if you like this course? 🤣

```dart
void main() {
    bool doILoveThisCourse = true;
    print(doILoveThisCourse);
}
```

## 💪 let's print variables

We'll be have some exercises that are a little longer than others and therefore there will be a special place in the article identified with this:  💪 . Remember that if you want more exercises, a place to ask questions or get to know us and other code fanatics, you can [join our free community on Discord](https://discord.gg/vpPVf7guPC)!

Each exercise will consist of a _requirement_ and one or more possible solutions to solve it. Sometimes, we will go step by step in the code we write to achieve them. However, always remember to follow the proposed method of:

1. Read what is required slowly. If it can be broken down, do it in smaller parts, or _sub-requirements_.
2. Create the code from end to beginning, as a test to get Dart's help to fix it.
3. Propose a final solution and check again if the _requirements_ were satisfied correctly.

__Requirement__: store variables and then print them so that the console displays something like the following image, and use to build the full name: a variable for the first name, a variable for the middle name (if you have one) and a variable for the last name; use your own names and data.

![Console should display something like this](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/5.e.1_a_imprimir_variables.png)

__💀 Solution__:

```dart
void main() {
  String myFirstName = 'Mauro';
  String mySecondName = 'Ariel';
  String myLastName = 'Di Bert';
  int myAge = 38;
  double myHeight = 1.65;
  print('My full name is $myFirstName $mySecondName $myLastName.');
  print('I am $myAge years old,');
  print('and my height is $myHeight.');
}
```
