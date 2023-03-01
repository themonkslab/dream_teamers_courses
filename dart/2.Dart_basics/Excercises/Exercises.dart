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
  String newMessage = message.replaceAll(RegExp('[aeiou]'), '*');
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

