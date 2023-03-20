import 'package:test/test.dart';

// void main() {
//   final simulatedResult = processRequest(returnError: true);
//   throw (simulatedResult.error!);
//   // print(simulatedResult.value is String);
// }

// class Movie {
//   final String title;
//   final int year;
//   final String director;
//   final double rating;
//   final String description;

//   Movie({
//     required this.title,
//     required this.year,
//     required this.director,
//     required this.rating,
//     required this.description,
//   });

// Aquí el _factory constructor_ Movie.fromJson recibe un Map<String, dynamic>
// al que llamaremos _json_ y luego utilizaremos este Map para construir una
// nueva instancia de Movie.
// Accedemos a cada uno de sus valores con la sintaxis json['key'] y
// asignamos cada uno de estos valores a las propiedades de la nueva
// instancia.
// Por ejemplo, el valor de la propiedad title de la nueva instancia será
// json['title'] y como sabemos que es una `String` podemos usar el operador
// `as` para convertir el valor de json['title'] a `String`.
// Lo mismo para las demás propiedades.
// factory Movie.fromJson(Map<String, Object?> json) {
//   return Movie(
//     title: json['title'] as String,
//     year: json['year'] as int,
//     director: json['director'] as String,
//     rating: json['rating'] as double,
//     description: json['description'] as String,
//   );
// }

// Aquí el método toJson de la clase Movie retorna un `Map` del tipo `<String,
// Object?>` que es la  representación en JSON de la instancia de Movie.

//   Map<String, Object?> toJson(Movie movie) {
//     return ({
//       'title': movie.title,
//       'year': movie.year,
//       'director': movie.director,
//       'rating': movie.rating,
//       'description': movie.description,
//     });
//   }
// }

abstract class Media {
  final String title;
  final int year;
  final String genre;

  Media({
    required this.title,
    required this.year,
    required this.genre,
  });

  // Aquí el _factory constructor_ Media.fromJson recibe un Map<String, dynamic>
  // al que llamaremos _json_ y luego utilizaremos este Map para construir una
  // nueva instancia de Movie o Serie.
  // Accedemos a cada uno de sus valores con la sintaxis json['key'] y
  // asignamos cada uno de estos valores a las propiedades de la nueva
  // instancia.
  // Por ejemplo, el valor de la propiedad title de la nueva instancia será
  // json['title'] y como sabemos que es una `String` podemos usar el operador
  // `as` para convertir el valor de json['title'] a `String`.
  // Lo mismo para las demás propiedades.
  factory Media.fromJson(Map<String, dynamic> json) {
    // Aquí tenemos algo particular ya que la propiedad director es una
    // propiedad de Movie y no de Serie.
    // Para saber si el JSON que recibimos es de una película o de una serie lo
    // que hacemos es verificar si el JSON contiene la propiedad director.
    if (json.containsKey('director')) {
      return Movie(
        title: json['title'] as String,
        year: json['year'] as int,
        genre: json['genre'] as String,
        director: json['director'] as String,
      );
    } else if (json.containsKey('directors')) {
      // Aquí tenemos algo particular ya que la propiedad directors es una
      // lista.
      // Para convertir la lista de `dynamic` a `String` utilizamos el método
      // map de la clase List. Este método recibe una función que recibe un tipo
      // de dato y retorna un tipo de dato.
      // 1. Convertimos `json['directors']` en una lista de `dynamic` con el
      //    operador `as`.
      // 2. Luego utilizamos el método map para convertir cada elemento de la
      //    lista de `dynamic` a `String`.
      // 3. Finalmente convertimos todo a una lista de `String`
      final directors =
          (json['directors'] as List<dynamic>).map((e) => e as String).toList();
      return Serie(
        title: json['title'] as String,
        year: json['year'] as int,
        genre: json['genre'] as String,
        directors: directors,
      );
    } else {
      // Si el JSON no contiene la propiedad director ni la propiedad directors
      // es porque el JSON no es válido.
      throw FormatException('Invalid JSON: $json');
    }
  }
}

class Movie extends Media {
  final String director;

  Movie({
    required String title,
    required int year,
    required String genre,
    required this.director,
  }) : super(
          title: title,
          year: year,
          genre: genre,
        );

  factory Movie.fromJson(Map<String, Object?> json) {
    return Movie(
      title: json['title'] as String,
      year: json['year'] as int,
      genre: json['genre'] as String,
      director: json['director'] as String,
    );
  }
}

class Serie extends Media {
  final List<String> directors;

  Serie({
    required String title,
    required int year,
    required String genre,
    required this.directors,
  }) : super(
          title: title,
          year: year,
          genre: genre,
        );

  factory Serie.fromJson(Map<String, Object?> json) {
    final directors =
        (json['directors'] as List<String?>).map((e) => e as String).toList();
    return Serie(
      title: json['title'] as String,
      year: json['year'] as int,
      genre: json['genre'] as String,
      directors: directors,
    );
  }
}

// void main() {
//   group('Given a Movie', () {
//     late Movie movie;

