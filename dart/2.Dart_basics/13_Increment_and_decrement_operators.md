# _Increment and Decrement operators_

Dart offers this already known way to make our code more concise:

```dart
void main() {
    int x = 1;
    x += 1;
    print(x); // 2
}
```

Yet, there is an even more concise form and that is the increment and decrement operators, so it works for both `+` and `-`:

```dart
void main() {
    int x = 1;
    x++;
    print(x); // 2
}
```

In the previous case we can see that we add as a 'suffix' the operator `++` to make its value incremented by 1. We could also find the case where we add it as a 'prefix': `++x`. Let's see the differences:

```dart
void main() {
    int x = 1;
    int y = x++;
    print('x: $x, y: $y'); // x: 2, y:1 
}
```

Using the _sufix operator_, first we assign `x` which is equal to 1 to the value of `y` and then we increment `x` which is now worth 2. What would happen using the _prefix operator_?

```dart
void main() {
    int x = 1;
    int y = ++x;
    print('x: $x, y: $y'); // x: 2, y:2 
}
```

We leave the interpretation to you! 😉

You may wonder why this works this way! 🙃 The answer is that many of the programming languages that derive from __C__ (a language developed between 1969 and 1972), adopted this convention in the last 50 years and Dart is one of them.

These operators can be quite confusing if you are not used to them. And you already know how to become familiar with them! 🤣

## 💪 Guessing the future

__Requirement__: analyze what would be the result of `print`.

```dart
void main() {
    int x = 1;
    int y = x++;
    int z = --y;
    print('x: $x, y: $y, z: $z');
}
```

__💀 Solution__:

```dart
void main() {
    int x = 1;
    int y = x++;
    int z = --y;
    print('x: $x, y: $y, z: $z'); // x: 2, y: 0, z: 0
}
```

You can use these operators to make your code more concise, but remember that it has to be human-readable, not just machine-readable. If you feel that it might confuse a _coworker_ in the future, don't use it.
