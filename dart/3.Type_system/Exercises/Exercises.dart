//Exercise 1

/*
void main() {
  var correctAnswers = 8;
  const totalQuestions = 10;
  final score = correctAnswers / totalQuestions * 100;

  print("You answered $correctAnswers out of $totalQuestions questions correctly, for a score of $score%.");
}
*/

//Exercise 2

/* 
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
*/

//Exercise 3

/* 
void main () {
  const pi = 3.14159;
  var radius = 5;
  final area = pi*radius*radius;
  final perimeter = 2*pi*radius;

  print('The area of the circle is ${area.toStringAsFixed(2)} \nThe perimeter of the circle is ${perimeter.toStringAsFixed(2)}');
}
*/