class FlutterButton {
  FlutterButton({
    required this.text,
    this.color = Color.lightBlue,
    this.onPressed,
  }) {
    if (text.isEmpty) {
      throw AssertionError('Text can\'t be empty');
    }
    if (onPressed != null && onPressed.runtimeType == () {}.runtimeType) {
      throw AssertionError('onPressed can\'t be an empty function');
    }
    if (color == Color.red) {
      throw RedForErrorsException('Color should be red just for errors');
    }
  }

  final String text;
  final Function? onPressed;
  final Color color;
}

class RedForErrorsException implements Exception {
  final String message;
  RedForErrorsException(this.message);
}

enum Color {
  lightBlue,
  darkBlue,
  red,
  green,
  yellow,
  orange,
  purple,
  pink,
  brown,
  grey,
  black,
  white
}

// void main() {
//   group('Given a FlutterButton', () {
//     test('When created with an empty text, Then should throw AssertionError',
//         () {
//       expect(() => FlutterButton(text: ''), throwsA(isA<AssertionError>()));
//     });

//     test('When created with text not empty, should return normally', () {
//       expect(() => FlutterButton(text: 'Hello, world!'), returnsNormally);
//     });

//     test(
//         'When created with an empty onPressed, Then should throw AssertionError',
//         () {
//       expect(() => FlutterButton(text: 'Hello, world!', onPressed: () {}),
//           throwsA(isA<AssertionError>()));
//     });

//     test(
//         'When created with a onPressed that returns nothing, Then should throw AssertionError',
//         () {
//       expect(
//           () => FlutterButton(
//               text: 'Hello, world!',
//               onPressed: () {
//                 // Do nothing
//               }),
//           throwsA(isA<AssertionError>()));
//     });

//     test(
//         'When created with a onPressed that returns something, Then should return normally',
//         () {
//       expect(
//           () => FlutterButton(
//               text: 'Hello, world!', onPressed: () => print('test')),
//           returnsNormally);
//     });
//   });
// }
void main() {
  try {
    createButton();
  } catch (e) {
    print('🧘🏻 I manage excecptions by meditation');
    print(e);
  }
  print('🚀 Now, gets here!');
}

void createButton() {
  try {
    final button = FlutterButton(text: 'Send', color: Color.red);
    // Hacer algo aquí con el super botón
  } on RedForErrorsException catch (e, stackTrace) {
    print(stackTrace);
    print('☢️ This is a RedForErrorsException');
    print(e.message);
    rethrow;
  } catch (e) {
    print(e);
  } finally {
    print('🎬 Finally');
  }
}
