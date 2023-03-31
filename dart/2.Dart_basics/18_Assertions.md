# Assertions

We said that we were going to learn from the beginning how to write code from the tests, from the end of the code to the beginning, in order to save us a lot of problems in the future.

As we progress in the course, we are not only trying to install in our minds the way to do it but we are learning new tools that allow us to do it in a better manner and this is the case of the _assertions_.

An _assertion_, __is a _statement___, a piece of code that is going to do something. It __evaluates a condition__ and analyzes whether that condition is __true or false__: if it is _false_, it terminates the execution of the program and throws an _exception_ (errors that indicate that something unexpected happened). What if the condition is __true__?

What do you think will happen with the following lines? 💀 Do you dare to predict which ones will throw exceptions?

1. `assert(1 < 100)`.
2. `assert(101 < 100)`
3. `assert(true)`
4. `assert(false)`
5. `assert(1 == 1)`
6. `assert('Mauro' == 'Mauro')`
7. `assert(null == null)`
8. `assert('Mauro' != 'Mauro')`
9. `assert(1 != 2)`

__💀 Solutions__:

1. `assert(1 < 100)`.
2. `assert(101 < 100)` // Exception
3. `assert(true)`
4. `assert(false)` // Exception
5. `assert(1 == 1)`
6. `assert('Mauro' == 'Mauro')`
7. `assert(null == null)`
8. `assert('Mauro' != 'Mauro')` // Exception
9. `assert(1 != 2)`

Perfect! Now that we understand a little more, I can tell you that we can also define what we want it to say when the evaluation results in _false_. However, let's put it in context so we can see its huge usefulness.

Let's suppose we are making a web page that can only be viewed by those who are of legal age. Then we could make an _assertion_ to throw an _exception_ if the user is a minor and tries to enter the page:

```dart
void main() {
    int userAge = 15;
    int ageLimit = 18;
    assert(userAge >= ageLimit, 'User must have at least 18 years' ); // The user must be at least 18 years old.
}
```

If you run this code, you will notice that the exception is triggered but with the text that we entered. This is very useful and we are getting closer and closer to creating real tests! 😄
