# Solution 2

```dart
import 'dart:io';

void main() {
  print('Enter the limit to the Fibonacci sequence');
  int limit = int.parse(stdin.readLineSync()!);
  int a = 0, b = 1;
  var c;
  print('The Fibonacci sequence up to $limit is:');

  while (a<=limit) {
    if (a!=0) {
      print(a); // The Fibonacci sequence starts at 1
    }
    c = a+b;
    a=b;
    b=c;
   ;
  }
}
```
