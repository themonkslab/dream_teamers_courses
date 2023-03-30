# _Function arguments_

Let's continue with the previous example and since we are in a bakery, I might know almost all the customers, so I want to greet them by name:

```dart
void main() {
  const client1 = 'Pedro';
  const client2 = 'Julian';
  const client3 = 'Beth';
  const client4 = 'Alex';
  const client5 = 'Martin';
  print('Hi $client1! 😄 How are you feeling today?');
  print('Hi $client2! 😄 How are you feeling today?');
  print('Hi $client3! 😄 How are you feeling today?');
  print('Hi $client4! 😄 How are you feeling today?');
  print('Hi $client5! 😄 How are you feeling today?');
  // Again, to the infinite! 😅
}
```

We are going to define a function that allows us to avoid these repetitions:

```dart
void main() {
  const client1 = 'Pedro';
  const client2 = 'Julian';
  const client3 = 'Beth';
  const client4 = 'Alex';
  const client5 = 'Martin';
  greetings();
  greetings();
  greetings();
  greetings();
  greetings();
}

void greetings() {
  print('Hi $client1! 😄 How are you feeling today?');
}
```

What happens? Inside our function we have an error telling us that `client1` is not defined. Why? Because `void greetings(){}` doesn't know anything about what happens inside `void main() {}`; what happens inside the `{}` stays inside the `{}` 😂!

And how do we get the name of each client to him? Very simple: by passing arguments to them:

```dart
void main() {
  const client1 = 'Pedro';
  const client2 = 'Julian';
  const client3 = 'Beth';
  const client4 = 'Alex';
  const client5 = 'Martin';
  greetings(client1);
  greetings(client2);
  greetings(client3);
  greetings(client4);
  greetings(client5);
}

void greetings(String name) {
  print('Hi $name! 😄 How are you feeling today?');
}
```

Now we can see that we save several characters since inside `greetings`, the variable `name` inside the `print`, is filled by the `name` argument it receives. Notice that we set what kind of value we want to receive in this function. Then, every time we call it, our `name` container is going to be filled with the one we pass it, in this case, the name of our first client, then the second and then the third and so on! Isn't it wonderful?

And imagine that just today we have a promotion and we want to offer it to every customer! With our functions working (😂), we just have to update the `greetings` function:

```dart
void main() {
  const client1 = 'Pedro';
  const client2 = 'Julian';
  const client3 = 'Beth';
  const client4 = 'Alex';
  const client5 = 'Martin';
  greetings(client1);
  greetings(client2);
  greetings(client3);
  greetings(client4);
  greetings(client5);
}

void greetings(String name) {
  print('Hi $name! 😄 How are you feeling today?\nWe have a 50% discount! Wow! 💃🏼');
}
```

Tell me if it is not a total beauty? Imagine all the work it would have been to have `print` for every greeting! A real nightmare! And imagine in real applications with thousands of lines of code? Impossible! So, _DRY (don't repeat yourself)_ and use functions not to do it! Ah! notice that we use `\n` to make a jump to the next line!

And I would like to tell you, that it does not matter if the function is passed as argument a `variable` as in the example, an expression or a _literal_, as long as you respect the order and type. Let's see:

Achieving the same result as in the last example:

```dart
void main() {
  greetings('Pedro');
  greetings('Julian');
  greetings('Beth');
  greetings('Alex');
  greetings('Martin');
}

void greetings(String name) {
  print('Hi $name! 😄 How are you feeling today?\nWe have a 50% discount! Wow! 💃🏼');
}
```

But what happens if you pass it a value of a type other than the one the function expects?

```dart
void main() {
  greetings('Pedro');
  greetings(true);
  greetings('Beth');
  greetings('Alex');
  greetings('Martin');
}

void greetings(String name) {
  print('Hi $name! 😄 How are you feeling today?\nWe have a 50% discount! Wow! 💃🏼');
}
```

Very simple and thank you very much Dart: it warns us that the parameter of type `bool` cannot be assigned to one of type `String`! Blessed _static check_ that warns us and prevents us from these errors! In the same way, if we forget to pass a parameter, Dart also warns us!

We have already seen that __functions serve to do something__ so they __must be declared with a verb__, while __names must be declared as nouns__. In addition, it is __important to take care that each function we write serves only one purpose__ and does not do many things at once. For example, suppose we are at a party and we want to greet an acquaintance and then introduce a friend. Let's do what we should not do:

```dart
void main() {
  sayHiAndIntroductAFriend('Marcos', 'Julia');
}

void sayHiAndIntroductAFriend(
  String newPerson,
  String friendName,
) {
  print('Hi $newPerson!');
  print('This is $friendName!');
}
```

What if our friend suddenly went to the bathroom and we have no one to introduce? We would not be able to say hello! 🤣 That is why it is very important that each function fulfills a... function!

```dart
void main() {
  sayHiTo('Marcos');
  introduce('Julia');
  // Julia goes to the bathroom
  sayHiTo('Jupiter');
  // Julia come back
  sayHiTo('Aurelius');
  introduce('Julia');
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

void introduce(String friendName) {
  print('This is $friendName!');
}
```
