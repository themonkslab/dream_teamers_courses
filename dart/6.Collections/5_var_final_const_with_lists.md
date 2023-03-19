# `Var`, `final` y `const` _with lists_

We can use to declare our lists `var`, `final` and `const`, letting Dart infer their type or making explicit their type like this: `<String>[...]`.

We already saw that if we declare them with `var`, we can change their values but what if we declare them with `final`? 💀

```dart
void main() {
    final cities = <String>['Cordoba', 'New York', 'Paris'];
    cities[1] = 'Buenos Aires';
    print(cities);
}
```

As you can see, we can still change its values! What we cannot do is to assign a new list to this variable. If we write the code below, we get an error like: 'The final variable cities can only be set once'.

```dart
void main() {
    final citiesA = <String>['Cordoba', 'New York', 'Paris'];
    citiesA = ['Buenos Aires'];
}
```

The same happens if we use `const`, with the only difference that it would be more performant when declaring it since Dart can calculate that list at compile time.  The error in this case however, says that `const` cannot be assigned a value:

And the last question of this article: isn't it weird that we can change a value if the list was declared as `const`? 💀 What do you think?

```dart
void main() {
    const cities = <String>['Cordoba', 'New York', 'Paris'];
    cities[1] = 'Buenos Aires';
    print(cities);
}
```

That's right! We have a bug! Dart can't check that at compile time so at run time is when it detects the error! Be very careful with changing values of a list declared as a constant!
