# Multilines

Suppose we want to print a piece of a beautiful poem called "Deja las letras y deja la ciudad" by Juan L. Ortiz (🤓), how would you do it?

> Vamos a buscar, amigo, a la virgen del aire…
> Yo sé que nos espera tras de aquellas colinas
> en la azucena del azul…
> Yo quiero ser, amigo,
> uno, el más mínimo, de sus sentimientos de cristal…
> o mejor, uno, el más ligero, de sus latidos de perfume…
> No estás tú también
> un poco sucio de letras y un poco sucio de ciudad?

💀 Try it!

Good! The first solution could be something like this:

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

This refers to the term _Don't repeat yourself_. It's a principle of software development that attempts __to reduce the repetition of software patterns, avoiding the difficulty of maintaining code and improving it__.

In the previous case we can see that we only repeat the `print` method. Is there any way to improve it? _Again_ 💀 spend some time to test how you could print that text by using only one `print` method.

The following, might seem like a solution:

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

However, what happens in the console? It prints everything on a single line, an unusual way to write poetry.

What we can do to solve it, is to introduce line breaks, using the _backslash_ we already know plus the letter 'n' for _new line_ where we want it to jump and wrap all the lines in a unique set of _single-quotes_. Something like this:

```dart
void main() {
      print('Vamos a buscar, amigo, a la virgen del aire…\nYo sé que nos espera tras de aquellas colinas\nen la azucena del azul…\nYo quiero ser, amigo,\nuno, el más mínimo, de sentimientos de cristal…\no mejor, uno, el más ligero, de sus latidos de perfume…\nNo estás tú también\nun poco sucio de letras y un poco sucio de ciudad?');
}
```

Now we can see in the console what we tried from the beginning although it could be improved, since for example, you would need an ultra wide screen to be able to see all this code in a comfortable way 😅

## Multilines, implementation

We already mentioned that we had three ways to give value to a `String`: _single-quotes_, _double-quotes_ and _multilines_, but we may not remember the last one. Basically, it allows us to represent the text as we write it, including automatically the line breaks. All we have to do is to surround it with three single or double quotes at the beginning and at the end. 💀 Do you make an attempt to solve the above problem with _multilines_?

The solution would look something like this and tell me if it is not much easier to read:

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

## Note about `\`

There are other combination with the `\` like `\t` to make a tabulation in the text. For example in the previous code we could introduce some tabulations like this:

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

Go test what the output would be!
