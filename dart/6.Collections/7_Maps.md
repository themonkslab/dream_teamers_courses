# _Maps_

Maps, also called _dictionaries_, are __collections of _key:value pairs___.

Suppose we have the following _keys_ with their respective _values_ describing a person.

```dart
// name: Mau
// age: 38
// height: 1.65
```

We can create a map to represent it, opening `{}`, setting the keys and values, which will depend on the _type_ we need to represent each case:

```dart
// name: Mauro
// age: 38
// height: 1.65
void main() {
    var mau = {
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
}

```

💀 Notice what happens if you enter a key twice! While not a bug, Dart warns us that __it doesn't make sense to have the same key twice__.

When we declare a `Map` using `var`, `final` and `const`, _keys_ and _values_ can have the type we desire; alternatively we can make explicit the _types_ we want. Note that the `dynamic` type allows us to put any type of value. 💀 Test what happens if you define the map as <String, String>:

```dart
void main() {
    Map<String,dynamic> mau = {
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
}

```

You can also add type annotations to the `Map` as you did with `Set`s and `List`s which while not strictly required, is a good idea to keep the code safe:

```dart
void main() {
    final mau = <String,dynamic>{
    'name': 'Mauro',
    'age': 38,
    'height': 1.65,
    };
}
```

As with lists, we can __access their values using the _subscript operator___ and calling the value no longer by index but __by its _key_ in quotes__:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,

        final name = mau['name'];
        print(name);
    };
}
```

We can also __change their values__ by accessing them in the same way:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    final name = mau['name'];
    print(name);
    mau['age'] = 39;
    print(mau);
}
```

And last, we can add new values also with the _subscript operator_:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    final name = mau['name'];
    print(name);
    mau['age'] = 39;
    print(mau);
    mau['likesMusic'] = true;
    print(mau);
}
```

Ah! I wanted to leave you a question: what type do you think is the variable `name` to which we assign `mau['name']`? I'll answer it in the next article! 😄
