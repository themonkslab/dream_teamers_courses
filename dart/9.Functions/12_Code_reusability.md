# Code reusability

We have already mentioned many times why we try to avoid code repetition (_DRY_) but it is something we always have to keep in mind as it saves us tons of energy. __If we reuse code correctly, we avoid having to maintain code and fix bugs resulting from repeated code that we don't update.__

So let's see how we can use what we learned about functions to make better code.

## Functions as arguments

Recall the last example:

```dart
void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = people.map((person)=> 'Dr. $person').toList();
  print(peopleWithTitle);
}
```

Suppose this is not the only place we want to add the prefix to a list of professionals, or we need to do it several times with different lists of professionals, or it could be people from different professions and we need to change the prefix each time. How about extracting the utility into a function? 💀 I have no doubt that you feel like trying it yourself and you can do it perfectly!

```dart
void main() {
  const sirsWithoutTitle = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final sirsWithTitle = addPrefix(initialList: sirsWithoutTitle, prefix: 'Sir');
  print(sirsWithTitle);
  const doctorsWithoutTitle = ['Florence', 'Marian'];
  final doctorsWithTitle =
      addPrefix(initialList: doctorsWithoutTitle, prefix: 'Dr');
  print(doctorsWithTitle);
}

List<String> addPrefix(
    {required List<String> initialList, required String prefix}) {
  return initialList.map((person) => '$prefix $person').toList();
}
```

Super! We have already improved our code by having only one function to maintain or test in the future. But __what if we want this function to be able to add a title sometimes and a suffix sometimes? And still remain a pure function, which means that it has only one reason to exist and with the same arguments yields the same results?__ We can ask in our function, an anonymous function as an argument!

```dart
void main() {
  const sirsWithoutTitle = [
    'Jack',
    'Justin',
    'Martin',
    'Eugenio',
  ];
  final sirsWithTitle = giveTitles(
    initialList: sirsWithoutTitle,
    transform: (value) => 'Sir $value',
  );
  print(sirsWithTitle);
  final sirsWithSuffix = giveTitles(
    initialList: sirsWithoutTitle,
    transform: (value) => '$value, The Sir! 👑',
  );
  print(sirsWithSuffix);
}

List<String> giveTitles({
  required List<String> initialList,
  required String Function(String) transform,
}) {
  return initialList.map(transform).toList();
}
```

Look at what we did:

1. We rename the function that we had extracted so that it is more representative.
2. We replace the second argument, by a function that is going to return a `String` and asks for a `String` as argument.
3. Inside the `map`, we insert our function. Note that it allows us to do this because the `map` takes a `String` as an argument (because we apply a `map` on a list of `String`) and then performs an operation on it to return a value, the same as the function we pass it.
4. We call this function twice, with two different anonymous functions but both respecting the signature we ask for in our argument, the first one to add a prefix and the second one a suffix.

Thus we can observe all the power that has this function that receives another anonymous function as argument and every time it is executed it will return the same result with the same arguments, which is a requirement for it to be a pure function. At the same time, it fulfills only one function, that of returning a `List<String>` performing the operation that we pass it. A real bargain! 🤣

## Generics

We were seeing that we could make functions that receive functions as parameters but always received and returned the same type of variable. What happens if we want to make a function that works for several types? Let us see it with a very simple example: suppose we have a list of `int` and we want to have a function that allows us to execute different operations on them. We will then create a function that receives another one as argument:

```dart
void main() {
  const list = [1, 2, 3];
  print(transform(list, (x) => x * 2));
  print(transform(list, (x) => x * 10));
}

List<int> transform(List<int> list, int Function(int) operation) {
  return list.map(operation).toList();
}
```

Notice that up to this point it works perfectly: we can perform two different operations on our original list, first multiplying the original values by 2 and then by 10. What happens however if you wanted to do the following?

```dart
void main() {
  const list = [1, 2, 3];
  print(transform(list, (x) => x * 2));
  print(transform(list, (x) => x * 10));
  print(transform(list, (x) => x / 2)); // 👁️ a problem arises here
}

List<int> transform(List<int> list, int Function(int) operation) {
  return list.map(operation).toList();
}
```

_'The return type 'double' isn't a 'int', as required by the closure's context.'_. Remember that a _closure_ is an anonymous function but it uses a variable that is outside its _scope_ and in this case, we are talking about the `operation` that we pass to our `transform`: this `operation` returns an `int` but if we ask it to divide, it will necessarily return a `double` so it does not match the specified type. How can we do then? Using generics!

___Generics_ are types that can have other formal types as parameters__. Something like this happens in functions: a function receives arguments that it can then use; in the case of generic types, they can receive as parameters other types to use. How would we do this? Instead of the familiar type, for example `List<int>`, we put a capital letter to represent what we expect to receive, as a mnemonic convention. Dart however, already has the following conventions:

- `E` for element.
- `K` and `V` for key and value respectively.
- `R` for a return type.
- `T`, `S` and `U` for generic types.
- If none of the above types served our purposes, any uppercase letter will do.

How would we do with our previous example? We could tell our `transform` to receive a parameter of a generic type instead of `int` so that it can then also return a `double`. For this, when we declare the function, we have to put inside `<...>` that letter that represents the generic. We are going to use `T`:

```dart
void main() {
  const list = [1, 2, 3];
  print(transform(list, (x) => x * 2));
  print(transform(list, (x) => x * 10));
  print(transform(list, (x) => x / 2)); // 👁️ our problem continues here
}

List<T> transform<T>(List<T> list, T Function(T) operation) {
  return list.map(operation).toList();
}
```

We have already added our generic type but it keeps crashing! What happens? We are specifying a generic type as input and output value parameter when what we want is that we can enter one type for the input and a different one for the output, so we can have an `int` list that returns a `double`. How do we do this? As with functions: we pass them another generic type as a parameter, now called `S`:

```dart
void main() {
  const list = [1, 2, 3];
  print(transform(list, (x) => x * 2));
  print(transform(list, (x) => x * 10));
  print(transform(list, (x) => x / 2));
}

List<S> transform<T, S>(List<T> list, S Function(T) operation) {
  return list.map(operation).toList();
}
```

Now, our `transform` function receives the generic types `T` and `S` and then uses them as follows: the list we expect is of type `T` (`int` in our case). Then `operation` returns a type `S` (`double`) but expects a type `T` as a parameter (the `int` to match the above list) and the total return of our function is of type `S` matching that of our `operation`.

I know it may sound quite complicated or convoluted but if you write it down a couple of times, you will get the hang of it.

## Aclaración final

I would like to make a clarification: __reusing code is not the same as beautifying__: sometimes we tend to write code just to make the previous code prettier, more readable. The idea would be to write that code the first time! 😂 If we are just adding a function to make something we already did in another one look prettier, let's avoid it and improve the previous one! If we are doing it to say prettier Dart's own functions, let's avoid it again as you will see that by making much use of them, you will find them pretty enough to leave them as they are and you will avoid forgetting about the language.
