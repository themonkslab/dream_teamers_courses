# Pure functions

Pure functions are functions to which __by passing them the same arguments, they produce the same results and have no side effects.__

Let's recover our already used sum function:

```dart
void main() {
  sum(5, 8);
}

void sum(int a, int b) {
  print(a + b);
}
```

In this case, whenever we pass `5` and `8` to our `sum`, it will print `13`; it always gives us the same result with the same arguments.

But what would happen if the function took one of the values from outside its _scope_ and at the same time altered it each time it is executed?

```dart
var b = 0;

void main() {
  sum(5);
  sum(5);
  sum(5);
  sum(5);
  sum(5);
}

void sum(int a) {
  b++;
  print(a + b);
}
```

This function is not pure because every time it is executed, it gives us a different result, even if we always pass `a`. In addition it has a side effect, because it not only prints the value of the sum but before that, it altered the value of `b`. __This is something we must avoid at all costs!__ Remember that __functions must have a single purpose__ and to this we must add that __they must yield the same result if called with the same arguments and must not have side effects__.  Why do I emphasize this? Because here in the example, which is very small, we can realize what is the value that is changing, the side effects and their implications, but __in real projects of much greater size, this becomes impossible and makes it impossible to maintain such a project.__

## Global state

In the last example we could see that all our little program, depended on the state of the variable `b`. We would say in this case that `b` would be the global state of our application and in this case, it would be a mutable state or susceptible to be altered.

This is another practice that we have to avoid because it makes our application not only unmanageable but also insecure. Let's keep for global variables, only constant variables that cannot be altered at execution time.
