# List methods

Let's walk through very useful methods provided by this class or type.

## isEmpty or isNotEmpty

It allows us to __check if the list is empty or not__. You can try it in our previous example:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    print(cities.isEmpty);
    print(cities.isNotEmpty);
}
```

And you can also make it clearer by creating an empty _list literal_:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    print(cities.isEmpty); // false
    print(cities.isNotEmpty); // true
    assert(cities.isNotEmpty); // So that we don't forget the asserts! 😉
    print([].isEmpty); // true
    print([].isNotEmpty); // false
}
```

## Length

It allows us to obtain the __number of elements__ in the list:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    print(cities.length); // 3
}
```

## First and last

Allows us to __get the first and last element__ of the list:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    print(cities.first); // 'Cordoba'.
    print(cities.last); // 'Paris'.
}
```

💀 Remember what happened if we searched for an element through an _index_ that was not within the range of the list? Try what happens if you search with these two methods in an empty list, like this: `print([].first)` or `print([].last)`.

Exactly: an error telling us that this element does not exist.

## Add and insert

We can __add values to a list__ in the following two ways. __The first one adds it after the last element__ in the list:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities.add('Moscow');
    print(cities); // ['Cordoba', 'New York', 'Paris', 'Moscow']
}
```

__The second one__ allows us to __decide in which place__ we _insert_ this value and for this we are asked as first _argument_  the index where we want to place it and then the value; remember that we start counting in the lists, from 0:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities.insert(1, 'Moscow');
    print(cities); // ['Cordoba', 'Moscow', 'New York', 'Paris']
}
```

## RemoveAt and clear

The same way we can add values, we can also remove them. To __remove values__ from a list, we use the ___removeAt_ method with the _index_ to indicate which value it is__:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities.insert(1, 'Moscow');
    print(cities); // ['Cordoba', 'Moscow', 'New York', 'Paris']
    cities.removeAt(2);
    print(cities); // ['Cordoba', 'Moscow', 'Paris']
}
```

And if we would like to completely __clear all values__ from a list, we can use the `clear` method:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities.insert(1, 'Moscow');
    print(cities); // ['Cordoba', 'Moscow', 'New York', 'Paris']
    cities.removeAt(2);
    print(cities); // ['Cordoba', 'Moscow', 'Paris']
    cities.clear();
    print(cities);
}
```

## Contains and indexOf

If we want to know __if an element is inside our list, we use _contains_:__

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities.insert(1, 'Moscow');
    print(cities.contains('Moscow')); // true
}
```

But if we also wanted to know __in what position is it? We use _indexOf_:__

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities.insert(1, 'Moscow');
    print(cities.indexOf('Moscow')); // 1
}
```

## 💪 Guess

__Requirement__: you have to calculate if the next _assertion_ is going to give `true` or `false`, that is, if it is going to pass or fail..

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris', 'Moscow', 'Rome'];
    var newCities = ['Buenos Aires', 'Washington', 'Marcella', 'San Petesburgo', 'Milan'];
    if(cities.contains('New York')) {
        cities.add(newCities[cities.indexOf('Moscow')]);
    }
    for(var i = 0; i < newCities.length; i++) {
        if(i == 3) cities.insert(1, newCities[i+1]);
    }
    assert(cities.contains('Milan'));
}
```

__💀 Solution__:

The _assertion_ or statement, and I make it kind of long so you can't so easily see the solution and I really hope you are doing the calculation (🤣), results in...

...

...

😅

... `true`,  so no error is triggered!
