# Switch statement

Suppose we organize a race and we want to award prizes according to the position in which each competitor arrives. We could do something like this:

```dart
void main() {
    const pos = 1;
    if (pos == 1) {
        print('Gold! 🤩');
    } else if (pos == 2) {
        print('Silver! 😁');       
    } else if (pos == 3) {
        print('Bronze! 😊');
    } else {
        print('No medal! Try again! 💪');
    }
}
```

This works perfectly but we could have a clearer way to write it: _switch statements_.

It consists of __defining a variable__ that we are going to observe and __setting up scenarios or cases according to the value__ of that variable. __At the end of each case__ we must __include a way to end the _loop_.__ The most common one is to do it with a _break_ (but there are others! 😉). And __finally__, the last of the cases __(_default_)__ is a _fallback_ or workaround in case none of the above conditions are met.

```dart
void main() {
    const pos = 1;
    switch (pos) {
        case 1:
            print('Gold! 🤩');
            break;
        case 2:
            print('Silver! 😁');       
            break;
        case 3:
            print('Bronze! 😊');
            break;
        default:
            print('No medal! Try again! 💪');
            break;
    }
}
```

While we achieve the same as with the `if`, it is clearer to read when you get used to it, but most importantly, __it will make a lot of sense when you use _enumerations_!__.
