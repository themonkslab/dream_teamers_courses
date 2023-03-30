# First functions

As we said, functions are building blocks that allow us to recycle, reuse, not repeat code.

Let's imagine that we want to build our house but we do not have enough money: if we were to think about it without any basic idea, we would have to hire an architect, calculate and foresee each space, measure all the elements that would go inside and so on, many of these elements would be special so their value would be very high. In addition, the cost of the whole planning process would also be very high.

There are construction companies that have pre-engineered solutions and we can choose from a number of options. They have already bought the materials by quantity and everything becomes much more economical. Those are the functions, unlike in this much of 0 and 1, we can create them ourselves! 😃

Let's take an example and try to think backwards and forwards.

## First example

Suppose I'm in a bakery and to each person who comes in, I want to say 'Good morning' and 'Thank you very much'! If we were to write that in code it might look something like this:

```dart
void main() {
  print('Good morning');
  print('Thank you very much');
  print('Good morning');
  print('Thank you very much');
  print('Good morning');
  print('Thank you very much');
  print('Good morning');
  print('Thank you very much');
  print('Good morning');
  print('Thank you very much');
  // To the infinite and beyond! 🫣
}
```

It would be extremely tedious, a lot of work, and it would not look good at all! A first improvement we can make, is to create a block, a function, that allows us to say hello. We do it first by saying the type of return that it is going to have (we will see more of this, but in this case `void` means that it does not return anything), then the name of this function (`greetings`), then some brackets well glued to the name and that tell us that this is a function and a space to finally open _curly-braces_ that will contain what the function is going to make:

```dart
void main() {}
void greetings() {
  print('Good morning');
  print('Thank you very much');
}
```

We have our first function declared! Now let's call it! To do so, we simply have to type its name and open and close parentheses which is the way to execute it:

```dart
void main() {
  greetings();
  greetings();
  greetings();
  greetings();
  greetings();
  greetings();
}
void greetings() {
  print('Good morning');
  print('Thank you very much');
}
```

Voilá! We did at least half of the work! We will improve it in the following chapters!
