# `Var`, `final` y `const` _with lists_

We can use to declare our lists `var`, `final` and `const`, letting Dart infer their type or making explicit their type like this: `<String>[...]`.

We already saw that if we declare them with `var`, we can change their values but what if we declare them with `final`? 💀

```dart
void main() {
    final cities = <String>['Cordoba', 'New York', 'Paris'];
    cities[1] = 'Buenos Aires';
    print(cities);
}
```

As you can see, we can still change its values! What we cannot do is to assign a new list to this variable. If we write the code below, we get an error like: 'The final variable cities can only be set once'.

Something similar happens if you use `const`, but now the error is of another type, since Dart can only assign to it a value at _compile time_, and in this case it says that `const` cannot be assigned a value:

```dart
void main() {
    final citiesA = <String>['Cordoba', 'New York', 'Paris'];
    citiesA = ['Buenos Aires'];
    const citiesB = <String>['Cordoba', 'New York', 'Paris'];
    citiesB = ['Buenos Aires'];
}
```

And the last question of this article: can we change a value if the list was declared as `const`? 💀 What do you think?

```dart
void main() {
    const cities = <String>['Cordoba', 'New York', 'Paris'];
    cities[1] = 'Buenos Aires';
    print(cities);
}
```

Exacto! Tenemos un error! Dart no puede chequear eso en tiempo de compilación por lo que en tiempo de ejecución es cuando detecta el error! A tener mucho cuidado con querer cambiar valores de una lista declarada como constante!
