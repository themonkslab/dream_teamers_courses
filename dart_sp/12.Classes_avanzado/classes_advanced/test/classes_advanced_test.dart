import 'package:classes_advanced/src/classes_advanced_base.dart';
import 'package:test/test.dart';

void main() {
  group('Given an Animal class,', () {
    //Given
    late Animal animal;
    setUp(() {
      animal = Animal();
    });
    test('when sleep is called, then it should print "sleeping"', () {
      // When
      final String result = animal.sleep();
    });

    test('when eat is called, then it should print "eating"', () {
      // When
      final String result = animal.eat();
    });

    test('when breathe is called, then it should print "breathing"', () {
      // When
      final String result = animal.breathe();
    });
  });
}
