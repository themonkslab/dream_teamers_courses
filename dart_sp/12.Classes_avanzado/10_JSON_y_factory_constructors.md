# JSON y _Factory Constructors_

En el capítulo anterior vimos de qué maneras podemos utilizar este tipo de
constructores pero dejamos afuera un caso de uso extremadamente frecuente por lo
que nos vamos a tomar todo un artículo para ello! Empecemos!

## JSON

JSON (_JavaScript Object Notation_ o Notación de Objeto de Javascript) es un
formato de intercambio de datos ligero y legible. __Se utiliza para transmitir
datos estructurados en la web y se basa en una sintaxis de objetos, listas o
mapas anidados__, donde los valores pueden ser cadenas, números, booleanos,
objetos o matrices. Es un formato muy popular para el intercambio de datos en
aplicaciones web y móviles, ya que es fácil de leer y escribir para humanos y
fácil de procesar para las aplicaciones.

Vamos con un ejemplo:

```json
{
  "name": "John Doe",
  "age": 30,
  "email": "johndoe@example.com",
  "address": {
    "street": "123 Main St",
    "city": "Anytown",
    "state": "CA",
    "zip": "12345"
  },
  "phoneNumbers": [
    {
      "type": "home",
      "number": "555-555-1212"
    },
    {
      "type": "work",
      "number": "555-555-2323"
    }
  ]
}
```

En este ejemplo, el _JSON_ representa información básica de un usuario, como su
nombre, edad, dirección de correo electrónico, dirección postal y números de
teléfono. La propiedad `"address"` es un objeto _JSON_ anidado que contiene la
dirección del usuario, mientras que la propiedad `"phoneNumbers"` es una lista
de objetos _JSON_ que representan los números de teléfono del usuario.

Este objeto en Dart se representaría con un `String` y si tuviéramos ese objeto en una variable llamada `json`, podríamos acceder a
ellos utilizando la misma notación que si se tratara de un mapa, solamente
necesitando de forma previa hacer una decodificación del _JSON_ original,
utilizando `jsonDecode`.

### `jsonDecode`

Es una función en Dart que convierte una cadena _JSON_ en un objeto Dart. Toma una cadena _JSON_ como entrada y devuelve un objeto Dart que representa la estructura de datos descrita por la cadena _JSON_. La función es parte de la biblioteca `dart:convert`, que proporciona codificadores y decodificadores para una variedad de formatos de datos, incluyendo _JSON_.

```dart
String jsonString = '{"name":"John","age":30,"isMarried":false,"hobbies":["reading","travelling","swimming"],"address":{"street":"123 Main St","city":"New York","state":"NY","zip":"10001"}}';
Map<String, dynamic> json = jsonDecode(jsonString);
```

Luego, podríamos acceder a los valores utilizando la misma notación que si se tratara de un mapa, por ejemplo:

```dart
String name = json['name']; // John
int age = json['age']; // 30
bool isMarried = json['isMarried']; // false
List<String> hobbies = List<String>.from(json['hobbies']); // ["reading", "travelling", "swimming"]
String street = json['address']['street']; // 123 Main St
String city = json['address']['city']; // New York
```

### Volviendo a los _Factory Constructors_

Recordemos que en el capítulo anterior estábamos haciendo _requests_ a una _API_
que creo se trataba de una _API_ sobre películas. Cuando hacemos un pedido a
esta _API_, la respuesta o _response_ a ese _request_ vendría en un formato
_JSON_.

Supongamos que queremos hacer una solicitud y obtener información sobre la
película "El Padrino". Lo siguiente muestra cómo se verían los datos de la película "El Padrino" en formato JSON:

```json
{
  "title": "The Godfather",
  "year": 1972,
  "director": "Francis Ford Coppola",
  "rating": 9.2,
  "description": "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."
}
```

Ahora bien! Lo lógico para poder utilizar esos datos en nuestra aplicación,
sería modelar una clase que represente el objeto película. 💀 Qué les parece si
van a moldearla y escriben un test para ella? Pueden hacerlo todo sin la
necesidad de crear todo un paquete nuevo sino utilizando uno anterior, como lo
hice yo y que van a ver...

Luego de haberlo probado...

Primero ustedes! 🤣

```dart
import 'package:test/test.dart';

// void main() {
//   final simulatedResult = processRequest(returnError: true);
//   throw (simulatedResult.error!);
//   // print(simulatedResult.value is String);
// }

class Movie {
  final String title;
  final int year;
  final String director;
  final double rating;
  final String description;

  Movie({
    required this.title,
    required this.year,
    required this.director,
    required this.rating,
    required this.description,
  });
}

void main() {
  group('Given a Movie', () {
    late Movie movie;

    setUp(() {
      movie = Movie(
        title: 'The Godfather',
        year: 1972,
        director: 'Francis Ford Coppola',
        rating: 9.2,
        description:
            'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
      );
    });

    test('When accessing its title, Then it should return the correct title',
        () {
      expect(movie.title, equals('The Godfather'));
    });

    test('When accessing its year, Then it should return the correct year', () {
      expect(movie.year, equals(1972));
    });

    test(
        'When accessing its director, Then it should return the correct director',
        () {
      expect(movie.director, equals('Francis Ford Coppola'));
    });

    test('When accessing its rating, Then it should return the correct rating',
        () {
      expect(movie.rating, equals(9.2));
    });

    test(
        'When accessing its description, Then it should return the correct description',
        () {
      expect(
          movie.description,
          equals(
              'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'));
    });
  });
}
```

<!-- TODO -CONT-: Explicar fromJson y toJson con Factory -->
