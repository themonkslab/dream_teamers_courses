# Our first program

As we told you in the previous article, we want you to learn how to create __tests first__ than anything else, run the program, have the program break and know what code you have to write.

## Requirements?

Since now we're __using _Dartpad_, we don't have specific testing tools__ and so, we're going to be changing the ways in which we create our tests.

We are going to create a series of rules called ___requirements___ that is what we want our program to do. We are going to skip here the tests or error marking that the language itself already uses. For example, if we do not write the _main method_, without writing any test, the language will automatically mark the error; this will happen in many other cases and it is a huge help when we write hundreds of lines of code.

## _Hello world_

This is the simplest program of all and it is almost a _convention_ to start with it: print on the screen "Hello world!" and here is our requirement first:

__Requirement__: print on screen "Hello world!".

To do this, let's write the following lines of code:

```dart
void main() {
    print('hello world')
}
```

What can you see in _Dartpad_? Something like this?

![Missing semicolon](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.1_falta_punto_y_coma.png)

Try running the program without fixing the error as _Dartpad_ recommends.

![Program does not run](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.2_programa_no_corre_falta_punto_y_coma.png)

In this case, couldy you see that we didn't have to create any test to make sure that the line has to be written in a certain way, following [certain rules](https://dart.dev/guides/language/language-tour): Dart does it itself.

If you add such a line and run it, we should see the expected result... right? What did the console print? What was the requirement? While you are unconsciously thinking this, let us tell you something else.

## Format

If you copied the code the same way I wrote it, you would have done this:

1. void main () {}
2. Entered inside the {}
3. Inside you typed _enter_

What happened? If you didn't do it, delete everything and do it again so you can see for yourself what happens: Dart has a system that __in addition to correcting errors, it can correct how we write, the style__.

So, it adds spaces to indicate more clearly that a piece of code is inside another piece, or colors to differentiate keywords and much more.

Also test what happens if you delete those spaces and run it. You can see that it works perfectly except that it is just harder to read... And you will say "it's the same, those two spaces don't change anything". But see for yourselves: which code do you find easier and more pleasant to see? 🤨

![Format or not format](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.4_no_formateado_vs_formateado.png)

and then click on _Format_ and voila!

![Dart's automatic format](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.3_formato.png)

## Tests?

Can you say that the task is finished? As we said, we have no way to automate the testing process for now, so we'll have to do it ourselves.  Go back to the _requirements_, check your code and then the _output_ in the console. Do you find any difference? Did we get exactly what we asked for?

If you still couldn't tell the difference, look for a little while longer.

🤔

🤷🏻♂️

🤦🏻♂️

Ok! The request said to print "Hello world" and the code we wrote prints "hello world", with the first letter being lowercase instead of uppercase.

Again we have a really basic case and we think it doesn't make much difference but sometimes, in our daily work we think in the same way leaving aside what the person who wrote the request thought with a lot of effort.

If so, the best thing to do would be to contact that person and suggest that our code can solve their problem better or that it doesn't make much of a difference.

__We try that you not only learn to write quality code but also acquire good practices__ for yourselves and your colleagues and have the opportunity to love this profession as we do!
