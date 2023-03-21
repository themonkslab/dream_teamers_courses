# _Type annotations_

So far, we declared lists as `var`. Would that let us do something like the following? 🤔 ... 💀

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities.add(2);
    print(cities);
}
```

No! But why? If you look at the error, Dart tells us that the `int` argument cannot be assigned to the parameter of type `String`. This happens because when we declare the list, we only include in it values of type `String`. Dart then infers that it is a list of `String` values. If we had added some `int` in our first list, we could do so, since it would be a list of objects:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris', 1];
    cities.add(2);
    print(cities);
}
```

The type inference made by Dart in the first example is correct but we can reinforce it in order not to lose sight of its type, as follows:

```dart
void main() {
    List<String> cities = ['Cordoba', 'New York', 'Paris'];
    print(cities);
}
```

💀 And what would happen in this case? Could we include the integer?

```dart
void main() {
    List cities = ['Cordoba', 'New York', 'Paris', 1];
    print(cities);
}
```

That's right, because we are simply saying that it is a list but not specifying the type of value of the elements of that list using `<Type>`.

In general however, it is preferable to declare variables using `var`, `final` or `const`. But in this case, how could we tell Dart then, that we want a list only of `String`? In the following way:

```dart
void main() {
    var cities = <String>['Cordoba', 'New York', 'Paris'];
    print(cities);
}
```

`<String>`, is a _type annotation_ in Dart and they are optional, but you will encounter them a lot and they help you develop better code.
