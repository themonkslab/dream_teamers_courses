# _Conditional operator_

Let's say we want to write a program that allows us to enter our age and determine whether we are over or under age. We would do something like this, from end to beginning:

- Print on the screen whether we are over or under age.
- Calculate in a variable if we are over or under age and return it.
- Create a variable to store the result of the operation we will do.
- Save the variable of our age.

Now that we have a __pseudo idea of the steps__, let's order them as requirement:

__Requirement__:

1. Store our age in an `int` variable.
2. Create a `String` variable in which we will store the result.
3. Calculate if we are older or younger.
4. Store it in the result variable.
5. Print it on the screen.

Good! We are going slowly but safely! 😂 We continue little by little:

```dart
void main() {
    int myAge = 38;
    String isUnderAge;
    // 🤨 and now? How do we do the maths?
}
```

We know that the age of majority is 18 years old (at least in Argentina) so we should check if our variable is older or younger than that age limit, right? We could create another variable that stores that age limit since, for example, we could change it according to the country where we are:

```dart
void main() {
    int myAge = 38;
    int underAgeLimit = 18;
    String isUnderAge;
    // 🤨 and now? How do we do the maths?
}
```

Then, we could use the already known operators to see if our age is equal or greater than the age limit, since when we turn 18, we are considered adults: `myAge >= underAgeLimit`.

However, what does it return as a result? 💀
You should already be testing it!

It returns a `bool`! But we want to print some more _user friendly_ message on the console, instead of telling them _true_ or _false_. Ah, if only we had....

## _Conditional operator_ or _Ternary operator_

It allows us to __evaluate an expression as true or false and return the expression we want__ , as long as they are of the same type. We would see something like this:

![Operador ternario](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/15.1_operador_ternario.png)

It would seem to fit us like a glove to finish our little program. 💀 I'm absolutely convinced that before you see what the finished program would look like, you want to try it yourselves!

```dart
void main() {
    int myAge = 38;
    int underAgeLimit = 18;
    String isUnderAge = myAge >= underAgeLimit ? 'Yes. He is an Adult.' : 'No. He is a child.';
    print('Is Mau an adult? $isUnderAge');
}
```

As you can see, we have the program ready... or ... almost ready! 🧐 If we get meticulous, the variable that stores the result is `isUnderAge` which means if it is below the age limit but actually, when I was writing the `print` I realized that I wanted to express if it was an adult or a child and ask it as I did. In order to test it, I went ahead but knowing that I would have to change the `isUnderAge` variable to another one like `isAndAdult`.

This kind of behavior that we all have in order to move faster, usually is not effective most of the time. Now, the program did not fail and we are close to what we want to change. However, this is not always the case, we get entangled in complications and forget what we were supposed to change. Even if I do not succeed most of the time, I still recommend this way.

```dart
void main() {
    int myAge = 38;
    int underAgeLimit = 18;
    String isAnAdult = myAge >= underAgeLimit ? 'Yes. He is an Adult.' : 'No. He is a child.';
    print('Is Mau an adult? $isAnAdult');
}
```
