# Escaping_o escape de caracteres

Cuando vimos _interpolation_ dijimos que podíamos utilizar para hacerlo, _single-quotes_ ('') y _double-quotes_ (""). Qué diferencia habría?

Imaginemos que queremos imprimir en inglés el texto 'Yo soy Mauro', en inglés _I'm Mauro_, sin guardarlo en ninguna variable. Cómo representarían ese `String`? 💀 Vayan a probarlo!

Qué sucedió? Intentaron representarlo de esta manera?: `print('I'm Mauro');`. Si hicieron esto, seguramente se les llenó la consola de errores! Por qué? Porque estamos empezando la interpolación con una comilla simple (_single-quotes_) y luego introducimos otra para la abreviación del verbo (_I'm_). Allí, Dart entiende que terminamos con lo que queremos imprimir y no entiende nada de lo que pasa luego.

Una de las formas de resolverlo sería en lugar de utilizar comillas simples para envolver toda la cadena de texto, utilizar comillas dobles o _double-quotes_. 💀 Prueben ustedes primero! Se vería algo así: `print("I'm Mauro");`. Ahora pueden ver que ya no tenemos errores en la consola y se imprime correctamente. Sin embargo, tenemos otra forma de resolverlo: _String escaping_.

## `String` _escaping_ o escape de `String`

Existen valores especiales en Dart y en este caso, valores especiales cuando de interpolar se trata. Se acuerdan que utilizábamos el signo \$ para hacer operaciones o imprimir el valor de una variable dentro de una interpolación? Qué pasa si queremos imprimir en inglés algo como 'Tengo $50' (_I have \$50)_. En ese caso, nos ayuda rodear el `String` con _double-quotes_? 💀 Prueben!

Exacto! No nos sirve! Para ello debemos utilizar un caracter especial para _escapar_ otros caracteres especiales para que puedan ser impresos, como si se les hubiera quitado su superpoder de caracter especial! 😂 Este caracter es el _backslash_ o barra inversa invertida: '\\'.

La forma de hacerlo entonces sería `print('I have \$50')` y se ve completo de esta manera.

```dart
void main() {
   print('I have \$50'); // I have $50
}
```

Qué pasa finalmente si ustedes quieren imprimir '¯\\_(ツ)_/¯'? Esto recibe el nombre de Kaomoji o Arte Emoji ASCII y van a ver que si lo hacen sin escapar nada, nuestro personaje va a perder su brazo izquierdo! 🥶. 💀 Utilicen lo que ya saben para escapar el caracter correcto e imprimir el personaje con todos sus miembros! 😳

```dart
void main() {
   print('¯\\_(ツ)_/¯');
}
```

Y cuando les dije finalmente, me olvidaba de lo siguiente: qué sucede si queremos imprimir un _path_ del sistema operativo Windows: 'C:\Windows\System32\AnotherFolder\AndAnother\And\So\On'? Deberían escapar cada una de esas barras inversas invertidas (_backslash_)! Una pesadilla! 😵‍💫 Por suerte, tenemos una forma más de expresar `String`, y es definiéndola como una `String` cruda o _raw_ agregándole una 'r' antes del _String delimiter_ o delimitador de la cadena de texto.

```dart
void main() {
   print(r'C:\Windows\System32\AnotherFolder\AndAnother\And\So\On');
}
```

## Comillas simple o dobles?

La mayoría del código escrito en Dart por ahí, utiliza comillas simples y esa es la convención que nosotros solemos utilizar y que también recomendamos. Sin embargo, __lo más importante es ser coherentes y consistentes__ a lo largo de nuestros proyectos. Si ingresás en un proyecto que utiliza _double-quotes_, procurá seguir con ellas para mantener la cohesividad de todo el código.

## 💪 adivinando el futuro

__Requirement__: escriban tratando de predecir lo que va a imprimir la consola si introducimos el siguiente código:

```dart
void main() {
  int a = 10;
  print(a);
  print('$a');
  print('\$a');
  print('\\$a');
  print('\$$a');
}
```

__💀 Solución__:

```dart
void main() {
  int a = 10;
  print(a);      // 10
  print('$a');   // 10
  print('\$a');  // $a
  print('\\$a'); // \10
  print('\$$a'); // $10
}
```
