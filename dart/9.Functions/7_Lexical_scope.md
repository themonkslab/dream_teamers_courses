# Lexical Scope

_Lexical scope_ refers to the __different places in our code and the access we will have to them.__ Thus we find two types of _scope_.

## Inner scope

It is the internal area. Internal of what? The one we define by `{ ... inner scope ... }`. It is the block of code inside a pair of braces. Let's see it with an example.

Suppose we declare and initialize the variable `a` with a value of `'a: Inside the main scope'`. We can print that variable inside the `main` but what happens if we try to declare another variable outside using it?

```dart
void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
}

const b = a; // Undefined name 'a'.
```

Exactly! It tells us that this variable is not defined because we did it inside the `main` _scope_. We could, however, use it within an internal _scope_ of the `main`:

```dart
void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
  }
}
```

However, what would happen if we tried to use `b` outside the if? 💀 Go try it! Oh, a clarification: sometimes in Monkslab, we use emojis in certain `print` because it allows us to quickly differentiate between similar values!

```dart
void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const b = 'b: $a Inside the main and inside the if. 🍉';
  }
  print(b); // Undefined name 'b'.
}
```

Again exactly: `b` is not defined but inside the _scope_ of the `if` and therefore we cannot use it! And what would happen if we tried, inside the `if`, to __create another variable with the same name as one we have in an external _scope_?__

## Shadow variables

They are variables with the __same name but different scope.__ It is as if we step the initial value only inside that _scope_, and if we also print that value outside the `if`, you will see that it contains the value that we assigned at the beginning because in reality they are different variables:

```dart
void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const a = 'new a: Inside the main and inside the if. 🚧';
    print(a);
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
  }
  print(a);
}
```

And could we define a variable outside the `main`? Yes, and it would be the _global scope_.

## Global scope

Is accessible to any internal block of code:

```dart
const c = 'c: ☺️ Global scope. Everyone can use me!';

void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const a = 'new a: Inside the main and inside the if. 🚧';
    print(a);
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
    print(c);
  }
  print(a);
}
```

And obviously, we can also create a new variable with the same name in a local scope and have it 'overshadow' our original variable:

```dart
const c = 'c: ☺️ Global scope . Everyone can use me!';

void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const a = 'new a: Inside the main and inside the if. 🚧';
    print(a);
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
    print(c);
    if(c.contains('c:')) {
      const c = 'new c: c has been overshadowed. 👤';
      print(c);
    }
  }
  print(a);
}
```

Does the same thing happen with functions? Yes, and they are called _Inner functions_.

## Inner functions

So far we have always declared functions outside the `main`, however, we could also do it inside. They are internal functions and have the same behaviors that we were learning in this article:

```dart
const c = 'c: ☺️ Global scope . Everyone can use me!';

void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
  }
  // Function declaration
  void anInnerFunction() {
    print('This is an inner function!');
  }

  // Function call
  anInnerFunction();
}
```

And what happens in the following case:

```dart
const c = 'c: ☺️ Global scope . Everyone can use me!';

void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
  }
  // Function declaration
  void anInnerFunction() {
    print('This is an inner function!');
    print(b); // Undefined name 'b'
  }

  // Function call
  anInnerFunction();
}
```

As `b` is declared inside the `if` then, the function that we declare and at the same time declares another _scope_, does not know it so it cannot call it. It would be a different case if we had declared that function inside the `if`:

```dart
const c = 'c: ☺️ Global scope . Everyone can use me!';

void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  if (a.contains('Inside')) {
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
    // Function declaration
    void anInnerFunction() {
      print('This is an inner function!');
      print(b);
    }

     // Function call
  anInnerFunction();
  } 
}
```

And I just felt like making it a bit more complicated! What will happen now?

```dart
const c = 'c: ☺️ Global scope . Everyone can use me!';

void main() {
  const a = 'a: Inside the main scope. 💃🏼';
  print(a);
  // Function declaration
  void anInnerFunction(String b) {
    print(b);
  }

  if (a.contains('Inside')) {
    const b = 'b: $a Inside the main and inside the if. 🍉';
    print(b);
    // Function call
    anInnerFunction(b);
  }
}
```

In this case, we declare the function outside the `if` where `b` is defined but we require an argument called `b` to that function. Then we call it inside the `if` that declares `b` and it can be used without any problems. I should clarify that I only used `b` as the argument name in the function to confuse you but we could have called it either way! 😂
