import 'package:test/test.dart';

// void main() {
//   group('Given a printSeconds with N as value', () {
//     test('When value is greater than 60, Then throws AssertionError', () {
//       expectLater(printSeconds(value: 61, returnError: false),
//           throwsA(isA<AssertionError>()));
//     });

//     test('When ends correctly, Then returns true after N seconds', () {
//       expectLater(
//           printSeconds(value: 2, returnError: false), completion(isTrue));
//     });

//     test('When something went wrong, Then throws an exception after N seconds',
//         () {
//       expectLater(printSeconds(value: 2, returnError: true), throwsException);
//     });
//   });
// }

void main() {
  group('Given printSeconds function', () {
    test('When value is greater than 60, Then throws AssertionError', () {
      expect(() => printSeconds(value: 61, returnError: false),
          throwsA(isA<AssertionError>()));
    });

    test('When returnError is true, Then throws Exception', () {
      expect(() => printSeconds(value: 30, returnError: true),
          throwsA(isA<Exception>()));
    });

    test('When all parameters are valid, Then returns true', () async {
      final result = await printSeconds(value: 5, returnError: false);
      expect(result, isTrue);
    });
  });
}

Future<bool> printSeconds({
  required int value,
  required bool returnError,
}) async {
  assert(value <= 60, 'Value must be less than 60 seconds');
  if (returnError) throw Exception('Something went wrong!');
  for (var i = 0; i < value; i++) {
    await Future.delayed(Duration(seconds: 1));
    print('⏲ Seconds: ${i + 1}');
  }
  print('Done ⚡️');
  return true;
}

// void main() async {
//   try {
//     await printSeconds(value: 10, returnError: false);
//     await printSeconds(value: 10, returnError: true);
//   } catch (e) {
//     print(e);
//   }
// }
