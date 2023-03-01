# Solution 6

```dart
void main() {
  int? x = 5;
  int? y;
  print('The result of the sum is: ${(x?? 0) + (y?? 0)}');
}
```

Note that it will give you a warning but not an error and you will be able to run your program.
