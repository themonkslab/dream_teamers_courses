# Solution 2

```dart
void main() {
  // Declare and initialize the variables
  // Choose either final, var, or const based on the context
  const itemPrice = 29.99;
  const taxRate = 0.07;
  var quantity = 2;
  final totalCost = itemPrice * quantity * (1 + taxRate);

  // Print the total cost of the order in a user-friendly format
  print("The total cost of your order is \$${totalCost.toStringAsFixed(2)} for $quantity items.");
}

```

In this exercise, we use var to declare the correctAnswers variable because its value will change during the program's execution. We use const to declare the totalQuestions variable because its value is a constant that does not change during the program's execution. We use final to declare the score variable because its value is calculated at runtime from the correctAnswers and totalQuestions variables and should not change once it's set.
