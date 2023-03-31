# Assertion operator

Suppose we have an online store and we want to give a bonus to those who buy over $5000. We could represent it with the following code:

```dart
void main() {
    const cart = 5001;
    double? maybeBonus;
    if(cart > 5000) {
        maybeBonus = 500;
    }
    double bonus = maybeBonus;
    print('You have a bonus of $bonus');
}
```

What happens with `maybeBonus`? As Dart cannot calculate it with _static type_ before compiling, it cannot know if `maybeBonus` will be null while assigning it to `bonus` so it tells us that a value of type `double?` (a nullable `double`) cannot be assigned to a `double` (a non-nullable `double`). 💀 To solve this, what could you do? You have all the elements!

```dart
void main() {
const cart = 5001;
  double? maybeBonus;
  if (cart > 5000) {
    maybeBonus = 500;
  }
  double bonus = maybeBonus == null ? 0 : maybeBonus;
  if (bonus == 0) print('You have no bonus');
  if (bonus > 0) print('You have a bonus of $bonus');
}
```

How would you do the same exercise but now with a little more grace? Note that Dartpad is making a recommendation: prefer to use _if-null_ operators.

## if-null operator

Basically it says that if the value that we put before this operator is null then we use another value that we provide later. Try the exercise with this hint: we saw it as a teaser in a previous lesson (2.Dart basic / 4. Variables, declaration and initialization): `??`. 💀 Go review and try it!

```dart
void main() {
const cart = 5001;
  double? maybeBonus;
  if (cart > 5000) {
    maybeBonus = 500;
  }
  double bonus = maybeBonus ?? 0;
  if (bonus == 0) print('You have no bonus');
  if (bonus > 0) print('You have a bonus of $bonus');
}
```

In this case, we first use the _if-null operator_ (`??`): if `maybeBonus` is not null, then its value is used; if it is null, then it uses the value we put to its right, `0` in this case. After that, we check if `bonus` is equal to `0` or not to print different messages.

Now, this seems like a lot of hassle if we are sure that the purchase has been over 5000, which is something that in many instances will happen to us: we will have done the necessary checks and tests to have that security in place. Do we then have to write all this code or can we do something else?

## Now yes, the Assertion operator

Of course we can and it is about using the _assertion operator_ (`!`), which allows us to assign a nullable value to a non-nullable variable. It would look totally the same as the first case only with one addition:

```dart
void main() {
  const cart = 5001;
  double? maybeBonus;
  if (cart > 5000) {
    maybeBonus = 500;
  }
  double bonus =
      maybeBonus!; // 💃🏼 note of attention to see the aggregate 🤣
  print('You have a bonus of $bonus');
}
```

You will see that in this case, we do not get any kind of error and this is because we told Dart 'rest assured that we know what we are doing'. Since in this case we are the ones in control, we really have to be sure of what we are doing!

And what happens when we think we are absolutely sure but it turns out that something in the process was not exactly as we predicted and it gets to that place and the value turns out to be null? 💥 Baaaang! It blows everything up! 🤣 And this is why this operator is also called the _bang operator_!

## When to use ! and when ??

The idea is that you use the `??` if you have a default or alternative value in case the value is null and use the `!` only if you are one hundred percent sure that at _runtime_, that value will not be null.

## Augmented assignment if-null operator

Whaaaat!? 🤣 It sounds very complex and fancy but it is actually very simple: it serves to assign a value only if that value is null.

Suppose that in the example we have been working on we want to correct the value of the bonus once it may have already been assigned. 😒 Yes, I understand it's a bit far-fetched but in your own programs you will find better use cases 😂! We could do something like this:

```dart
void main() {
  const cart = 5001;
  double? maybeBonus;
  if (cart > 5000) {
    maybeBonus = 500;
  }
  maybeBonus ??= 1000;
  double bonus =
      maybeBonus!;
  print('You have a bonus of $bonus');
}
```

Now and to finish, you will see that Dartpad shows you a _warning_ or saying that `maybeBonus` can never be null since we have assigned it before! Very clever and useful! So the example without _warnings_ would be as follows:

```dart
void main() {
  const cart = 5001;
  double? maybeBonus;
  if (cart > 5000) {
    maybeBonus = 500;
  }
  maybeBonus ??= 1000;
  double bonus =
      maybeBonus; // 💃🏼 attention note again! 🤣
  print('You have a bonus of $bonus');
}
```
