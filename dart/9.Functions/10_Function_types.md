# Function types

Let's go back a little bit to the previous exercise and give some real life utility to these examples.

In the last one, we saw that we created a function called `welcome` and that this function was of a specific type since it returned a `String` and it asked for another `String` as argument. __What if we could define a kind of _alias_ or name for that type so that every time we have to call it, we don't have to write everything:__ `String Function(String)`?

```dart
// The magic code will appear here 🧙🏼‍♀️
typedef SayHi = String Function(String);
//

void main() {
  final sayHey = (name) => 'Hey! How are you $name?';
  welcome(sayHey, 'Mau');
}

// And we'll use it here in the argument
// to replace that big call
// and I'll leave it as a comment so that you can compare
// void welcome(String Function(String) hi, String name) {
void welcome(SayHi hi, String name) { 
  print(hi(name));
  print('Welcome to TheMonksLab! 😁');
}
```

Tell me if it is not much more beautiful? In this case, we only use it once but imagine a code full of `SayHi` _functions_! How much time would we save and how much prettier would it look?

As good _Monks_, you may have noticed that the name has nothing to tell us about the type of function we create but it is written for the purposes of keeping track of the thread now that things are getting more complicated! Although we could give it some use 🧐...

What if we want to say hello in different languages? We could create those functions and pass them to the `welcome` function since they match our defined type:

```dart
typedef SayHi = String Function(String);
String sayHola(String name) => 'Hola $name!';
String sayBonjour(String name) => 'Bonjour $name!';
String sayGutenMorgen(String name) => 'Guten Morgen $name!';

void main() {
  final sayHey = (name) => 'Hey! How are you $name?';
  welcome(sayGutenMorgen, 'Mau');
}

void welcome(SayHi hi, String name) { 
  print(hi(name));
  print('Welcome to TheMonksLab! 😁');
}
```

And finally, __there is another way to define the type of a function__ and although I prefer the first one, I want to show them to you:

```dart
// preferred form
// typedef SayHi = String Function(String);
// abbreviated form
typedef String SayHi(String name);
String sayHola(String name) => 'Hola $name!';
String sayBonjour(String name) => 'Bonjour $name!';
String sayGutenMorgen(String name) => 'Guten Morgen $name!';

void main() {
  final sayHey = (name) => 'Hey! How are you $name?';
  welcome(sayGutenMorgen, 'Mau');
}

void welcome(SayHi hi, String name) { 
  print(hi(name));
  print('Welcome to TheMonksLab! 😁');
}
```

## Closures

I want you to see it in the following example:

```dart
void main() {
  const prefix = 'Dr.';
  const listOfDoctors = ['John', 'Martin', 'Robertson'];
  final result = listOfDoctors.map((lastname) => '$prefix $lastname');
  print(result);
}
```

What did we do here? Let's first concentrate on `(lastname) => '$prefix $lastname'`. 💀 No cheating: what would that piece of code be? Yes, take your time! Although... a hint is that you saw it very, very recently...

Yes! very good! (😄 You see how I always think the best of you? 🤣). This is an anonymous function although for you to understand it better we are going to take out the _arrow function_ and explain before the `map` method that you will soon see: basically what it does is to go through a list and execute a function that we pass it in each one of its elements (yes, that _anonymous function_ that you just discovered):

```dart
void main() {
  const prefix = 'Dr.';
  const listOfDoctors = ['John', 'Martin', 'Robertson'];
  final result = listOfDoctors.map((lastname) {
    return '$prefix $lastname';
  });
  print(result);
}
```

Can you see it more clearly? Super! Now, since we are getting a little more detailed, it is not really an _anonymous function_ but a _closure_. __What is its difference? That it uses inside, a variable defined outside of .... let's see how your memory is?.... outside of its _scope___  This is the `prefix`. And this is why it is a _closure_.
