# Anonymous functions

So far, we have seen named functions. However we could declare an anonymous function! How?

Suppose we want to create a function to say hello; it could receive a name as an argument and return a `String` with the hello:

```dart
void main() {
  (name) => 'Hey! How are you $name';
}
```

That's it! We created our first _anonymous function_, which receives the argument `name` (without defining its type, something very common in _anonymous functions_) and then a _arrow function_ to return a `String`. But... how do we use it?

We can assign that anonymous function to a variable and then call it:

```dart
void main() {
  final sayHey = (name) => 'Hey! How are you $name?';
  print(sayHey('Mau'));
}
```

Yes, yes... we are going to have a suggestion on Dartpad as this is not a good practice but I just wanted to show them to you because then we will see them a lot in places where it is a good practice!

And to continue with bad practices that will be good later.... 😛 We can also pass functions as arguments to other functions. For example, we can create a new function `welcome` that receives our previous function as argument, receives also a `String name` as another argument (the one required by our function `sayHey`) and does something else by itself:

```dart
void main() {
  final sayHey = (name) => 'Hey! How are you $name?';
  welcome(sayHey, 'Mau');
}

void welcome(String Function(String) sayHey, String name) {
  print(sayHey(name));
  print('Welcome to TheMonksLab! 😁');
}
```

Did you notice how we specify the type of function we expect as the first argument of `welcome`? First we put what it is going to return, a `String`. Then, what it is, a `Function` and right there, the type of parameter that function receives inside the `()`, in this case `(String)`. Finally, the name that we give to the argument. So that you understand it more quickly, I named it the same as the function that we had before but we could have given it another name, like this:

```dart
void main() {
  final sayHey = (name) => 'Hey! How are you $name?';
  welcome(sayHey, 'Mau');
}

void welcome(String Function(String) hi, String name) { // Change argument's name 
  print(hi(name));
  print('Welcome to TheMonksLab! 😁');
}
```

The important thing is to match the type of function we expect with the type of function we pass to it. The following would give an error:

```dart
void main() {
  final sayHey = (int age) => 'Hey! How are you bro! Are you $age years old?';
  welcome(sayHey, 'Mau');
}

void welcome(String Function(String) hi, String name) { // Cambio de nombre al argumento
  print(hi(name));
  print('Welcome to TheMonksLab! 😁');
}
```

_The argument type 'String Function(int)' can't be assigned to the parameter type 'String Function(String)'._ We want to assign a function that receives an `int` as argument instead of a `String` and that is why it fails!

Again, it is something that will be useful very soon, even though we could have done this example the right way without using it.
