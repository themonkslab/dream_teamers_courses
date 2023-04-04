# Fat arrow notation

Suppose we have a very simple function that does nothing more than calculate the sum of two values, something like this:

```dart
void main() {
  final result = sum(4, 9);
  print(result);
}

int sum(int a, int b) {
  return a + b;
}
```

We could make the function __much more concise by using _fat arrow notation_:__ in this form the return is automatically without having to make it explicit and replaces the `{ }` and the `return` by `=>`, hence its name:

```dart
void main() {
  final result = sum(4, 9);
  print(result);
}

int sum(int a, int b) => a + b;
```

This is useful for functions that have a single _statement_ and can also be used without having to return anything:

```dart
void main() {
  sum(4, 9);
}

void sum(int a, int b) => print(a + b);
```
