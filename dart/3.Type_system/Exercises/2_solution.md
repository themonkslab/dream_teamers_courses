# Solution 2

```dart
void main() {
  // Declare and initialize the variables
  // Choose either final, var, or const based on the context
  const itemPrice = 29.99;
  const taxRate = 0.07;
  var quantity = 2;
  final totalCost = itemPrice * (quantity?? 1) * (1 + taxRate);

  // Print the total cost of the order in a user-friendly format
  print("The total cost of your order is \$${totalCost.toStringAsFixed(2)} for ${(quantity?? 1)} items.");
}
```
