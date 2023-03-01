# Exercise 8

## Project Requirements

### Overview

The goal of this project is to develop a program that calculates the price of an item with tax and discounts. The program must use the following features of the Dart programming language:

- Variables and type conversion.
- Null aware operator (??).
- Ternary operator.
- Asserts.
- Multilines.

### Problem Statement

Your task is to develop a program that calculates the price of an item with tax and discounts. The program should store the name and price of an item as strings, and the tax rate and discount percentage as doubles. The program should then convert the price to an integer, and calculate the subtotal, tax, and total price of the item, and display the results to the user.

### Requirements

Your program should meet the following requirements:

- Use variables and type conversion to store and manipulate data.
- Use the null aware operator (??) to provide a default value for customer names.
- Use the ternary operator to set an indicator for discounted items and display the corresponding text (for example they must have a price greater than or equal to 100).
- Use the assert keyword to ensure that variables have the expected data types.
- Use multiline strings to format output messages.

### Output

The output should look like this:

```dart
/*
  Welcome to our store Guest!
  Today's special is "Widget" without discount.
  
Price: $50
Discount: 10%
Subtotal: $45
Tax: $3.6
Total: $48.6
*/
```
