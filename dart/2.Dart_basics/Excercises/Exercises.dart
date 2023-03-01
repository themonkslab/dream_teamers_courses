// Exercise 1

/* 
void main() {
  bool isRaining = true;
  String message = isRaining==true? 'Bring an umbrella': 'Leave the umbrella at home';
  print(message);
} 
*/

// Exercise 2

/* 
void main() {
  int x = 1;
  int y = 5;
  assert(x>y, 'Assertion failed');
  print('Assertion passed');
} 
*/


// Exercise 3

/* 
void main() {
  int a = 3;
  int b = 7;
  String message = (a%2==0 && b%2==0? 'Both a and b are even':(a%2==0 || b%2==0? 'Either a or b is odd': 'Neither a nor b is even'));
  print(message);
  }
*/

// Exercise 4

/* 
void main() {
  String message = ("This is a message. And I will replace it's vowels");
  String newMessage = message.replaceAll('a', '*');
  newMessage = newMessage.replaceAll('e', '*');
  newMessage = newMessage.replaceAll('i', '*');
  newMessage = newMessage.replaceAll('o', '*');
  newMessage = newMessage.replaceAll('u', '*');
  newMessage = newMessage.replaceAll('A', '*');
  newMessage = newMessage.replaceAll('E', '*');
  newMessage = newMessage.replaceAll('I', '*');
  newMessage = newMessage.replaceAll('O', '*');
  newMessage = newMessage.replaceAll('U', '*');
  print(newMessage);
}
*/

/* 
void main() {
  String message = ("This is a message. And I will replace it's vowels");
  String newMessage = message.replaceAll(RegExp('[aeiouAEIOU]'), '*');
  print(newMessage);
}
*/

// Exercise 5

/* 
void main() {
  String text = ('This is a newline \nand this is a tab\t and this is a backlash \\');
  print(text);
}
*/


// Exercise 6

/* 
void main() {
  int? x = 5;
  int? y;
  print('The result of the sum is: ${(x?? 0) + (y?? 0)}');
}

*/

// Exercise 7

/* 
void main() {
  int num1 = 5;
  String num2 = '7';
  int result = num1 + int.parse(num2);
  print('Result: $result');
}
*/

// Exercise 8

/* 
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
*/
