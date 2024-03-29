# Líneas múltiples de texto o Multilines

Supongamos que queremos imprimir un extracto de una hermosa poesía llamada "Deja las letras y deja la ciudad" de Juan L. Ortiz (🤓), cómo lo harían?

> Vamos a buscar, amigo, a la virgen del aire…
> Yo sé que nos espera tras de aquellas colinas
> en la azucena del azul…
> Yo quiero ser, amigo,
> uno, el más mínimo, de sus sentimientos de cristal…
> o mejor, uno, el más ligero, de sus latidos de perfume…
> No estás tú también
> un poco sucio de letras y un poco sucio de ciudad?

💀 Pruébenlo!

Bien! La primer solución podría ser algo como lo siguiente:

```dart
void main() {
  print('Vamos a buscar, amigo, a la virgen del aire…');
  print('Yo sé que nos espera tras de aquellas colinas');
  print('en la azucena del azul…');
  print('Yo quiero ser, amigo,');
  print('uno, el más mínimo, de sus sentimientos de cristal…');
  print('o mejor, uno, el más ligero, de sus latidos de perfume…');
  print('No estás tú también');
  print('un poco sucio de letras y un poco sucio de ciudad?');
}
```

## DRY

Se pronuncia como 'drai' y dicha [sigla](https://www.upb.edu.co/es/central-blogs/ortografia/diferencias-entre-sigla-acronimo) refiere a los términos _Don't repeat yourself_ o no te repitas a vos mismo. Es una filosofía de definición de procesos que intenta __reducir la repetición mediante patrones, evitando la dificultad para mantener el código y mejorarlo__.

En el caso anterior vemos que no hacemos más que repetir el método `print`. Tendríamos alguna forma de mejorarlo? _Again_ (otra vez), 💀 dedíquenle un tiempo a probar cómo harían para imprimir ese texto pero utilizando solamente un método `print`.

La siguiente, podría parecer una solución:

```dart
void main() {
      print('Vamos a buscar, amigo, a la virgen del aire…'
  'Yo sé que nos espera tras de aquellas colinas'
  'en la azucena del azul…'
  'Yo quiero ser, amigo,'
  'uno, el más mínimo, de sus sentimientos de cristal…'
  'o mejor, uno, el más ligero, de sus latidos de perfume…'
  'No estás tú también'
  'un poco sucio de letras y un poco sucio de ciudad?');
}
```

Qué sucede sin embargo en la consola? Se imprime todo en una sola línea, una práctica poco ortodoxa para representar poesía.

Lo que podríamos hacer para solucionarlo, es introducir saltos de línea, utilizando el _backslash_ que ya conocemos más la letra 'n' de _new line_ o nueva línea donde querríamos que salte y _wrappear_ o envolver todas las líneas en un solo juego de _single-quotes_. Algo así:

```dart
void main() {
      print('Vamos a buscar, amigo, a la virgen del aire…\nYo sé que nos espera tras de aquellas colinas\nen la azucena del azul…\nYo quiero ser, amigo,\nuno, el más mínimo, de sentimientos de cristal…\no mejor, uno, el más ligero, de sus latidos de perfume…\nNo estás tú también\nun poco sucio de letras y un poco sucio de ciudad?');
}
```

Ahora sí podemos ver en la consola lo que intentamos desde un principio aunque podría mejorarse, ya que por ejemplo, necesitarían una pantalla ultra ancha para poder ver todo este código cómodamente 😅

## Multilines, implementación

Ya mencionamos que teníamos tres maneras de darle valor a una `String`: _single-quotes_, _double-quotes_ y _multilines_, pero posiblemente no recordemos este último. Básicamente nos permite representar el texto tal como lo escribimos, incluyéndose de forma automática, los saltos de líneas. Lo único que tenemos que hacer es rodearlo con tres comillas simples o dobles al principio y tres al final. 💀 Hacen un intento de solucionar el problema anterior con líneas múltiples?

La solución sería algo así y díganme si no es mucho más fácil de leer:

```dart
void main() {
    print('''Vamos a buscar, amigo, a la virgen del aire…
Yo sé que nos espera tras de aquellas colinas
en la azucena del azul…
Yo quiero ser, amigo,
uno, el más mínimo, de sentimientos de cristal…
o mejor, uno, el más ligero, de sus latidos de perfume…
No estás tú también
un poco sucio de letras y un poco sucio de ciudad?''');
}
```

## Nota sobre `\`

Hay otras combinaciones con `\`como `\t` para introducir una tabulación. Por ejemplo en el código anterior podríamos agregar algunas tabulaciones:

```dart
void main() {
    print('''\tVamos a buscar, amigo, a la virgen del aire…
Yo sé que nos espera tras de aquellas colinas
en la azucena del azul…
\tYo quiero ser, amigo,
uno, el más mínimo, de sentimientos de cristal…
o mejor, uno, el más ligero, de sus latidos de perfume…
\tNo estás tú también
un poco sucio de letras y un poco sucio de ciudad?
''');
}
```

Vaya a probar cual seria el output!
