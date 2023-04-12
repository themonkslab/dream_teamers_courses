# While loop

A _loop_ is an __infinitely repeating process__. In the case of a _while loop_, it repeats as long as a condition we set beforehand is met.

For example, suppose we want to print a count from 1 to 10 and at the end, something to tell us that we are done. We could do this:

```dart
void main() {
    print(1);
    print(2);
    print(3);
    print(4);
    print(5);
    print(6);
    print(7);
    print(8);
    print(9);
    print(10);
    print('Done!');
}
```

However, you already saw that this does not comply with the _DRY, don't repeat your self_, principle, it looks pretty horrible and also, it takes a lot of work. If we use a _while loop_, it would look like this:

```dart
void main() {
    // an int to keep track
    int i = 1;
    while(i < 11) {
        print(i);
        i++;    // this takes care of incrementing
                // the account. Otherwise, we would be left
                // in an infinite loop
                // because 'i' would remain at 1
                // and the condition would always result
                // true
    }
    print('Done!');
}
```

We achieved the same result but with a little bit more class 🧐😵‍💫🤣.

## 💪 Mario world

__Requirement__: Print the following figure:

![Mario exercise](https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/3.1_mario.png)

__Clue__: you can concatenate a `String` as many times (N) as you want (_String multiplication_) like this: 'String' * N.

---

__💀 Solution__:

```dart
void main() {
    const block = 'x';
    var i = 1; 
    while(i < 10) {
        print(block*i);
        i++;
    }
}
```

If we wanted to make a diagram of the _while loop_ it would look like this:

![Diagrama while loop](https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/3.2_while_diagrama.png)
