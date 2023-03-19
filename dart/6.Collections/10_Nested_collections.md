# _Nested collections_

Now that we understand about collections, we can learn about more complex organizations of them. _Nested_ refers to __collections that are inside other collections__.

Suppose we want to represent a listOfRestaurant listing with the following information:

```dart
void main() {
  // name: 'Loving Hut'
  // cuisine: 'Vegan Fast Food'
  // rating: [4.7, 4.4, 4.3]

  // name: 'Los Sabios'
  // cuisine: 'Vegan & Vegetarian'
  // rating: [4.9, 4.2, 3.9]
  
  // name: 'Nona Fortuna'
  // cuisine: 'Italian, Vegan, Vegetarian'
  // rating: [4.9, 4.5, 4.7]
}
```

How do we represent this data? We are going to do it with maps in the following way:

```dart
void main() {
  // name: 'Loving Hut'
  // cuisine: 'Vegan Fast Food'
  // rating: [4.7, 4.4, 4.3]
  
  // name: 'Los Sabios'
  // cuisine: 'Vegan & Vegetarian'
  // rating: [4.9, 4.2, 3.9]
  
  // name: 'Nona Fortuna'
  // cuisine: 'Italian, Vegan, Vegetarian'
  // rating: [4.9, 4.5, 4.7]
  var listOfRestaurants = [
    {
      'name': 'Loving Hut',
      'cuisine': 'Vegan Fast Food',
      'rating': [4.7, 4.4, 4.3],
    },
    {
      'name': 'Los Sabios',
      'cuisine': 'Vegan & Vegetarian',
      'rating': [4.9, 4.2, 3.9],
    },
    {
      'name': 'Nona Fortuna',
      'cuisine': 'Italian, Vegan, Vegetarian',
      'rating': [4.9, 4.5, 4.7],
    }
  ];
}
```

In this example we can observe that the `ratings`, are a list of `int` inside each `Map` and at the same time, each one of them belongs to a `List`, so we could declare the type like this: `List<Map<String, dynamic>>`.

We can also iterate over each of them like this:

```dart
void main() {
  var listOfRestaurants = [
    {
      'name': 'Loving Hut',
      'cuisine': 'Vegan Fast Food',
      'rating': [4.7, 4.4, 4.3],
    },
    {
      'name': 'Los Sabios',
      'cuisine': 'Vegan & Vegetarian',
      'rating': [4.9, 4.2, 3.9],
    },
    {
      'name': 'Nona Fortuna',
      'cuisine': 'Italian, Vegan, Vegetarian',
      'rating': [4.9, 4.5, 4.7],
    }
  ];
  for(var restaurant in listOfRestaurants) {
    print('Restaurant: \n $restaurant');
  }
}
```

## 💪 Average rating

__Requirement__: given the previous list of restaurants, calculate the average rating of each one and add it to its respective map with the _key_ `avgRating`. Use as base, the code that I leave you. Set the `avgRating` to one decimal place.

```dart
void main() {
  var listOfRestaurants = [
    {
      'name': 'Loving Hut',
      'cuisine': 'Vegan Fast Food',
      'rating': [4.7, 4.4, 4.3],
    },
    {
      'name': 'Los Sabios',
      'cuisine': 'Vegan & Vegetarian',
      'rating': [4.9, 4.2, 3.9],
    },
    {
      'name': 'Nona Fortuna',
      'cuisine': 'Italian, Vegan, Vegetarian',
      'rating': [4.9, 4.5, 4.7],
    }
  ];
  for(var restaurant in listOfRestaurants) {
    final listOfRatings = restaurant['rating'] as List<double>;
    // TODO: calculate average rating
    restaurant['avgRaiting'] = /* value here */;
    print(restaurant);
  }
}
```

---

__💀 Solution__:

```dart
void main() {
  var listOfRestaurants = [
    {
      'name': 'Loving Hut',
      'cuisine': 'Vegan Fast Food',
      'rating': [4.7, 4.4, 4.3],
    },
    {
      'name': 'Los Sabios',
      'cuisine': 'Vegan & Vegetarian',
      'rating': [4.9, 4.2, 3.9],
    },
    {
      'name': 'Nona Fortuna',
      'cuisine': 'Italian, Vegan, Vegetarian',
      'rating': [4.9, 4.5, 4.7],
    }
  ];
  for(var restaurant in listOfRestaurants) {
    final listOfRatings = restaurant['rating'] as List<double>;
    var total = 0.0;
    for(var rating in listOfRatings) {
        total += rating;
    }
    final avgRaiting = (total / listOfRatings.length).toStringAsFixed(1);    
    restaurant['avgRaiting'] = avgRaiting;
    print(restaurant);
  }
}
```
