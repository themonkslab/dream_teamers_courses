# New methods on collections

Now that we have a deeper understanding of functions, we can explore new methods for our collections.

## `forEach` method

We already saw how to iterate with a _for-in_ loop in a collection. But we can do it in a more succinct way:

```dart
void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  people.forEach((person) => print(person));
}
```

I really only showed it to you because you can see it out there but try typing this example in Dartpad and see what happens. 💀 Take your time!

_Function literals should not be passed to `forEach`._ It says to avoid using the `forEach` in a function literal. What is it that we pass to the `forEach`? This part: `(person) => print(person)`? 💀 Again, think.

And note that you will find more 💀 as we progress because we are going to make the matter more complicated now that you are all ninja masters! 🥷

This part I was asking you about, is a new function, an anonymous one, the one we learn recently and Dart asks us not to do it that way but to use the already known _for-in_:

```dart
void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  for (var person in people) {
    print(person);
  }
}
```

However, __remember that we can pass a function as a parameter to another function if both have the same signature or are declared expecting the same returns and arguments?__.

It turns out that in this case, our `forEach` has this declaration:
`void Function(String)` and the already known `print` has the following: `void print(Object?)`. We are still missing some things to understand it a little more but basically:

- Both return `void`.
- Both receive an `Object` as argument since the `Object` can contain an `Object` and the `String` is an `Object`.

Therefore, we can make our function more concise if we are using a previously named function, as in the case of `print`:

```dart
void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  people.forEach(print);
}
```

In this case, the `print` parameter is passed implicitly from the `forEach`.

## `map` operator

This operator allows us to __take a collection, transform each of its elements as we wish and return with all of them, a new collection__.

Suppose we have the same list of people from the previous example, and once again, we want to add a suffix to their names. Let's do it first with our familiar _for-in_ and then with `map`. Look how beautiful and simple it gets with the latter:

```dart
void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = [];
  for (var person in people) {
     peopleWithTitle.add('Dr. $person');
  }
  print( peopleWithTitle);
}
```

```dart
void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = people.map((person)=> 'Dr. $person');
  print( peopleWithTitle);
}
```

Now... do you notice any difference in the resulting `peopleWithTitle` variable in one case and in the other? 💀 Go investigate!

Notice that in the first case it prints '[Dr. Jack, Dr. Justin, ...]' and in the second '(Dr. Jack, Dr. Justin, ...)'. This is because __our `map` returns an `Iterable` which if you recall, was the parent of the `List` and `Map` and represents a collection of elements that can be accessed sequentially.__

If we take a closer look at his signature and the Dartpad documentation, we will see several new things:

- `Iterable<T> map<T>(T Function(String) toElement)`.

`T` refers to a special type, the generic one, which we are about to see.

- _'The returned iterable is lazy, so it won't iterate the elements of this iterable until it is itself iterated'_

Yhis means that until we use that result, the anonymous function inside the `map` is not going to be called and this is a performance optimization.

And what if we want to have as return specifically a `List` instead of an `Iterable`? We can add to the `map` at the end the `toList()` method as follows:

```dart
void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = people.map((person)=> 'Dr. $person').toList();
  print( peopleWithTitle);
}
```
