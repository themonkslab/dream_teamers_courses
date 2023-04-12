# The main method

@Mau Di Bert

A Dart program is valid only if it contains a main method. If not, try deleting everything and see what appears in console. Did you try? 😒 ... 😏 ... 🧐:

![No 'main' method found.](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/2.1_metodo_main_no_encontrado.png).

The main method is __also called _entry point___  of our program and it is the one that will receive all our code.

Now try creating it in the following way by adding the following lines of code:

```dart
void main() {

}
```

And what is that block of text that appears with colors? Instead of showing you an image, now we show you this __block of code__: you can easily copy and paste it, although you know that it won't teach you anything: to learn you have to write every letter of every single code yourself.

However, we wanted to show you this because in the future, if you upload code for someone else to see it, for example in an exercise or in your work, it is advisable to do it this way so that whoever tests your code, can easily run it just by copying and pasting. Otherwise, imagine that whoever wants to help you has to copy thousands of lines and also find out how to give you a hand! 🤣

![Main method written, no more problems!](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/2.2_main_sin_problemas.png)

## TDD or our particular way of teaching us

Did you see what we did?

1. We ran the program without having written a _main method_.
2. that _broke_ it and
3. we _fixed_ it by writing new code, the _main method_.

__This is called _TDD_ or _Test Driven Design_, writing code from tests.__

Although we are not going to use this method all the time, __doing _tests_ of what we write is an invaluable help__: each test works like a little robot that will check that everything works as expected without us having to manually run the whole application, go to the place to do that one thing it should do, that one thing, and finally, the other one! 🕺🏻 __In a matter of seconds we can run thousands of tests that would take days or weeks of manual testing__ and make sure that each new piece we write will fit with the rest.

This is an __industry standard__ when we want to get to work for the first level and __learning it from the start__, is going to make it very natural for you to do it later, without extra effort! 💪
