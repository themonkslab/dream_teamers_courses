# Break and continue statements

_Break_ and _continue_ are two mechanisms we have to alter the flow within _for_ and _while_ _loops_.

We are going to use the last exercise with some changes:

1. We are going to change the condition to go to 16.
2. We are going to add a `print('Done!')` at the end, outside the loop.

```dart
void main() {
    for(var i = 1; i <= 16; i++ ) {
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
    print('Done!');
}
```

## Break

It allows us to __stop, exit__ the _loop_. If we add a _break_ as soon as the loop starts, what will happen? It exits and prints _Done!_ Also, you may notice that Dartpad understands that the code inside the loop is not going to be executed and is kind enough to tell us that it is _dead code_ with an underscore.

```dart
void main() {
    for(var i = 1; i <= 16; i++ ) {
        break;
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
    print('Done!');
}
```

Instead, if we now move the _break_ into the first _if_ and then the `print`, we can see that it prints everything but the number 16:

```dart
void main() {
    for(var i = 1; i <= 16; i++ ) {
        if(i % 3 == 0 && i % 5 ==0) {
            print('fizz buzz');
            break;
        } else if(i % 3 == 0) {
            print('fizz');
        } else if(i % 5 == 0) {
            print('buzz');
        } else {
            print(i);
        }
    }
    print('Done!');
}
```

## Continue

When we insert this statement, we force the _loop_ to __jump to the next iteration (`i++`)__. Let's put it into our exercise:

```dart
void main() {
    for(var i = 1; i <= 16; i++ ) {
        if(i % 3 == 0 && i % 5 ==0) {
            print('fizz buzz');
            break;
        } else if(i % 3 == 0) {
            print('fizz');
            continue;
        } else if(i % 5 == 0) {
            print('buzz');
            continue;
        } else {
            print(i);
        }
    }
    print('Done!');
}
```

In this case, you can see that nothing changes because although once we get to our first _continue_, it advances to the next iteration, our `else if` do more or less the same because once I enter one of them, I can not enter the rest because they do not meet the condition. So how about removing them?

```dart
void main() {
    for(var i = 1; i <= 16; i++ ) {
        if(i % 3 == 0 && i % 5 ==0) {
            print('fizz buzz');
            break;
        }
        if(i % 3 == 0) {
            print('fizz');
            continue;
        }
        if(i % 5 == 0) {
            print('buzz');
            continue;
        }
        print(i);
    }
    print('Done!');
}
```

Now we obtain the same result as we did before with the `else if` but by using the `continue`.

__To understand this and any kind of _loop_,__ you just have to relax and __advance iteration by iteration__ and see what happens at each round.

__Both _break_ and _continue_ are not always necessary__: in our example we can accomplish the same thing more beautifully and simply with `else if`. Use them only if needed.
