# Type test operators

I had left a question in the previous article. What type was the variable `name`:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    final name = mau['name'];
    print(name);
}
```

One way to help you to discover it, would be to put a dot to the variable and see what methods Dart provides us. 💀 As I imagine you have been able to see, it only offers us four methods and not all the ones we expect for being a `String`. That is because we define the `value` type inside the `Map` as a `dynamic`. However, __we could caste an object if we know what type it is, using the _cast operator_ `as`__. This way we confirm to Dart that it is a `String` type in this case, and he takes care of changing the `dynamic` type to a `String` type himself:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    final name = mau['name'] as String;
    print(name.toUpperCase());
}
```

In the same way we could use the _is_ and _is!_ and assert that it is or is not a type, I only mention them here since we should understand other concepts to go deeper:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    final name = mau['name'] as String;
    assert(name is String, 'The conversion did not worked correctly');
    print(name.toUpperCase());
}
```

In the above case, we see that it works perfectly and our `assert` passes by. However, what would happen if we tried to do the same with the `age`? 💀

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    final age = mau['age'];
    assert(age is String, 'The conversion did not worked correctly');
    print(age.toUpperCase());
}
```

Here the `assert` pops out since `age` is actually an `int`. 💀 And I leave you alone to test what happens if you try to cast to a `String` that `int`.
