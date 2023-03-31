# Enumerations

Let us recall the previous example of the race:

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

In this case, we know the number of medals we have available, so the total number of cases is limited. How nice it would be to have some __tool that allows us to create a type that lists possibilities when__ these __are limited and few__! 😁

That's right, that's what _enumerations_ are! We create them as follows:

1. We declare them with `enum`.
2. Then the name of the _type_ with the first letter in _uppercase_.
3. We open curly brackets,
4. And inside we list the values.

Like this: `enum Medal { gold, silver, bronze, noMedal }`

But how do we use them? In conjunction with the `switch` _statements_, they are a super powerful tool. First we create the `Medal` type outside our `main` with the possible values, then we declare and initialize a variable of that `Medal` type with the value we want and then we use it as the variable we are going to observe. As the cases are limited according to that type (4, one for each medal), then we do not need a `default` since we would never fall there:

```dart
enum Medal { gold, silver, bronze, noMedal }

void main() {
    final medal = Medal.gold;
    switch (medal) {
        case Medal.gold:
            print('Gold! 🤩');
            break;
        case Medal.silver:
            print('Silver! 😁');       
            break;
        case Medal.bronze:
            print('Bronze! 😊');
            break;
        case Medal.noMedal:
            print('No medal! Try again! 💪');
            break;
    }
}
```

Thus, we define a `Medal` type that __has a lot of meaning and all our code becomes easier to understand__. In addition, we can __use the helps__ provided by Dartpad in this case:

![Ayuda en enums](https://raw.githubusercontent.com/themonkslab/courses/main/dart/4.Flujo_de_control/7.1_ayuda_enums.png)

## 💪 Brainstorming enums

__Requirement__: think of and write 5 enums that could be used in cases like the one above. No need to write any `switch`; just the `enums`.

__Extra help__: I leave you another example: days of the week.

---

__💀 Solution__:

```dart
enum Suits { hearts, diamons, clubs, spades}
enum Weather { sunny, cloudy, rainy, snowy }
enum OperatingSystems { windows, linux, mac }
enum MeansOfTransport { car, bycicle, motorcycle, plane, boat}
enum MostUsedLanguages { english, spanish, chinese}
```

## _Trailing comma_

Easy! 💀 I want to try typing these two _in_ exactly as I leave them (paying attention to the commas), click 'Format' on Dartpad and see what happens:

`enum Weather { sunny, cloudy, rainy, snowy }`
`enum Weather { sunny, cloudy, rainy, snowy, }`

That comma after the last `enum` value is not necessary, but it is __highly recommended__ when it makes it easier to read, because when Dartpad (and then our code editor) formats our code, it will __align as a column__ instead of a row. This makes it much more readable in most cases and this applies not only to `enum` but to __any list of values separated by a comma!__.

## A little bit more about `enum`

Notice what happens if you try to print an `enum` value:

```dart
enum Medal { gold, silver, bronze, noMedal }

void main() {
    final medal = Medal.gold;
    print(medal); // Medal.gold
    switch (medal) {
        case Medal.gold:
            print('Gold! 🤩');
            break;
        case Medal.silver:
            print('Silver! 😁');       
            break;
        case Medal.bronze:
            print('Bronze! 😊');
            break;
        case Medal.noMedal:
            print('No medal! Try again! 💪');
            break;
    }
}
```

And you were expecting the name to be printed! Well, for that (💀), just add a dot at the end of the `medal` variable to call your methods and see what happens!

You can use the `medal.name` to print out the name you assigned to the variable instead of having it print out for example, `Medal.gold`.

In addition to this, we could see all the values in our `enum` by calling them like this: `Medal.values` and even call one in particular, like this: `Medal.values.byName('silver')`.

## 💪 Calculator version 0.0.1

__Requirement__: write a calculator with the base code I give you, using a _switch statement_ and _assertions_ to check that the results are correct. You have to write 4 examples, one for each operation and the results should be: 6, 2, 8 and 2.

__Source code__:

```dart
enum Operation {plus, minus, multiply, divide,}

void main() {
    const a = 4.0;
    const b = 2.0;
    const op = Operation.plus;
    final double result;
    // TODO: write the rest below
}
```

---

__💀 Solution for result == 6__:

```dart
    enum Operation {plus, minus, multiply, divide,}

void main() {
    const a = 4.0;
    const b = 2.0;
    const op = Operation.plus;
    final double result;
    switch(op) {
        case Operation.plus:
            result = a + b;
            break;
        case Operation.minus:
            result = a - b;
            break;
        case Operation.multiply:
            result = a * b;
            break;
        case Operation.divide:
            result = a / b;
            break;
    }
    assert(result == 6);
    print('Result: $result');
}
```

__💀 Solution for result == 2 ('-')__:

```dart
    enum Operation {plus, minus, multiply, divide,}

void main() {
    const a = 4.0;
    const b = 2.0;
    const op = Operation.minus;
    final double result;
    switch(op) {
        case Operation.plus:
            result = a + b;
            break;
        case Operation.minus:
            result = a - b;
            break;
        case Operation.multiply:
            result = a * b;
            break;
        case Operation.divide:
            result = a / b;
            break;
    }
    assert(result == 2);
    print('Result: $result');
}
```

__💀 Solution for result == 8__:

```dart
    enum Operation {plus, minus, multiply, divide,}

void main() {
    const a = 4.0;
    const b = 2.0;
    const op = Operation.multiply;
    final double result;
    switch(op) {
        case Operation.plus:
            result = a + b;
            break;
        case Operation.minus:
            result = a - b;
            break;
        case Operation.multiply:
            result = a * b;
            break;
        case Operation.divide:
            result = a / b;
            break;
    }
    assert(result == 8);
    print('Result: $result');
}
```

__💀 Solution for result == 2 ('/')__:

```dart
    enum Operation {plus, minus, multiply, divide,}

void main() {
    const a = 4.0;
    const b = 2.0;
    const op = Operation.divide;
    final double result;
    switch(op) {
        case Operation.plus:
            result = a + b;
            break;
        case Operation.minus:
            result = a - b;
            break;
        case Operation.multiply:
            result = a * b;
            break;
        case Operation.divide:
            result = a / b;
            break;
    }
    assert(result == 2);
    print('Result: $result');
}
```