//     setUp(() {
//       movie = Movie(
//         title: 'The Godfather',
//         year: 1972,
//         director: 'Francis Ford Coppola',
//         rating: 9.2,
//         description:
//             'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
//       );
//     });

//     test('When accessing its title, Then it should return the correct title',
//         () {
//       expect(movie.title, equals('The Godfather'));
//     });

//     test('When accessing its year, Then it should return the correct year', () {
//       expect(movie.year, equals(1972));
//     });

//     test(
//         'When accessing its director, Then it should return the correct director',
//         () {
//       expect(movie.director, equals('Francis Ford Coppola'));
//     });

//     test('When accessing its rating, Then it should return the correct rating',
//         () {
//       expect(movie.rating, equals(9.2));
//     });

//     test(
//         'When accessing its description, Then it should return the correct description',
//         () {
//       expect(
//           movie.description,
//           equals(
//               'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'));
//     });
//   });

//   group(
//     "Given a Movie constructor",
//     () {
//       test(
//           'When calling Movie.fromJson with a JSON decoded file, Then it should return a Movie',
//           () {
//         // Esta es una JSON String
//         String jsonString =
//             '{ "title": "The Godfather", "year": 1972, "director": "Francis Ford Coppola", "rating": 9.2, "description": "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son." }';

//         // Decodificamos la JSON String y el resultado que esperamos de esta
//         // decodificación es un Map<String, Object?>, es decir, un Map con
//         // claves de tipo String y valores de tipo Object?
//         // Porqué Object? y no Object? Porque Object? es un tipo nullable
//         Map<String, Object?> json = jsonDecode(jsonString);

//         // Llamamos al constructor Movie.fromJson y le pasamos el Map
//         // decodificado que obtuvimos de jsonDecode
//         final Movie movie = Movie.fromJson(json);

//         // Verificamos que el resultado de Movie.fromJson sea una instancia de
//         // Movie y que los valores de sus propiedades sean los esperados
//         expect(movie, isA<Movie>());
//         expect(movie.title, 'The Godfather');
//         expect(movie.year, 1972);
//         expect(movie.director, 'Francis Ford Coppola');
//         expect(movie.rating, 9.2);
//         expect(movie.description,
//             'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.');
//       });

//       test(
//           'When calling Movie.toJson with a Movie instance, Then it should return a Map<String, Object?>',
//           () {
//         // Creamos una instancia de Movie
//         final Movie movie = Movie(
//           title: 'The Godfather',
//           year: 1972,
//           director: 'Francis Ford Coppola',
//           rating: 9.2,
//           description:
//               'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
//         );

//         // Llamamos al método toJson de la instancia de Movie y guardamos el resultado en una variable
//         final Map<String, Object?> jsonMap = movie.toJson(movie);

//         // Verificamos que el resultado de Movie.toJson sea una instancia de Map y que los valores sean los esperados
//         expect(jsonMap['title'], 'The Godfather');
//         expect(jsonMap['year'], 1972);
//         expect(jsonMap['director'], 'Francis Ford Coppola');
//         expect(jsonMap['rating'], 9.2);
//         expect(jsonMap['description'],
//             'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.');
//       });
//     },
//   );
// }

void main() {
  group('Given a Media', () {
    test('When fromJson() is called with a Movie, Then returns a Movie', () {
      final json = {
        'title': 'The Godfather',
        'year': 1972,
        'genre': 'Drama',
        'director': 'Francis Ford Coppola',
      };

      final media = Media.fromJson(json);

      expect(media, isA<Movie>());
    });

    test('When fromJson() is called with a Serie, returns a Serie', () {
      final json = {
        'title': 'Breaking Bad',
        'year': 2008,
        'genre': 'Drama',
        'directors': ['Vince Gilligan'],
      };

      final media = Media.fromJson(json);

      expect(media, isA<Serie>());
    });

    test(
        'When fromJson() is called with a wrong Json, throws a FormatException',
        () {
      final json = {
        'title': 'The Godfather',
        'year': 1972,
        'genre': 'Drama',
        'test': 'test',
      };

      expect(() => Media.fromJson(json), throwsFormatException);
    });
  });

  group('Given a Movie', () {
    test('When fromJson() is called, Then returns a Movie', () {
      final json = {
        'title': 'The Godfather',
        'year': 1972,
        'genre': 'Drama',
        'director': 'Francis Ford Coppola',
      };

      final movie = Movie.fromJson(json);

      expect(movie.title, 'The Godfather');
      expect(movie.year, 1972);
      expect(movie.genre, 'Drama');
      expect(movie.director, 'Francis Ford Coppola');
    });
  });

  group('Given a Serie', () {
    test('When fromJson() is called, Then returns a Serie', () {
      final json = {
        'title': 'Breaking Bad',
        'year': 2008,
        'genre': 'Drama',
        'directors': ['Vince Gilligan'],
      };

      final serie = Serie.fromJson(json);

      expect(serie.title, 'Breaking Bad');
      expect(serie.year, 2008);
      expect(serie.genre, 'Drama');
      expect(serie.directors, ['Vince Gilligan']);
    });
  });
}
