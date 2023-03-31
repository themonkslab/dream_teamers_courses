# Return value

For now, the functions that we have been declaring and creating, do not return anything; they have only printed in console what we have told them to print. __But what if I want that function to return something? What if I want it to have a _return value_?__

Let's go back to the previous example but let's say more about our friend:

```dart
void main() {
  sayHiTo('Marcos');
  introduce('Julia', 32, 'Soccer');
  // Julia goes to the bathroom
  sayHiTo('Jupiter');
  // Julia come back
  sayHiTo('Aurelius');
  introduce('Julia', 32, 'Soccer');
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

void introduce(String friendName, int age, String sport) {
  print(
      'This is $friendName!. She is $age years old and she likes to play $sport!');
}

```

In this case it becomes a bit tedious to have to describe Julia every time we introduce her, and besides, she is the only person we go to the party together, so it doesn't make sense to repeat it over and over again, and we could get it wrong every time. What if this function we created gave us back that description and we could use it? Totally possible!

First, in the function we create, we declare the type of value we want to return (a `String` in this case), then we remove the `print` and `return` that `String`. Notice that if we do not specify the `return` it tells us that this function should return a `String` but it is not doing it.

When we say that we return, it is simply that: __the function will be executed in its entirely, whether it has one or a thousand steps, but it will return what we ask it to return and then it will finish executing__.

Finally, we save the returned value in a variable and use it in the `print`!

```dart
void main() {
  final friend = describe('Julia', 32, 'Soccer');
  sayHiTo('Marcos');
  print(friend);
  sayHiTo('Aurelius');
  print(friend);
}

void sayHiTo(String newPerson) {
  print('Hi $newPerson!');
}

String describe(String friendName, int age, String sport) {
  return 'This is $friendName!. She is $age years old and she likes to play $sport!';
}
```

## 💪 Calculator version two

__Requirement__:

1. Create a function that receives two values of type `double` and a type of mathematical operation (addition, subtraction, multiplication and division) to be executed with those two values.
2. Create a single `assertion` to ensure that the two values entered are of type `double`.
3. Explain the reason for the previous step.
4. Create an `assertion` to make sure that the result is correct.
5. Create another function to print a sentence showing what values were used and the operation chosen, changing the text according to the type of operation:
  a. 'The result of a + b is 47'.
  b. 'The result of a - b is -27'.
  c. 'The result of a * b is 370'.
  d. 'The result of a / b is 0.27...'.

__Example__:

For the values 10.0 and 37.0, the result of adding would be 47 and the sentence would be 'The result of a + b is 47'.

---

__💀 Solution__:

```dart
enum MathOperation { add, substract, multiply, divide }

void main() {
  const a = 10.0;
  const b = 37.0;
  assert(a is double && b is double, 'a and b should be of type double');
  const operation = MathOperation.add;
  final result = calculate(a, b, operation);
  assert(result == 47, 'Something went wrong with your calculate function');
  printResult(operation, result);
}

double calculate(double a, double b, MathOperation operation) {
  switch (operation) {
    case MathOperation.add:
      return a + b;
    case MathOperation.substract:
      return a - b;
    case MathOperation.multiply:
      return a * b;
    case MathOperation.divide:
      return a / b;
  }
}

void printResult(MathOperation operation, double result) {
  switch (operation) {
    case MathOperation.add:
      return print('The result of a + b is $result');
    case MathOperation.substract:
      return print('The result of a - b is $result');
    case MathOperation.multiply:
      return print('The result of a * b is $result');
    case MathOperation.divide:
      return print('The result of a / b is $result');
  }
}
```

And the explanation of why they have to be of type `double` is because if we would use `int` integers for `a` and `b`, the division will result in a `double`.

Also, I leave that `assertion` in the solution so that you can see it but Dart already warns us that it is not necessary because through the _static check_, he knows that they are `double`.

And here is a little task for you. You may remember from your time at school that if there is one thing we cannot do in mathematics, it is divide by zero. Try what happens when you assign `0` to your variables. Wouldn't it be interesting then to foresee that possibility?

Finally, we could have made a function to join both operations but.... BUT.... 🧐 Exactly... you already know that __a function as a variable must have one and only one reason to exist__. This is something we will see in the future when we learn about _SOLID_, which basically refers to writing clean, simple and easy to maintain code. Having every piece of our code have only one reason to exist refers to the first letter of the _SOLID_ acronym, _Single responsibility_.
