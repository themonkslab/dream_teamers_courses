# Type Inference

Since Dart is a _statically typed language_, it can infer the type of the variables we declare. To do this, instead of declaring what type a variable is (whether it is a `String` or an `int` for example), we use the term `var` which refers to _variable_ and let Dart take care of that:

```dart
void main() {
    var myName = 'Mau';
    var myAge = 38;
    var myHeight = 1.65;
}
```

Now... how could I prove this to you? How can we check if a type is exactly the type we think it is? 🤔

## _Type test operators_

They allow us to check at _runtime_ if __a type is the one we expect__:

- _variable_ __`is`__ _type_: `true` will return `true` if the variable __is__ of that type.
- _variable_ __`is!`__ _type_: will return `true` if the variable __is not__ of that type.

We will see this more clearly later when we learn about `Objects` and `Classes` but for the moment, we already __have everything to test if our variables were correctly inferred__.

## Combining _asserts_ and _type test operators_

Once the variable was inferred we can use an `assert` to check if the variable was assigned with the correct type:

```dart
void main() {
    var myName = 'Mau';
    var myAge = 38;
    var myHeight = 1.65;
    assert(myName is String);
    assert(myAge is int);
    assert(myHeight is double);
}
```

💀 You can test by changing the types or variables and seeing how the program throws an exception each time. Also test what happens if you try to assign new types of values to the variables!
