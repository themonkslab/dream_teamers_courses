# _Arithmetic operations_

These are the most known operations to which we add a couple that we don't use so often:

- Addition: __`+`__ `print(5+2)`.
- Subtraction: __`-`__ `print(5-2)`.
- Multiplication: __`*`__ `print(5*2)`.
- Division: __`/`__ `print(5/2)`
- Division of integers: __`~/`__ `print(5/2)`
- Modulo: __`%`__ `print(5%2)`

## _Assignment operators_

As you saw, you can assign a value using the _assignment operator_, `=`. Now let's add the `??=` _operator_, which is used to assign a value only if the variable we are trying to assign it to is empty, otherwise the variable keeps its value. Let's see it:

```dart
void main() {
    int a;
    int? b;   // in order to be nullable 
              // remember to use the '?' after the type.
    a = 10;   // Assigns 10 to variable 'a
    b ??= 20; // Assigns 20 cause 'b' is empty
    print(a); // 10
    print(b); // 20
}
```

```dart
void main() {
    int a;
    int? b = 30;// in order to be nullable 
                // remember to use the '?' after the type.
    a = 10;     // Assigns 10 to variable 'a
    b ??= 20;   // Doesn't assigns 20 cause 'b' is not empty
    print(a);   // 10
    print(b);   // 30
}
```

However, in this last case, we discover a new underline to the previous ones (red and blue), the yellow underline: it shows us a warning, that the value cannot be null:

![Subrayado amarillo](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/12.1_subrayado_amarillo.png)

### Combining the above with _compound assignment operators_

If we wanted to assign to a variable the result of adding itself with another variable or number, we would probably do something like this:

```dart
void main() {
    int a = 5;
    a = a + 3;
    print(a); // 8
}
```

However, we have a specific way to write the same thing and that is by using the compound assignment operators:

```dart
void main() {
    int a = 5;
    a += 3;
    print(a); // 8
}
```

We obtain the same result but with a few less characters. And you can apply this to all the previous operations only taking into account to use a `double` if we use it to divide since a value of type `double` (the one that is going to return the division, since it does not necessarily give an integer result) cannot be assigned to one of type `int`:

```dart
void main() {
    int a = 5;
    a /= 3;   // you should see a red underline 
              // under the 3😒
    print(a); 
}
```
## _Operators precedence_

It is the order in which the operators are going to be executed. What do you think will be the result of this `print(10 - 2 * 5);`? 💀 Put your mathematical skills to the test! 🤣

The result is `0` because the `*` operator takes precedence over the `-` operator. This means that the operation containing `*` (the multiplication) is executed first and then the subtraction. The same would be true for division and addition:

```dart
void main() {
    print(10 + 10 / 2); // 15
}
```

__If we wanted to change the order__ in which they are executed, __we can use `( )`__, forcing Dart to execute first what we want:

```dart
void main() {
    print((10 + 10) / 2); // 10
}
```

## 💪 From _cm_ to _ft_

__Requirement__:

1. Write a program that allows you to put in your height in cm and returns how much that measurement would equal in feet.

2. The result must be expressed to two decimal places.

```dart
void main() {
    // Basic formula: 1 ft = 30.48 cm
}
```

__💀 Solution__:

```dart
void main() {
    // Basic formula: 1 ft = 30.48 cm
    double myHeightInCm = 165;
    double oneFeetInCm = 30.48;
    String myHeightInFeet = (myHeightInCm / oneFeetInCm).toStringAsFixed(2);
    print('My height in feet is: $myHeightInFeet ft.');
}
```
