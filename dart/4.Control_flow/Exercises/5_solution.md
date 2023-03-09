# Solution 5

```dart
void main() {
  int i = 0;
  while (true) {
    i++;
    if (i % 3 == 0) {
      continue;
    }
    if (i > 20) {
      break;
    }
    print(i);
  }
}
```
