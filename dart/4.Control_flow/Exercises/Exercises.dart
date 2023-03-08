//Exercise 1

/* 
void main() {
  var count = 10;
  while (count>=0) {
    print(count);
    count --;    
  }
  print('Blast off!');
} 
*/

//Exercise 2

/* 
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
*/

//Exercise 3

/* 
void main() {
  bool? leapYear;
  var year = 2200;
  if (year % 4 == 0) {
    if (year % 100 != 0) {
      leapYear = true;   
    } else if (year % 400 == 0) {
      leapYear = true;
    } else {
      leapYear = false;
    }
  } else {
    leapYear = false;
  }
  String message = leapYear == true? 'The $year year is a leap year' : 'The $year is not a leap year';
  print(message);
} 
*/ 

// Exercise 4

/* 
void main() {
  for (int i = 1; i <= 10; i++) {
    for (int j = 1; j <= 10; j++) {
      print('$i x $j = ${i*j}');
    }
  }
}
*/

