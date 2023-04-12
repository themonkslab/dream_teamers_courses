# For loop

This type of loop is used to achieve the same thing as the _while loop_ but in a more precise way.

Let's see the solution of the previous exercise but implemented with a _for loop_:

```dart
void main() {
    const block = 'x';
    for(var i = 1; i < 10; i++) {
        print(block*i);
    }
    print('Done');
}
```

Notice that this way, it takes even a couple of lines less! But how does it work?

1. We declare and initialize the variable: `var i = 1;`.
2. We establish the condition that must be fulfilled to remain inside the loop: `i < 10;`.
3. We define what the increaser will be: `i++`.

This way, what is inside the loop (`{...here...}`) will be executed until the condition that we have established, results in `false`.

We would then have a diagram similar to the previous one, except that in this case our _for loop_ explicitly asks for the update (incrementation in this case) of the initialized variable:

![Diagrama for loop](https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/4.1_for_loop_diagrama.png)

## 💪 Fizz buzz

This is a very common type of exercise in job interviews. It includes not only what you already know but also a bit of arithmetic. Have fun!

__Requirement__: Write a program that implements the 'fizz buzz' algorithm:

For a counter (`i`) from 1 to 15
    if `i` is divisible by 3 and 5
        `print` 'fizz buzz
    if `i` is divisible by 3
        `print` 'fizz
    if `i` is divisible by 5
        `print` 'buzz
    otherwise
        `print i`

__Clue__: you will have to use the _modulus operator_ `%` and the _logical AND operator_ `&&`.

---

__💀 Solution__:

```dart
void main() {
    for(var i = 1; i <= 15; i++ ) {
        if(i % 3 == 0 && i % 5 ==0) {
            print('fizz buzz');
        } else if(i % 3 == 0) {
            print('fizz');
        } else if(i % 5 == 0) {
            print('buzz');
        } else {
            print(i);
        }
    }
}
```
