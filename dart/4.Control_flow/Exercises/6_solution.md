# Solution 6

```dart
enum FruitType { apple, orange, banana }

void main() {
  FruitType fruit = FruitType.apple;
  int quantity = 5;
  double totalCost = 0;

  switch (fruit) {
    case FruitType.apple:
      totalCost = 0.5 * quantity;
      break;
    case FruitType.orange:
      totalCost = 0.75 * quantity;
      break;
    case FruitType.banana:
      totalCost = 0.3 * quantity;
      break;
  }

  print('Total cost of the fruit purchase is \$${totalCost.toStringAsFixed(2)}');
}
```
