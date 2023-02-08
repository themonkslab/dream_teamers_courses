# Nuestro primer programa

Como les contamos en el artículo anterior, queremos que aprendan a crear __tests primero__ que nada, ejecuten el programa, el programa se rompa y sepan qué código tienen que escribir.

## Requerimientos?

Como ahora estamos __utilizando _Dartpad_, no contamos con herramientas específicas de testing__ y por ello, vamos a ir cambiando las formas en las que creamos nuestros tests.

Vamos a crear una serie de reglas llamadas __requerimientos o _requirements_: es lo que queremos que nuestro programa haga__. Vamos a obviar aquí los tests o marcado de errores que ya el mismo lenguaje utiliza. Por ejemplo, si no escribimos el _main method_, sin que escribamos ningún test, el lenguaje nos marca automáticamente el error; esto sucederá en muchos otros casos y es una enorme ayuda cuando escribamos cientos de líneas de código.

## _Hello world_ u hola mundo

Es el programa más sencillo de todos y es casi una _convention_ o convención empezar con él: imprimir en pantalla "Hola mundo!" y he allí nuestro requerimiento primero:

__Requirement__: imprimir en pantalla "Hola mundo".

Para ello, vamos a escribir las siguientes líneas de código:

```dart
void main() {
    print('hola mundo')
}
```

Qué pudieron ver en _Dartpad_? Algo así?

![Falta punto y coma](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.1_falta_punto_y_coma.png)

Prueben correr el programa sin solucionar el error como _Dartpad_ se los recomienda.

![Programa no corre](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.2_programa_no_corre_falta_punto_y_coma.png)

En este caso, pudieron ver que no tuvimos que crear ningún test para asegurarnos de que la línea tiene que estar escrita de cierta manera, siguiendo [ciertas reglas](https://dart.dev/guides/language/language-tour)?: Dart lo hace él mismo.

Si ustedes agregan dicha línea y lo corren, deberíamos ver el resultado esperado... verdad? 🤔 Qué imprimió la consola? Cuál era el requerimiento? Mientras piensan esto inconscientemente, les contamos algo más.

## Formato

Si ustedes copiaron el código de la misma forma que yo lo escribí, habrían hecho esto:

1. void main () {}
2. Entraron dentro de los {}
3. Dentro teclearon _enter_

Qué pasó? Si no lo hicieron, borren todo y háganlo de vuelta así pueden notar ustedes mismos qué sucede: Dart cuenta con un sistema que __además de corregir los errores, puede corregir cómo escribimos, el estilo__.

Así, agrega espacios para indicar más claramente que un pedazo de código está dentro de otro pedazo, o colores para diferenciar palabras clave y mucho más.

Prueben también qué sucede si borran esos espacios y lo corren. Pudieron ver que funciona perfectamente salvo que es apenas más difícil de leer? Y ustedes dirán 'son dos espacios, no es más difícil'. Pero compruébenlo ustedes mismos: qué código les parece más fácil y placentero de ver? 🤨

![Formato o no formato](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.4_no_formateado_vs_formateado.png)

 y luego hacen click en _Format_ y voilà!

![Formato automático de Dart](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.3_formato.png)

## Tests?

Podrían decir que la tarea está terminada? Como dijimos, no tenemos forma de automatizar el proceso de testing sino que tendremos que hacerlo nosotros mismos por ahora. Vuelvan a los _requirements_, revisen su código, luego el _output_ en la consola. Encuentran alguna diferencia? __Logramos exactamente lo que estaba pedido?__

Si no pudieron aun notar la diferencia, busquen un ratito más.

🤔

🤷🏻‍♂️

🤦🏻‍♂️

Ok! El requerimiento decía imprimir "Hola mundo" y el código que escribimos imprime "hola mundo", siendo la primer letra en minúscula cuando debiera ser en mayúscula.

Nuevamente nos encontramos con un caso super simple y pensamos que no genera mucha diferencia pero a veces, en el trabajo cotidiano pensamos de la misma forma dejando de lado lo que la persona que escribió el requerimiento pensó con mucho esfuerzo.

De ser así, lo mejor sería contactarte con esa persona y sugerirle que nuestro código puede solucionar mejor su problema o que no hace mucha falta marcar la diferencia.

__Tratamos de que no solamente aprendan a escribir código de calidad sino también absorvan buenas prácticas__ para con ustedes y sus compañeros y compañeras y tengan la oportunidad de amar esta profesión como nosotros lo hacemos!


-------------------------------------------------


# Our first program

As we told you in the previous article, we want you to learn how to create __tests first__ than anything else, run the program, have the program break and know what code you have to write.

## Requirements?

Since now we're __using _Dartpad_, we don't have specific testing tools__ and so, we're going to be changing the ways in which we create our tests.

We are going to create a series of rules called **_requirements_**: it is what we want our program to do. We are going to skip here the tests or error marking that the language itself already uses. For example, if we do not write the _main method_, without writing any test, the language will automatically mark the error; this will happen in many other cases and it is a huge help when we write hundreds of lines of code.

## _Hello world_

This is the simplest program of all and it is almost a _convention_ to start with it: print on the screen "Hello world!" and here is our requirement first:

__Requirement__: print on screen "Hello world!".

To do this, let's write the following lines of code:

````dart
void main() {
    print('hello world')
}
```

What could you see in _Dartpad_? Something like this?

![Missing semicolon](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.1_falta_punto_y_coma.png)

Try running the program without fixing the error as _Dartpad_ recommends.

![Program does not run](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/3.2_programa_no_corre_falta_punto_y_coma.png)

In this case, couldy you see that we didn't have to create any test to make sure that the line has to be written in a certain way, following [certain rules]?(https://dart.dev/guides/language/language-tour)?: Dart does it itself.

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

