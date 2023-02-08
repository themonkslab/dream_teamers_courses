# _Comments_

Comments are a _feature_ that any programming language has and allow us to __make code explanations__ (_documentation_), guides for other developers or ourselves, or even remind us of future tasks; __all of them will be omitted by the compiler__.

There are __two types of _comments_: _single-line_ (with two subtypes) and _multi-line_.__ Let's see them!

## _Single-line comments_

We can start a _single-line_ comment by adding either `//` or `///`. At first sight, they would seem to bring no difference however try the following (💀):

1. Write in Dartpad the code below.
2. Click on the word `main`.
3. Look in the lower quadrant of the right column, the one that says _Documentation_ if something appeared!

```dart
// entry point of a Dart program
void main() {}
```

Now try the same thing but instead of using two slashes to make the comment, use three. What happened?

```dart
/// entry point of a Dart program
void main() {} 
```

When using three slashes (`///`), Dart automatically generates a documentation __which in Dartpad you see in that place but in code writers will be able to see if you hover over it, which is__ extremely useful for people who read our code or for when we are reading code from other generous developers__ who took the time to explain us how their code is written and why!

On the other hand, it is __very common to use the double slashes for notes to ourselves or _TO DO___ for tasks that we must perform and in that case, Dartpad also recognizes it and reminds us of those tasks:

```dart
/// entry point of a Dart program
void main() {
    // just a comment
    // TODO a task that Dartpad will highlight for us!
} 
```

Furthermore, __code editors can enhance how comments look__, add extensions to do specific things with them, and so on. I share this for you to see comments inside a _Flutter_ documentation:

![Comentarios en una documentación](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/16.1_comentarios_vida_real.png)

To finish with these single line comments, I could add that they are also useful to omit or skip some operation, variable or whatever you need. This could be usefull for example when testing.
In the following example, we can see how we temporarily omit the code `print('Program started');`.

```dart
void main() {
    // print('Program started');
    String apiVersion = '2.3';
    // TODO: increment in one when X is implemented
}
```

## _Multi-lines comments_

They are __used when what we want to leave as a comment is longer__. To do this, we start the text block with `/*`, enter our big comment and then close it with `*/`. Note that to maintain alignment, we use `*` at the beginning of each line of the block but it is not necessary to do so:

```dart
void main() {
    // print('Program started');
    String recipeVersion = '2.3';
    // TODO: increment in one when without TACC is implemented
    /* Version 2.4 will include:
    * - Base made with rice
    * - 0 sugar
    * - 0 fat
    * Expected to be super popular!
    */ 
}
```

## When to use comments and why

This issue is hotly debated in the community and may change depending on what you are writing but in general terms, we think that:

- It is __useful__ to write comments that __explain why a piece of code does not follow conventions__, if that is not clear from the context.

- It is __not useful__ to write comments that __explain what we are doing__ since that __should be clear from our code__. If our code is not clear, then we should rewrite it. For this, remember that the most important thing is __how we name__ variables, methods, classes, etc, doing so in a way that __describes precisely what we are trying to do__ with it.
