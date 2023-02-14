# Static and dynamic languages

To understand the difference between one and the other, let's see what happens when we write a code:

![Proceso desde el código fuente](https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/2.1_estaticos_dinamicos.png)

__The first thing__ we do is to introduce a _source code_: so far it would be the main and what we write inside `main(){...here...}`.

__Next, that code must be compiled__ according to the type of processor or platform that will run it.

And __finally it is run__ and __as a result__ we see an __application or a web__.

A language that is _statically typed_, checks types at _compile time_. What does it mean and how can we see it in practice?

![Errores al compilar](https://raw.githubusercontent.com/themonkslab/courses/main/dart/3.Sistema_de_tipado/2.2_errores_al_compilar.png)

Here we can see that if we declare a variable of type `int` then we cannot assign it a value that is of another type, for example one of type `String`.

Thanks to the fact that __Dart is a statically typed language__, at _compile time_ it does a type check and throws an error without letting us compile the application.

On the other hand, a language that is _dynamically typed_, does it _on the fly_ or what is the same _at runtime_.

## Advantages of typed languages

1. It allows us to __discover _bugs_ or errors related to the _type___ at compile time and saves us a lot of work.
2. It forces us to write __more readable code__, since we can trust that the variables will receive the type of value that we declare them to be.
3. It ensures a __more maintainable code__ by letting us know when something is changed, in which case Dart warns us if something might break along the way.
4. It delivers a more efficient __app__ since the compiler knows the structures and fixed patterns in advance and can make better optimizations.
