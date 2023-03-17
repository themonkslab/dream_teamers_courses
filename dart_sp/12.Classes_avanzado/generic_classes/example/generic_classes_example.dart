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
