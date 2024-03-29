# `Var`, `final` y `const` with lists

_Disclaimer_ o descargo de responsabilidad: notarán que vengo mezclando cuándo utilizo términos en inglés y cuando en español y con el paso del curso vamos utilizando más de los primeros: es totalmente adrede. La idea es que se acostumbren y que acompañen a este curso con aprendizaje de inglés ya que es el idioma por excelencia no solo en cualquier trabajo sino en cualquier código que vayan a leer!

Podemos utilizar para declarar nuestras listas `var`, `final` y `const`, dejando que Dart infiera su tipo o bien haciendo explícito su tipo así: `<String>[...]`

Ya vimos que si las declaramos con `var`, podemos cambiar sus valores pero qué pasa si las declaramos con `final` ? 💀

```dart
void main() {
    final cities = <String>['Cordoba', 'New York', 'Paris'];
    cities[1] = 'Buenos Aires';
    print(cities);
}
```

Como podrán ver, aun podemos cambiar sus valores! Lo que no podemos hacer es asignarle a dicha variable, una nueva lista. Si escribimos el código a continuación, nos arroja un error del tipo: 'The final variable cities can only be set once'.

```dart
void main() {
    final citiesA = <String>['Cordoba', 'New York', 'Paris'];
    citiesA = ['Buenos Aires'];
}
```

Sucede lo mismo si utilizan `const`, con la única diferencia de que sería más performante al momento de declararla ya que Dart puede calcular esa lista en tiempo de compilación.  El error en este caso sin embargo, dice que a las const no se les puede asignar un valor:

```dart
void main() {
    const citiesB = <String>['Cordoba', 'New York', 'Paris'];
    citiesB = ['Buenos Aires'];
}
```

Y la última pregunta de este artículo: podremos cambiar un valor si la lista fue declarada como `const`? 💀 Qué les parece?

```dart
void main() {
    const cities = <String>['Cordoba', 'New York', 'Paris'];
    cities[1] = 'Buenos Aires';
    print(cities);
}
```

Exacto! Tenemos un error! Dart no puede chequear eso en tiempo de compilación por lo que en tiempo de ejecución es cuando detecta el error! A tener mucho cuidado con querer cambiar valores de una lista declarada como constante!
