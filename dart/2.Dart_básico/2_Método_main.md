# El método _main_

@Mau Di Bert

Un programa de Dart es válido solamente si contiene un método main. Sino, prueben borrar todo y ver lo que aparece en consola. Probaron? 😒 ... 😏 ... 🧐:

![Método main no encontrado](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/2.1_metodo_main_no_encontrado.png)

El método main es __también llamado _entry point_ o punto de entrada__ de nuestro programa y es el que va a recibir todo nuestro código.

Prueben ahora crearlo de la siguiente manera agregando las siguientes líneas de código:

``` dart
void main() {

}
```

Ah! Y qué es ese bloque de texto que aparece con colores? En lugar ahora de mostrarles una imagen, les mostramos este __bloque de código__: pueden copiarlo y pegarlo fácilmente aunque ya saben que eso no les va a enseñar nada 🥸: para aprender tienen que escribir ustedes mismos cada letra de cada código. Sin embargo, les queríamos mostrar esto porque a futuro, si ustedes suben código para que alguien más lo vea, por ejemplo en algún ejercicio o en su trabajo, es recomendable hacerlo así para que quien pruebe su código, pueda correrlo fácilmente solo mediante copiar y pegar. Sino, imagínense que quien quiera ayudarlos tiene que copiar miles de líneas además de encontrar cómo darles una mano! 🤣

![Método main escrito, no más problemas!](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/2.2_main_sin_problemas.png)

## TDD o nuestra forma particular de enseñarnos

Vieron lo que hicimos?

1. Corrimos el programa sin haber escrito un _main method_.
2. eso lo _rompió_ y
3. lo _arreglamos_ escribiendo un código nuevo, el _main method_.

__Esto se llama _TDD_ o _Test Driven Design_, escribir código desde los tests.__

Si bien no es que vamos a usar este método todo el tiempo, __el hacer _tests_ de aquello que escribimos es una ayuda invaluable__: cada test funciona como un pequeño robot que va a chequear que todo funciona como esperamos sin tener nosotros que manualmente correr la aplicación entera, ir hasta el lugar para hacer esa cosa que debería hacer, esa otra y finalmente, la otra! 🕺🏻 __En cuestión de segundos podemos correr miles de pruebas que nos llevarían días o semanas de probar manualmente__ y asegurarnos que cada pieza nueva que escribamos, va a encajar con el resto.

Esto es un __estándar en la industria__ cuando queremos llegar a trabajar para el primer nivel y __aprenderlo desde el comienzo__, va a hacer que sea muy natural para vos hacerlo luego, sin esfuerzos extras! 💪


------------------------------------

# The _main_ method

@Mau Di Bert

A Dart program is valid only if it contains a main method. If not, try deleting everything and see what appears in console. Did you try? 😒 ... 😏 ... 🧐:

![No 'main' method found.](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/2.1_metodo_main_no_encontrado.png).

The main method is **also called _entry point_**  of our program and it is the one that will receive all our code.

Now try creating it in the following way by adding the following lines of code:

``` dart
void main() {

}
```

And what is that block of text that appears with colors? Instead of showing you an image , now we show you this __block of code__: you can easily copy and paste it, although you know that it won't teach you anything 🥸: to learn you have to write every letter of every single code yourself. However, we wanted to show you this because in the future, if you upload code for someone else to see it, for example in an exercise or in your work, it is advisable to do it this way so that whoever tests your code, can easily run it just by copying and pasting. Otherwise, imagine that whoever wants to help you has to copy thousands of lines and also find out how to give you a hand! 🤣

![Main method written, no more problems!](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/2.2_main_sin_problemas.png)

## TDD or our particular way of teaching us

Did you see what we did?

1. We ran the program without having written a _main method_.
2. that _broke_ it and
3. we _fixed_ it by writing new code, the _main method_.

__This is called _TDD_ or _Test Driven Design_, writing code from tests.__

Although we are not going to use this method all the time, __doing _tests_ of what we write is an invaluable help__: each test works like a little robot that will check that everything works as expected without us having to manually run the whole application, go to the place to do that one thing it should do, that one thing, and finally, the other one! 🕺🏻 __In a matter of seconds we can run thousands of tests that would take days or weeks of manual testing__ and make sure that each new piece we write will fit with the rest.

This is an __industry standard__ when we want to get to work for the first level and __learning it from the start__, is going to make it very natural for you to do it later, without extra effort! 💪
