# Initialization and Assignment

We have already seen that in order to store a value, a variable must be declared by defining its type and a name that represents its content: `String myFirstName;`. In this case we are declaring it.

There we only made the variable declaration but it does not contain anything inside. What we've learned to do is, at the same time that we declare it, we initialize it: `String myFirstName = 'Mauro';`.

However, we could do it in two different lines, being careful to use it after it has been assigned.

```dart
void main() {
    String myFirstName;
    myFirstName = 'Mauro';
    print(myFirstName);
}
```

💀 here is a question for you: what do you imagine would happen if the _function_ `print`, was used before having assigned a value to the _variable_ `myFirstName`?

1. It would point out with blue that the code can be improved.
2. It would point out an error with red saying that the variable has to be _assigned_ before being used.
3. It would not point out anything.

The correct answer is number two! And another error would pop up, a reference one now, if you attempt an assignment or call, before it is declared:

```dart
void main() {
    myFirstName = 'Mauro';
    String myFirstName;
    print(myFirstName);
}
```

## Changing values

Suppose that, as we go through the program, at some point, I need the same variable now contains all uppercase characters. What would we do? We could assign another value or content to that variable (luckily it is called _variable_ 😂):

```dart
void main() {
    String myFirstName;
    myFirstName = 'Mauro';
    print(myFirstName); // Mauro
    // one time goes by
    // and another
    // and now we need it to be in uppercase
        myFirstName = 'Mauro'.toUpperCase();
    print(myFirstName); // MAURO
}
```

💀 There is another way to achieve that uppercase assignment. I'll give you a hint and go try it: in this case I used a _method_ on a _literal `String`_. Could you call that method on something else?

```dart
void main() {
    String myFirstName;
    myFirstName = 'Mauro';
    print(myFirstName); // Mauro
    // one time goes by
    // and another
    // and now we need it to be in uppercase
    myFirstName = myFirstName.toUpperCase();
    print(myFirstName); // MAURO
}
```

💀 And to finish off, I want you to do an example but not by reassigning a value to the variable. Suppose we just need to print that value, at that time in uppercase, and then continue to use it in its original version. How would you do that?

```dart
void main() {
    String myFirstName;
    myFirstName = 'Mauro';
    print(myFirstName); // Mauro
    // spend some time
    // and another
    // and now we need it to be in uppercase
    // only when it's printed!
    print(myFirstName.toUpperCase()); // MAURO
}
```
