# Sets

They are collections just like lists with the differences that the list may contain repeated values while the _set_ may not. Sets are collections of unique values and we declare their _literal_ versions with `{ }`:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    var countries = {'Italy', 'UK', 'Russia'};
    print(cities);
    print(countries);
}
```

If we would like to access an element inside the `Set`, we cannot use the _subscript operator_ or `[index]`. In such cases, we must use the `elementAt` method:

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    print(countries.elementAt(1)); // UK
}
```

## _Add and remove_

We can add elements to our `Set`. Like the `List`, if we add an element by `add`, that element will be added at the end:

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    countries.add('Iceland');
    print(countries);
}
```

However, what happens if we try to do the following? What will be the result of that `print`?

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    countries.add('Italy');
    print(countries);
}
```

Exactly! Since the `Set` contains unique values, if we add a value that is already there, then it does nothing!

We can also remove elements using `remove` and if we try to remove an element that is not in the `Set`, it remains without producing errors:

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    countries.remove('India');
    print(countries);
}
```

## _Last, first, length, and contains_

They work in the same way as in the `List` so we will not delve into them.

## _Union, intersection and difference_

These are particular methods of the `Set` and can be very useful.

The __`union` method allows us to join `Sets`, keeping the unique elements__ even if there are repetitions:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    var asianCountries = {'India', 'China', 'Russia'};
    print(europeanCountries.union(asianCountries)); // {Italy, UK, Russia, India, China}
}
```

The __`intersection` method allows us to find which elements are common__ between both `Sets`:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    var asianCountries = {'India', 'China', 'Russia'};
    print(europeanCountries.intersection(asianCountries)); // {Russia}
}
```

The __`difference` method allows us to find which elements are in the first `Set` but not in the second__:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    var asianCountries = {'India', 'China', 'Russia'};
    print(europeanCountries.difference(asianCountries)); // {'Italy', 'UK'}
}
```

Finally, we can also use _loops_ with them:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    for(var country in europeanCountries) {
        print(country);
    }
}
```

## 💪 Adding elements

__Requirement__: given two _sets_ of `int` named `a` and `b`, write a program that calculates and returns another `Set` with the elements of the first and second but not common to both. Then calculate the sum of the elements of the resulting `Set`.

```dart
void main() {
    const a = { 1, 3 };
    const b = { 3, 5 };
    // It should print { 1, 5 } then 6
}
```

---

__💀 Solution__:

```dart
void main() {
    const a = { 1, 3 };
    const b = { 3, 5 };
    
    var resultantSet = <int>{};
    resultantSet = a.difference(b).union(b.difference(a));
    print('Resultant set: $resultantSet');

    var sumOfElements = 0;
    for(var value in resultantSet) {
        sumOfElements += value;
    }
    print('Sum of elements: $sumOfElements');
}
```

__🧐 Important__:

Notice how we declare a _literal_ `Set`: `<int>{}`. If we do it only with `{}` Dart will think we are declaring a `Map`, _type_ which we will see exactly next.
