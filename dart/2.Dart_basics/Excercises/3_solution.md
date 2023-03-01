# Solution 3

```dart
void main() {
  int a = 3;
  int b = 7;
  String message = (a%2==0 && b%2==0? 'Both a and b are even':(a%2==0 || b%2==0? 'Either a or b is odd': 'Neither a nor b is even')); // note that here we use two ternary operators one insede the other.
  print(message);
  }
```
