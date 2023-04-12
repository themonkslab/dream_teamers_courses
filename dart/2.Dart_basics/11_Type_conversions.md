# Type conversions

Assume that we want to assign a type `int` to a box of type `String`. Could we do it like this?

```dart
void main() {
    int age = 38;
    String ageString = age;
}
```

Exactly! No! Because we cannot assign a value of type `int` to one of type `String`. To do so, we must convert it with a method of its own. See what interesting things we can discover in Dartpad when we complete '.to' and read the methods it suggests:

![Método toString](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/11.1_tipo_retorno.png)

In the screenshot we can see an arrow next to the method: it means what value the method will return. That means that if we declare a variable and we initialize it with a method, what the method returns will be the value of that variable.

Now that we know that the `toString` method will return a `String` we can use it for the conversion:

```dart
void main() {
    int age = 38;
    String ageString = age.toString();
}
```

With the same procedure, we could convert a `double` into a `String`. However, we are going to use another method now and I want you to find out what it does. For this I am going to give you three examples:

```dart
void main() {
    double height = 1.56;
    String heightToString = height.toStringAsFixed(1);
    print(heightToString);
}
```

```dart
void main() {
    double height = 1.55;
    String heightToString = height.toStringAsFixed(1);
    print(heightToString);
}
```

```dart
void main() {
    double height = 1.54;
    String heightToString = height.toStringAsFixed(1);
    print(heightToString);
}
```

💀 I hope you have taken your time or come to your senses and do it this very moment! 🤣 The `toStringAsFixed` method converts a `double` into a `String` and allows us to choose how many decimal places we use and rounds the remaining decimal places.

Now suppose we want to do the reverse: convert a `String` to a `double`. We are going to have to change the syntax a little bit:

```dart
void main() {
    String hotelRatingString = '4.5';
    double hotelRating = double.parse(hotelRatingString);
    print(hotelRating);
}
```

Why should we use this other syntax? Because not all text strings can be converted into `double` and the `parse` method tries to convert it and if it does not succeed, it aborts the execution throwing or returning an _Exception_:

```dart
void main() {
    String hotelReview = 'Excellent hotel!';
    double hotelReviewDouble = double.parse(hotelReview);
    print(hotelReviewDouble);
}
```

The _Exception_ in the previous example was of type _FormatException_ and it says: _'Uncaught Error: FormatException: Invalid double Excellent hotel!'_.

Finally we can convert from `int` to `double` or vice versa but keeping in mind:

- From a variable containing an `int` to a `double` we must use the `toDouble` method since we have no direct conversion. You may try it this way 💀:

```dart
void main() {
    int x = 10;
    double y = x; // in red you'll see an error:
                  // A value of type 'int' can't be 
                  // assigned to a variable of type
                  // 'double'.
}
```

```dart
void main() {
    int x = 10;
    double y = x.toDouble(); // now it works! 💪
}
```

- From a literal `int` to a `double`, we can do it directly since Dart __promotes__ such `int` to `double`:

```dart
void main() {
    double y = 20; // double promotion 👆
                   // It means we do not need to add
                   // the decimal places in order to 
                   // have a double 
}
```

- From a `double` to an `int`, we'll have to choose a method to decide what to do with the decimals. I suggest you experiment and learn. Here is one:

```dart
void main() {
    int y = 20.6.round(); // 21 (rounding up ⭕️)
}
```

Remember that you can see if it worked just by adding a `Print` at the end of your code.
