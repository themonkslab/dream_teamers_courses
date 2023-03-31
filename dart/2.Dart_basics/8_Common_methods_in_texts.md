# Common methods in texts

To start, let's define a variable with the following text: `Dart course' and print it to the console:

```dart
void main() {
    String title = 'Curso de Dart';
    print(title);
}
```

So far, nothing new. However, how could we transform that string to uppercase, without doing it by changing each character?

If we stop next to the variable and add a dot, we will see in our Dartpad, a list of methods that the `String` contains: ![Methods of `String`](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/8.1_metodos_textos.png)

If we then enter the word _'to'_, we will see that the list of operations is reduced to three:

![Tres métodos con 'to'](https://raw.githubusercontent.com/themonkslab/courses/main/dart/2.Dart_b%C3%A1sico/8.2_tres_metodos_to.png)

There we just go down with the arrow to where it says _toUpperCase_ and press the 'tab' key or the 'enter' key to autocomplete. So we have an expression that converts every character in the contents of the variable `title`, to uppercase. Try running the code to see if it works!

## Methods

Looking at the expression `print(title.toUpperCase())` in detail, we know that `title`, is a variable that stores a `String`. What is `toUpperCase` then? A method!

A method is __one or more operations that can be performed on a given _variable_ or _object___. To _call it_ we use the _dot operator_ '.', and to _execute it_, the '()': __Object.method()__.

On the other hand, we can also see that `print(...)` performs an operation and is called with brackets. Although you will hear it called as a 'method', it is a _function_.

Finally, the method _toUpperCase_ can be applied to all `String`. In the previous case we applied it to a variable but it could also be done on a literal _string_: `title = 'Dart course'.toUpperCase()`. This way, the variable would already contain the uppercase text.

💀 Try now to change everything to lowercase! Just dig into the other two remaining methods offered by the _object_ `String`, when they start with _to_.

```dart
void main() {
    String title = 'Curso de Dart';
    print(title.toLowerCase());
}
```

Quite simple, isn't it?
