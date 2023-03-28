# New operators and _statement_

## _Collection-if_

Suppose we want to add something conditionally to a list. We could do it like this:

```dart
void main() {
  final listOfColors = ['green', 'yellow'];
  const addBlue = false;
  const addRed = true;
  if (addBlue) {
    listOfColors.add('blue');
  }
  if (addRed) {
    listOfColors.add('red');
  }
  print(listOfColors);
}
```

We can see two things:

1. That we use `listOfColors` instead of what would seem more logical, `colors`. The reason is that it is then much easier to read when we start using the individual variables, such as `color` in this case: from the beginning of the word we can identify which variable it is without having to go all the way to the end. 😒 Obsessive us? 🤣
2. It could be made simpler by using _collection-if_:

```dart
void main() {
  final listOfColors = ['green', 'yellow'];
  const addBlue = false;
  const addRed = true;
  if (addBlue) {
    listOfColors.add('blue');
  }
  if (addRed) {
    listOfColors.add('red');
  }
  print(listOfColors);
  //
  // See how we achieve the same in a simpler way
  //
  final coolListOfColors = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
  ];
  print(coolListOfColors);
}
```

Note that it is not an `if` _statement_ since you could not apply it here (in the list initialization), but a new type of _statement_!

## _Collection-for_

Let's start by cleaning up the previous code and suppose that we would like to add the values of another color list to the previous one:

```dart
void main() {
  const addBlue = false;
  const addRed = true;
  final coolListOfColors = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
  ];
  final extraColors = ['grey', 'brown'];
  print(coolListOfColors);
}
```

We could use the `List` method called __`addAll()`, which allows us to add all the values of a collection to another collection__:

```dart
void main() {
  const addBlue = false;
  const addRed = true;
  final coolListOfColors = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
  ];
  final extraColors = ['grey', 'brown'];
  coolListOfColors.addAll(extraColors);
  print(coolListOfColors);
}
```

While this method is also very simple, we need to use it once our list has already been initialized. To do the same but in an initialization, we use _Collection-for_:

```dart
void main() {
  const addBlue = false;
  const addRed = true;
  final extraColors = ['grey', 'brown'];
  final coolListOfColors = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
    for (var color in extraColors) color,
  ];
  print(coolListOfColors);
}
```

## _Spread operator_

Wouldn't it be nice to be able to put instead of that _Collection-for_ directly the variable `extraColors`? It happens that if we do that, we would be adding the list and not its elements. In order to do that, we have to use this operator: `...`. __The _spread operator_ allows us to return all the elements of the list but as independent values__:

```dart
void main() {
  const addBlue = false;
  const addRed = true;
  final extraColors = ['grey', 'brown'];
  final coolListOfColors = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
    ...extraColors,
  ];
  print(coolListOfColors);
}
```

## _Composable_

All the operators and statements we have seen in this article, __are _composable_, meaning that they can be combined:__

```dart
void main() {
  const addBlue = false;
  const addRed = true;
  const addExtraColors = true;
  final coolListOfColors = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
    if(addExtraColors)
    ...['brown', 'grey'],
  ];
  print(coolListOfColors);
}
```

## Also with `Set` and `Map`

All these _collections_ and _operators_ that we learned, can also be used in the other types of collections:

```dart
void main() {
  const addBlue = false;
  const addRed = true;
  const addExtraColors = true;
  final coolListOfColors = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
    if (addExtraColors) ...['brown', 'grey'],
  ];
  print(coolListOfColors);
  const ratings = [4.0, 4.5, 3.5, 4.4, 5.0];
  final restaurant = {
    'name': 'Loving Hut',
    'cuisine': 'Vegan Fast Food',
    if (ratings.length > 3) ...{
      'ratings': ratings,
      'isPopular': true,
    },
  };
  print(restaurant);
}
```

## 💪 Shopping List

__Requirement__: rewrite the following code using _collection-if_, _collection-for_ and _spread_, getting the same output.

```dart
void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  var shoppingList = {};
  if (bananas > 0) {
    shoppingList['bananas'] = bananas;
  }
  if (apples > 0) {
    shoppingList['apples'] = apples;
  }
  if (addGrains) {
    shoppingList.addAll(grains);
  }
  print(shoppingList);
  // {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}

```

---

__💀 Solution__:

```dart
void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  final Map<String, dynamic> shoppingList = {
    if(bananas > 0) 'bananas': bananas,
    if(apples > 0) 'apples': apples,
    if(addGrains) ...grains,
  };
  print(shoppingList);
}
```
