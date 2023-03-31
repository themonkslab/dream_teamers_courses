# Iterating on maps

We already saw in _lists_ and _sets_ that we can iterate, travel through them and use their values. What happens if we try to do the same with a `Map`?

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    for (var item in mau) {}
}
```

You will see that Dart throws an error: _'The type `Map<String, dynamic>` used in the `for` loop must implement Iterable'_. What does it mean? What is an `Iterable`?

__`Iterable` is a collection of items that can be accessed sequentially.__ Lists and sets are iterable.

So how do we iterate on a `Map`?

## map.keys

One way would be to access the `keys` of the `Map` and there, obtain each `key` or even if we want, the value contained in each one:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    for (var key in mau.keys) {
        print('key: $key');
        print('value: ${mau[key]}');
    }
}
```

💀 Notice what Dart tells you when you stop on the word `keys` in `mau.keys`! It tells us that it is an `Iterable<String>` and that is why we can iterate through it.

## map.values

Likewise, we can do the same with values:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    for (var value in mau.values) {
        print('value: $value}');
    }
}
```

## map.entries

This latter form allows us to access one and the other:

```dart
void main() {
    final mau = <String,dynamic>{
        'name': 'Mauro',
        'age': 38,
        'height': 1.65,
    };
    for (var entry in mau.entries) {
        print('key: ${entry.key}');
        print('value: ${entry.value}');
    }
}
```

## 💪 Ordering pizza

__Requirement__: given a `Map` with pizza prices, write a program that calculates the total for an order. If the order contains a pizza that is not on the menu, it should print `The ${pizza name} pizza is not in the menu`.

```dart
void main() {
    const pizzaPrices = {
        'margherita': 5.5,
        'pepperoni': 7.5,
        'vegetarian': 6.5,
        'vegan': 6.2,
    };

    // order example:
    const order = ['margherita', 'vegan'];
    // program should print `Total $11.70`
}
```

---

__💀 Solution__:

```dart
void main() {
    const pizzaPrices = {
        'margherita': 5.5,
        'pepperoni': 7.5,
        'vegetarian': 6.5,
        'vegan': 6.2,
    };

    // order example:
    const order = ['margherita', 'vegan'];
    var total = 0.0;

    for(var pizza in order) {
        final price = pizzaPrices[pizza];
        if(price != null) {
            total += pizzaPrices[pizza] as double;
        } else {
            print('The $pizza pizza is not in the menu');
        }
      
    }
    print('Total: $total');
}
```
