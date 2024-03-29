# Lists o listas

También conocidas como _arrays_ en otros lenguajes, sirven para representar una __colección de valores__. Podemos inicializarla como un _list literal_ vacío, (`[]`), llenarla de valores e imprimirla de la siguiente manera:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    print(cities); // ['Cordoba', 'New York', 'Paris']
}
```

## Acceder a sus valores

__Cómo podemos imprimir específicamente un valor de esa lista?__ 💀 Lo vimos en el ejercicio anterior. Traten de hacer memoria! 🤣

Recordando, dijimos que __para acceder a los valores de una lista, lo tenemos que hacer con _square brackets_ o llaves cuadradas (`[ ]`), también llamado _subscript operator_ y poniendo el _index_ o posición de dicho valor dentro de la lista__. Pero vamos a explicarnos un poquito más.

__Las listas pueden tener la cantidad de valores que queramos__. Vamos a llamar a esta cantidad N. Los _indexes_ se cuentan desde el __primer valor__ y __dicho _index_ es el 0__. Para encontrar el último valor de la lista, deberíamos restar 1 al total de elementos de la lista o N. Así, para acceder al primero, deberíamos hacer: `print(cities[0]);` y para ingresar al último deberíamos hacer `print(cities[cities.length - 1])`.

💀 Qué sucede si ingresan un _index_ que no se encuentra en la lista, como -1 o 3? Pueden probarlo!

Exacto, nos arroja un `RangeError (index)` que  dice que el _index_ está fuera del rango (_out of range_).

## Cambiar sus valores

Podemos utilizar nuevamente el _subscript operator_ para asignar un nuevo valor a el índice de la lista que querramos. Por ejemplo:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    cities[2] = 'Rome';
    print(cities); // ['Cordoba', 'New York', 'Rome']
}
```

## Utilizar un loop para imprimir sus valores

Si quisiéramos imprimir cada uno de los valores de la lista en una línea nueva, podríamos utilizar el ya conocido _for loop_ para acceder a cada uno de sus elementos e imprimirlos. Necesitaríamos algo nuevo (que acabo de utilizar pero no expliqué) que sería el total de los elementos que tiene dicha lista y que se obtiene de acceder a través de la propiedad `length`.

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    for(var i = 0; i < cities.length; i++) {
        print(cities[i]);
    }
}
```

En el caso anterior utilizamos el _index_ `i` que definimos en el _loop_ para acceder a cada valor en la lista e imprimirlo. Recuerden que `i` comenzará siendo `0`, luego `1` y finalmente `2`. Sin embargo tenemos otro método _for_ aun más simple de utilizar y llamado _for in loop_:

```dart
void main() {
    var cities = ['Cordoba', 'New York', 'Paris'];
    // for(var i = 0; i < cities.length; i++) {
    //     print(cities[i]);
    // }
    for(var city in cities) {
        print(city);
    }
}
```

Este _for in loop_, nos permite declarar una variable a la que le asigna cada elemento de nuestra lista y que luego podemos utilizar para, por ejemplo, imprimirlo.

## 💪 Sumar los items de la lista

__Requirement__: imprimir la suma de todos los valores de la lista dada.

```dart
void main() {
    const list = [1,3,5,7,9];
}
```

__💀 Solución__:

```dart
void main() {
    const list = [1,3,5,7,9];
    var result = 0;
    for(var number in list) {
        result += number;
    }
    print('The result is: $result');
}
```
