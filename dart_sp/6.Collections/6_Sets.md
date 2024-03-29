# Sets

Son colecciones al igual que las listas con las diferencias que las últimas, pueden contener valores repetidos mientras que los _set_ no. __Los `Set` son colecciones de valores únicos__ y declaramos sus versiones _literal_ con _curly-braces_ o `{ }`:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    var countries = {'Italy', 'UK', 'Russia'};
    print(cities);
    print(countries);
}
```

Si quisiéramos acceder a un elemento dentro del `Set`, no podemos utilizar el _subscript operator_ o `[index]`. En ellos, debemos utilizar el método `elementAt':

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    print(countries.elementAt(1)); // UK
}
```

## Add and remove

Podemos agregar elementos a nuestro `Set`. Al igual que las `List`, si agregamos un elemento mediante `add`, dicho elemento se agregará al final:

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    countries.add('Iceland');
    print(countries);
}
```

💀 Qué sucede sin embargo si intentamos hacer lo siguiente? Cuál será el resultado de ese `print`?

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    countries.add('Italy');
    print(countries);
}
```

Exacto! Ya que los `Set` dijimos contienen valores únicos, si agregamos un valor que ya se encuentra allí, entonces no hace nada!

Podemos también eliminar elementos utilizando `remove` y si intentamos eliminar un elemento que no se encuentra en el `Set`, este se mantiene sin producir errores:

```dart
void main() {
    var countries = {'Italy', 'UK', 'Russia'};
    countries.remove('India');
    print(countries);
}
```

## Last, first, length, and contains

Funcionan de la misma manera que en las `List` por lo que no ahondaremos en ellos.

## Union, intersection and difference

Estos sí son métodos particulares de los `Set` y pueden sernos de mucha utilidad.

El método __`union` nos permite unir `Set`, manteniendo los elementos únicos__ aun si hay repeticiones:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    var asianCountries = {'India', 'China', 'Russia'};
    print(europeanCountries.union(asianCountries)); // {Italy, UK, Russia, India, China}
}
```

El método __`intersection` nos permite encontrar qué elementos son comunes__ entre ambos `Set`:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    var asianCountries = {'India', 'China', 'Russia'};
    print(europeanCountries.intersection(asianCountries)); // {Russia}
}
```

El método __`difference` nos permite encontrar qué elementos están en el primer `Set` pero no en el segundo__:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    var asianCountries = {'India', 'China', 'Russia'};
    print(europeanCountries.difference(asianCountries)); // {'Italy', 'UK'}
}
```

Finalmente, también pueden utilizar _loops_ con ellos:

```dart
void main() {
    var europeanCountries = {'Italy', 'UK', 'Russia'};
    for(var country in europeanCountries) {
        print(country);
    }
}
```

## 💪 Sumando elementos

__Requirement__: dados dos _sets_ de `int` llamados `a` y `b`, escribir un programa que calcule y retorne otro `Set` con los elementos del primero y del segundo pero que no son comunes a ambos. Luego calcular la suma de los elementos del `Set` resultante.

```dart
void main() {
    const a = { 1, 3 };
    const b = { 3, 5 };
    // Debería imprimir { 1, 5 } y luego 6
}
```

---

__💀 Solución__:

```dart
void main() {
    const a = { 1, 3 };
    const b = { 3, 5 };
    
    var resultantSet = <int>{};
    resultantSet = a.difference(b).union(b.difference(a));
    print('Resultant set: $resultantSet');

    var sumOfElements = 0;
    for(var value in resultantSet) {
        sumOfElements += value;
    }
    print('Sum of elements: $sumOfElements');
}
```

__🧐 Importante__:

Noten cómo declaramos un `Set` _literal_: `<int>{}`. Si lo hacemos solamente con `{}` Dart va a creer que estamos declarando un `Map`, _type_ que veremos exactamente a continuación.
