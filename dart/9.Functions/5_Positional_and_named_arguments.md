# Positional and named arguments

Until now, we used arguments to make our function possible to use in different scenarios. The type of arguments that this function asked for were _positional_, since in order to call it correctly, we had to pass it the arguments as they were quoted in its declaration. Let's review:

```dart
void main() {
  final friend = describe('Julia', 32, 'Soccer');
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe(String friendName, int age, String sport) {
  return 'This is $friendName!. She is $age years old and she likes to play $sport!';
}
```

When we call `describe`, notice that we pass the name, the age and finally the sport, as we ask for it in the function. These arguments besides requiring to be passed in the same position, are mandatory because if they are not passed it will give an error. 💀 Go and try it!

So far, so good! But __what would happen if we had more arguments? Or if this function was in another file?__ We would have to go back and forth each time to make sure they are in the right order and that is very prone to error . That is why Dart adds the _named parameters_.

## Named parameters

To create this type of arguments, we only have to surround the positional that we already have, with `{}` and ready: `String describe({String friendName, int age, String sport}) {}`. However, notice what happens if we only change the function declaration and not the call:

```dart
void main() {
  final friend = describe('Julia', 32, 'Soccer');
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe({String friendName, int age, String sport}) {
  return 'This is $friendName!. She is $age years old and she likes to play $sport!';
}
```

A bunch of errors but all product of the first one: 'Too many positional arguments: 0 expected, but 3 found.' Then the next errors say that the named parameters cannot have a null value because of the type of them, only this is because we never pass them as named. To do this, in the function call we can put them in any order but we have to use the variable we named them with:

```dart
void main() {
  final friend = describe(
    friendName: 'Julia',
    age: 32,
    sport: 'Soccer', // Note that the trailing comma organizes it differently.
  );
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe({String friendName, int age, String sport}) {
  return 'This is $friendName!. She is $age years old and she likes to play $sport!';
}
```

What happened? 😭 It keeps giving errors! And it's because Dart is not sure that those values arrive every time we call the function! How do we do this?

## Required and default values

As we declared our parameters in the previous example, that is with _named parameters_, we are telling Dart that by default those values are not mandatorily requested. To do this, we must add a little word: _required_:

```dart
void main() {
  final friend = describe(
    friendName: 'Julia',
    age: 32,
    sport: 'Soccer',
  );
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe({required String friendName,required int age,required String sport}) {
  return 'This is $friendName!. She is $age years old and she likes to play $sport!';
}
```

However, what if we wanted to declare a function with _named parameters_ but not all of them are mandatory? We should declare those with a nullable type. Let's see how the example could be transformed:

```dart
void main() {
  final friend = describe(
    friendName: 'Julia',
    age: 32,
  );
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe({required String friendName,required int age, String? sport}) {
  return 'This is $friendName!. She is $age years old. ${sport != null ? 'She loves to play $sport!': 'She does not like to play sports!'}';
}
```

In the latter case we allow ourselves to check if the value we pass is null and change our description accordingly. And what would happen if Julia was an Argentinean who won the third world cup, which made every Argentinean living person love soccer? Maybe she says it when she describes herself, or maybe she wants to mention another sport but for sure for sure, soccer will be one of the favorite sports. And if she doesn't say anything but still we know about soccer? What can we do?

## Default values

We can set a _default value_: if she does not mention any, the _default value_ will be `soccer` and if she does, it will be the one she mentions. This is done by simply taking out the nullable type (since it will never be null) and putting a `=` sign with the default value afterwards. 💀 However, we are going to have a warning. Why:

```dart
void main() {
  final friend = describe(
    friendName: 'Julia',
    age: 32,
  );
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe(
    {required String friendName, required int age, String sport = 'Soccer'}) {
  return 'This is $friendName!. She is $age years old. ${sport != null ? 'She loves to play $sport!' : 'She does not like to play sports!'}';
}
```

Exactly! Never ever can `sport` be null so our safeguard no longer makes sense. And remember to note that in the function call, we are not passing any value to `sport` but it takes the default. Try, nonetheless, what would happen if you pass it a value:

```dart
void main() {
  final friend = describe(
    friendName: 'Julia',
    age: 32,
  );
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe(
    {required String friendName, required int age, String sport = 'Soccer'}) {
  return 'This is $friendName!. She is $age years old. She loves to play $sport!';
}
```

Finally, we can also declare optional positional arguments and even give them a default value. To make them optional, we surround them with `[]` and add the `?`:

```dart
void main() {
  final friend = describe(
    'Julia',
    32,
  );
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe(
    String friendName, int age, [String? sport]) {
  return 'This is $friendName!. She is $age years old. ${sport != null ? 'She loves to play $sport!' : 'She does not like to play sports!'}';
}
```

And to declare _default values_ we do the same as in the previous cases, only we continue surrounding the value with `[]`:

```dart
void main() {
  final friend = describe(
    'Julia',
    32,
  );
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe(
    String friendName, int age, [String sport = 'Soccer']) {
  return 'This is $friendName!. She is $age years old. ${sport != null ? 'She loves to play $sport!' : 'She does not like to play sports!'}';
}
```
