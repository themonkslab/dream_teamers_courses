# _if/else statements_

Suppose we are at the entrance of a museum and we want to write a program that does the following:

_Pseudo code_:

```dart
// If the person is under 16
//      Print a junior's ticket
//      Charge $100
// If the person is greater than or equal to 60
//      Print a senior ticket
//      Charge $50
// If not
// Print a regular ticket
//      Charge $200
// To everyone say: 'Enjoy your visit'.
```

Let's see how we can translate this into code.

First, we will start with what we need and what will always happen no matter the case:

1. We need the visitor's age.
2. We need a check that we have entered the age correctly.
3. We will always greet everyone, regardless of their age.

```dart
void main() {
    const visitorsAge = 10;
    assert(visitorsAge > 0, 'Age should be at least 1');
    print('Enjoy your visit!');
}
```

💀 Here, what do you imagine happens if you enter a 0 or negative number in `visitorsAge`? Give it a try!

Then we can start translating the first _if_:

```dart
void main() {
    const visitorsAge = 10;
    assert(visitorsAge > 0, 'Age should be at least 1');
    // If the person is under 16
    if(visitorsAge < 16) {
        // Print a junior ticket
        print('Junior ticket');
        // Charge $100
        print('Price is \$100');
    }
    // I will always greet you! 😄
    print('Enjoy your visit!');
}
```

💀 What happens if you enter a number that is less than 16? And if you enter a larger one?

The first thing that happens is an evaluation in the `(...)` and if it results in `true` (if the condition is fulfilled), it enters inside the `{...}` and executes what is found there, otherwise it skips the _block_ of code and executes what follows.

Then, in the case of entering an age lower than 16, it enters, executes the code and then goes to the end which does not have a condition, and executes the last command: `print('Enjoy your visit!`); if the age we enter is higher, it skips that block and jumps to the end.

Let's finish it!

```dart
void main() {
    const visitorsAge = 10;
    assert(visitorsAge > 0, 'Age should be at least 1');
    // If the person is under 16
    if(visitorsAge < 16) {
        // Print a junior ticket
        print('Junior ticket');
        // Charge $100
        print('Price is \$100');
    // If the person is greater than or equal to 60
    } else if (visitorsAge >= 60) {
        // Print a senior ticket
        print('Senior ticket');
        // Charge $50
        print('Price is \$50');        
    // If not
    } else {
        // Print a regular ticket
        print('Regular ticket');
        // Charge $200
        print('Price is \$200');         
    }
    // I will always greet you! 😄
    print('Enjoy your visit!');
}
```

We could write the same code without the `else-if` or the `else` but the above makes it clearer! 💀 How would it be done with just `if`?

```dart
void main() {
    const visitorsAge = 10;
    assert(visitorsAge > 0, 'Age should be at least 1');
    // Si la persona es menor de 16
     if(visitorsAge < 16) {
        // Print a junior ticket
        print('Junior ticket');
        // Charge $100
        print('Price is \$100');
    // If the person is greater than or equal to 60
    }
    if (visitorsAge >= 60) {
       // Print a senior ticket
        print('Senior ticket');
        // Charge $50
        print('Price is \$50');       
    // If not
    }
    if (visitorsAge > 15 && visitorsAge < 60){
        // Print a regular ticket
        print('Regular ticket');
        // Charge $200
        print('Price is \$200');         
    }
    // I will always greet you! 😄
    print('Enjoy your visit!');
}
```

Go stretch those legs a bit, cool your head and come back for a exercise!

## 💪 Financial situation

__Requirement__: Write a code that takes into account two variables: how much money you earned in the month and how many expenses you have, and then print if you can save anything, if you owe something, or if your monthly balance did not change.

---

__💀 Solution__:

_Pseudo code_, reverse mode:

- Print according to financial balance:
    1. if I can save money
    2. If I owe money
    3. If I am equal to the previous month
- Calculate ending balance.
- Store what I earned and what I spent, making sure I entered the numbers correctly.

_Código_:

```dart
void main() {
    double netSalary = 600;
    assert(netSalary > 0, 'The amount should be greater than 0');
    double expenses = 430;
    assert(expenses > 0, 'The amount should be greater than 0');

    double finalBalance = netSalary - expenses;

    if(finalBalance > 0) {
        print('😃 I can save money!');
    } else if(finalBalance < 0) {
        print('😅 I am in debt!');
    } else {
        print('🤨 I have to earn more!');
    }
}
```
