# Solution 3

```dart
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
```
