# Solution 8

```dart
void main() {
  // Variables and Type Conversion
  String itemName = "Widget";
  String itemPriceString = "50";
  int itemPrice = int.parse(itemPriceString);
  double taxRate = 0.08;
  double discountPercent = 0.10;

  // Null Aware Operator (??)
  String? customerName;
  String nameToDisplay = customerName ?? "Guest";

  // Ternary Operator
  bool isDiscounted = itemPrice >= 100 ? true : false;
  String discountText = isDiscounted ? "with discount" : "without discount";

  // Asserts
  assert(itemName is String);
  assert(itemPrice is int);
  assert(taxRate is double);
  assert(discountPercent is double);

  // Multilines
  String message = '''
  Welcome to our store $nameToDisplay!
  Today's special is "$itemName" $discountText.
  ''';

  // Calculations
  double subtotal = itemPrice - (itemPrice * discountPercent);
  double tax = subtotal * taxRate;
  double total = subtotal + tax;

  // Output
  print(message);
  print("Price: \$$itemPrice");
  print("Discount: ${discountPercent * 100}%");
  print("Subtotal: \$$subtotal");
  print("Tax: \$$tax");
  print("Total: \$$total");
}
```
