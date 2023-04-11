# Const keyword

We have already seen that `var` allows us to change the content of a variable and automatically infer its type; `final` allows us to set a variable also inferring its type but that would be read-only and calculated while executing a program. Why do we want one more keyword?

Let's continue with the example of days and training. Suppose that there are days that will be official holidays and we are not going to train on those days. It would be an __information that we would know before starting__ to train, in fact we would have it even before __making our program and furthermore, it would not change__: in Argentina since it is Argentina, every year the 9th of July is the Independence Day. How could we do this? Very simple:

```dart
void main() {
    const independenceDay = '9th of July';
}
```

We can declare that variable as `const` because we initialize it with a literal `String` which itself is also `const`. However, 💀 notice what happens if we try to do something like this:

```dart
void main() {
    final independenceDay = '9th of July';
    const independenceDayUpperCase = independenceDay.toUpperCase();
}
```

It is telling us that a constant variable must be initialized with a constant value and that is because Dart can evaluate that expression at runtime and not before.

However, there are things that Dart can calculate beforehand:

```dart
void main() {
    const x = 1;
    const y = 6;
    const result = x + y;
}
```

And finally, since they are constant variables, they can only be set once; we will not be able to assign another value to them in the future.

For this reason, __Dart prefers this type of variables__ as it allows you to greatly optimize the program. So always __prefer this order__, when the situation allows it: __`const` over `final` and then `final` over `var`.__.

Ah, before we continue I would like to show you that this is correct but not necessary since Dart infers the type without us having to tell it: `const String myName = 'Mauro';`.

## 💪 final, const or var?

__Requirement__: Analyze the following code and determine which variable can be declared with `const`, `final` or `var` and still result in a valid program.

```dart
void main() {
    String text = 'I like pizza';
    String topping = 'with tomatoes';
    String favorite = '$text $topping';
    String newText = favorite.replaceAll('pizza', 'pasta');
    favorite = 'Now I like curry';
    print(newText);
}
```

---

__💀 Solution__:

```dart
void main() {
    const text = 'I like pizza';
    const topping = 'with tomatoes';
    var favorite = '$text $topping';
    final newText = favorite.replaceAll('pizza', 'pasta');
    favorite = 'Now I like curry';
    print(newText);
}
```

Now a better one...

__💀 Better solution__:

```dart
void main() {
    const text = 'I like pizza';
    const topping = 'with tomatoes';
    const favorite = '$text $topping';
    final newText = favorite.replaceAll('pizza', 'pasta');
    const newFavorite = 'Now I like curry';    // since this variable is not used 
                                                // we might as well create a new one.
                                                // Besides, Dart warns us that it is not used!
    print(newText);
}
```
