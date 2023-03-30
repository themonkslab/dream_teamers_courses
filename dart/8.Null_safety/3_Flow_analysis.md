# Flow analysis

Let's go back to the previous example and instead of explicitly initializing the variable `x` as null, let's just declare it. This will make Dart assign _null_ to that value by default:

```dart
void main() {
  int? x;
  int y = 5;
  print(x + y);
}
```

Now, what would happen if we later assign a value to it and try to run our app?

```dart
void main() {
  int? x;
  int y = 5;
  x = y - 1;
  print(x + y);
}
```

As you can see, Dart no longer notifies us of anything, and when we run, we have no errors. This is because __Dart was able to analyze the code and realize that x has already been assigned a value. This is called _Flow Analysis_.__

Pero esto puede hacerlo de forma aun más inteligente y decidir el cambio de tipo de una variable! 🤨 Cómo?

## _Promotion_

But this, Dart can do even smarter and decide to change the type of a variable! 🤨 How?

```dart
void main() {
  int? x;
  int y = 5;
  if (x == null) {
    print('x is null');
  } else {
    print(x + y);
  }
}
```

In this case, Dart is smart enough to realize that we have foreseen that `x` can be `null` and we add an `if` to prevent it and so it doesn't warn us at all! On the other hand, it also takes into account that __within `else`, there is no possibility that our variable is null, so it `promotes` that variable and turns it into a non-nullable value__ How wonderful! 😍

And it goes on!

## _Definite assignment_

Let's suppose we are at the entrance of a virtual disco (in Argentina they are called 'boliches') and we want to answer to whoever wants to enter, if he/she can or cannot do it depending on whether he/she is of legal age or not. How would we do it? 💀 What would happen with the following example?

```dart
void main() {
  int age = 19;
  String message;
  if (age >= 18) {
    message = 'You can enter';
  }
  print(message);
}
```

_The non-nullable local variable 'message' must be assigned before it can be used._ It says that we have to assign a value to our variable before we can use it! How about doing this then:

```dart
void main() {
  int age = 19;
  String message;
  if (age >= 18) {
    message = 'You can enter';
  } else {
    message = 'You cannot enter';
  }
  print(message);
}
```

__Dart__ no longer throws an error because __it can, through its analysis system, know that the variable has been assigned definitively__ in our `if/else` and this is _definite assignment_.

Pero antes de terminar, yo sé que ustedes saben que But before we finish, I know you know that I wrote the example this way to explain about _null safety_ but how could we make it more concise and beautiful? 💀 What would the above example look like using an _ternary operator_?

```dart
void main() {
  int age = 19;
  String message = age >= 18 ? 'You can enter' : 'You cannot enter';
  print(message);
}
```

And actually I am not done! 🤣 What about collections? Can Dart also infer whether a value is null? Let's look at the following example. 💀 I would like that before seeing the result of each of code, write what do you think Dartpad can do:

_First example_:

```dart
void main() {
  const hardware = ['Mouse', 'Keyboard', null];
  for (var hardwarePiece in hardware) {
    print(hardwarePiece);
  }
}
```

_Second example_:

```dart
void main() {
  const hardware = <String>['Mouse', 'Keyboard', null];
  for (var hardwarePiece in hardware) {
    print(hardwarePiece);
  }
}
```

_Third example_:

```dart
void main() {
  const hardware = <String?>['Mouse', 'Keyboard', null];
  for (var hardwarePiece in hardware) {
    print(hardwarePiece);
  }
}
```

_Fourth example_:

```dart
void main() {
  const hardware = <String?>['Mouse', 'Keyboard', null];
  for (var hardwarePiece in hardware) {
    print(hardwarePiece.toUpperCase());
  }
}
```

We are going to analyze each case.

In the first we see that we can create a list by entering a null value because we do not specify its type and then, when we print each value, we see the null value.

In the second example, we have an error since we are strictly defining the type that our list should receive and that type is not nullable.

In the third example however, we admit a null value so we would have no problem in doing so.

In the fourth and last example finally, we see another error since we cannot execute that function on the variable because it knows that it may be null.

💀 How could we correct the last example, allowing us to print the hardware piece in uppercase letters and preventing the case where the variable is null?

```dart
void main() {
  const hardware = <String?>['Mouse', 'Keyboard', null];
  for (var hardwarePiece in hardware) {
    if (hardwarePiece != null) print(hardwarePiece.toUpperCase());
  }
}
```

To be honest, I never had any real desire to finish this article! We could even make that previous code more beautiful and simple! How? by using the...

## _Conditional access operator_

This _conditional access operator_, allows us to call a function, method or property of a value only if the value is not null and again we use our beloved `?`, in this way:

```dart
void main() {
  const hardware = <String?>['Mouse', 'Keyboard', null];
  for (var hardwarePiece in hardware) {
    print(hardwarePiece?.toUpperCase());
  }
}
```

Now we can see that we no longer have an error and that it prints our values, although to be honest, it prints the value `null`. Why does this happen? In order to understand it, you will have to continue in the next article where we deal with class hierarchies in Dart.
